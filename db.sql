-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 07, 2025 at 05:05 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surya`
--

-- --------------------------------------------------------

--
-- Table structure for table `as_commentmeta`
--

DROP TABLE IF EXISTS `as_commentmeta`;
CREATE TABLE IF NOT EXISTS `as_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `as_comments`
--

DROP TABLE IF EXISTS `as_comments`;
CREATE TABLE IF NOT EXISTS `as_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `as_comments`
--

INSERT INTO `as_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-07 08:09:32', '2018-09-07 08:09:32', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `as_links`
--

DROP TABLE IF EXISTS `as_links`;
CREATE TABLE IF NOT EXISTS `as_links` (
  `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `as_options`
--

DROP TABLE IF EXISTS `as_options`;
CREATE TABLE IF NOT EXISTS `as_options` (
  `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `as_options`
--

INSERT INTO `as_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/surya', 'yes'),
(2, 'home', 'http://localhost/surya', 'yes'),
(3, 'blogname', 'Welcome to Surya Group', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'anup.69ghoshal@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:107:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:15:\"notification/?$\";s:27:\"index.php?post_type=notices\";s:45:\"notification/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=notices&feed=$matches[1]\";s:40:\"notification/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=notices&feed=$matches[1]\";s:32:\"notification/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=notices&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"notification/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"notification/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"notification/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"notification/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"notification/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"notification/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"notification/(.+?)/embed/?$\";s:40:\"index.php?notices=$matches[1]&embed=true\";s:31:\"notification/(.+?)/trackback/?$\";s:34:\"index.php?notices=$matches[1]&tb=1\";s:51:\"notification/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?notices=$matches[1]&feed=$matches[2]\";s:46:\"notification/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?notices=$matches[1]&feed=$matches[2]\";s:39:\"notification/(.+?)/page/?([0-9]{1,})/?$\";s:47:\"index.php?notices=$matches[1]&paged=$matches[2]\";s:46:\"notification/(.+?)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?notices=$matches[1]&cpage=$matches[2]\";s:35:\"notification/(.+?)(?:/([0-9]+))?/?$\";s:46:\"index.php?notices=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:39:\"custom-permalinks/custom-permalinks.php\";i:3;s:57:\"custom-post-type-generator/custom-post-type-generator.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'surya', 'yes'),
(41, 'stylesheet', 'surya', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '7', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'as_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:63:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:23:\"cp_view_post_permalinks\";b:1;s:27:\"cp_view_category_permalinks\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:25:\"custom_permalinks_manager\";a:2:{s:4:\"name\";s:25:\"Custom Permalinks Manager\";s:12:\"capabilities\";a:2:{s:23:\"cp_view_post_permalinks\";b:1;s:27:\"cp_view_category_permalinks\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1537182573;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1537214973;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1537258182;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1537260883;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1536310961;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(133, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1537178272;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(270, '_site_transient_timeout_theme_roots', '1537180075', 'no'),
(271, '_site_transient_theme_roots', 'a:4:{s:5:\"surya\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(222, 'cptg_activation', '1', 'yes'),
(272, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1537178278;s:7:\"checked\";a:4:{s:5:\"surya\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(273, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1537178279;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"4.4.12\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.4\";s:39:\"custom-permalinks/custom-permalinks.php\";s:5:\"1.3.0\";s:57:\"custom-post-type-generator/custom-post-type-generator.php\";s:5:\"2.4.1\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.9\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"custom-permalinks/custom-permalinks.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/custom-permalinks\";s:4:\"slug\";s:17:\"custom-permalinks\";s:6:\"plugin\";s:39:\"custom-permalinks/custom-permalinks.php\";s:11:\"new_version\";s:5:\"1.3.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/custom-permalinks/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/custom-permalinks.1.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:62:\"https://ps.w.org/custom-permalinks/assets/icon.svg?rev=1785367\";s:3:\"svg\";s:62:\"https://ps.w.org/custom-permalinks/assets/icon.svg?rev=1785367\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/custom-permalinks/assets/banner-1544x500.png?rev=1796224\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-permalinks/assets/banner-772x250.png?rev=1796224\";}s:11:\"banners_rtl\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/custom-permalinks/assets/banner-772x250-rtl.png?rev=1796224\";}}s:57:\"custom-post-type-generator/custom-post-type-generator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/custom-post-type-generator\";s:4:\"slug\";s:26:\"custom-post-type-generator\";s:6:\"plugin\";s:57:\"custom-post-type-generator/custom-post-type-generator.php\";s:11:\"new_version\";s:5:\"2.4.1\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/custom-post-type-generator/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/custom-post-type-generator.2.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/custom-post-type-generator/assets/icon-256x256.png?rev=1191738\";s:2:\"1x\";s:79:\"https://ps.w.org/custom-post-type-generator/assets/icon-128x128.png?rev=1191738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/custom-post-type-generator/assets/banner-1544x500.png?rev=1209667\";s:2:\"1x\";s:81:\"https://ps.w.org/custom-post-type-generator/assets/banner-772x250.png?rev=1191738\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(224, 'cptg_cpt_5b988953773e9', 'a:18:{s:9:\"post_type\";s:7:\"notices\";s:6:\"labels\";a:14:{s:4:\"name\";s:7:\"Notices\";s:13:\"singular_name\";s:0:\"\";s:9:\"menu_name\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";}s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:6:\"editor\";}s:11:\"has_archive\";s:1:\"1\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:1:\"1\";s:19:\"exclude_from_search\";s:1:\"1\";s:18:\"publicly_queryable\";s:1:\"1\";s:7:\"show_ui\";s:1:\"1\";s:17:\"show_in_nav_menus\";s:1:\"1\";s:12:\"show_in_menu\";a:2:{s:12:\"show_in_menu\";s:1:\"1\";s:6:\"string\";s:0:\"\";}s:17:\"show_in_admin_bar\";s:1:\"1\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:12:\"hierarchical\";s:1:\"1\";s:7:\"rewrite\";a:5:{s:7:\"rewrite\";s:1:\"1\";s:4:\"slug\";s:12:\"notification\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"1\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";a:2:{s:9:\"query_var\";s:1:\"1\";s:6:\"string\";s:0:\"\";}s:10:\"can_export\";s:1:\"1\";}', 'yes'),
(216, 'recently_activated', 'a:0:{}', 'yes'),
(217, 'acf_version', '4.4.12', 'yes'),
(220, 'custom_permalinks_plugin_version', '1.3.0', 'yes'),
(233, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.4\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1536724835;s:7:\"version\";s:5:\"5.0.4\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(140, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"anup.69ghoshal@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1536307796;}', 'no'),
(144, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(148, 'current_theme', 'surya', 'yes'),
(149, 'theme_mods_surya', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(165, '_site_transient_timeout_browser_f1cb14423a64693644b45481b295ac87', '1537246465', 'no'),
(166, '_site_transient_browser_f1cb14423a64693644b45481b295ac87', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"50.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:1;s:8:\"insecure\";b:1;s:6:\"mobile\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `as_postmeta`
--

DROP TABLE IF EXISTS `as_postmeta`;
CREATE TABLE IF NOT EXISTS `as_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `as_postmeta`
--

INSERT INTO `as_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1536310451'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1536310455'),
(8, 2, '_wp_desired_post_slug', 'sample-page'),
(9, 7, '_edit_last', '1'),
(10, 7, '_edit_lock', '1536643396:1'),
(11, 9, '_menu_item_type', 'post_type'),
(12, 9, '_menu_item_menu_item_parent', '0'),
(13, 9, '_menu_item_object_id', '7'),
(14, 9, '_menu_item_object', 'page'),
(15, 9, '_menu_item_target', ''),
(16, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(17, 9, '_menu_item_xfn', ''),
(18, 9, '_menu_item_url', ''),
(20, 10, '_edit_last', '1'),
(21, 10, '_edit_lock', '1536642880:1'),
(22, 12, '_edit_last', '1'),
(23, 12, '_edit_lock', '1536653143:1'),
(24, 14, '_edit_last', '1'),
(25, 14, '_edit_lock', '1536653202:1'),
(26, 16, '_edit_last', '1'),
(27, 16, '_edit_lock', '1536680982:1'),
(28, 18, '_menu_item_type', 'post_type'),
(29, 18, '_menu_item_menu_item_parent', '21'),
(30, 18, '_menu_item_object_id', '16'),
(31, 18, '_menu_item_object', 'page'),
(32, 18, '_menu_item_target', ''),
(33, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(34, 18, '_menu_item_xfn', ''),
(35, 18, '_menu_item_url', ''),
(64, 22, '_edit_last', '1'),
(37, 19, '_menu_item_type', 'post_type'),
(38, 19, '_menu_item_menu_item_parent', '21'),
(39, 19, '_menu_item_object_id', '14'),
(40, 19, '_menu_item_object', 'page'),
(41, 19, '_menu_item_target', ''),
(42, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 19, '_menu_item_xfn', ''),
(44, 19, '_menu_item_url', ''),
(65, 22, '_edit_lock', '1536310476:1'),
(46, 20, '_menu_item_type', 'post_type'),
(47, 20, '_menu_item_menu_item_parent', '21'),
(48, 20, '_menu_item_object_id', '12'),
(49, 20, '_menu_item_object', 'page'),
(50, 20, '_menu_item_target', ''),
(51, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 20, '_menu_item_xfn', ''),
(53, 20, '_menu_item_url', ''),
(66, 24, '_edit_last', '1'),
(55, 21, '_menu_item_type', 'post_type'),
(56, 21, '_menu_item_menu_item_parent', '0'),
(57, 21, '_menu_item_object_id', '10'),
(58, 21, '_menu_item_object', 'page'),
(59, 21, '_menu_item_target', ''),
(60, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 21, '_menu_item_xfn', ''),
(62, 21, '_menu_item_url', ''),
(67, 24, '_edit_lock', '1536647903:1'),
(68, 26, '_edit_last', '1'),
(69, 26, '_edit_lock', '1536652912:1'),
(70, 28, '_edit_last', '1'),
(71, 28, '_edit_lock', '1536653079:1'),
(72, 30, '_menu_item_type', 'post_type'),
(73, 30, '_menu_item_menu_item_parent', '33'),
(74, 30, '_menu_item_object_id', '28'),
(75, 30, '_menu_item_object', 'page'),
(76, 30, '_menu_item_target', ''),
(77, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 30, '_menu_item_xfn', ''),
(79, 30, '_menu_item_url', ''),
(108, 34, '_edit_last', '1'),
(81, 31, '_menu_item_type', 'post_type'),
(82, 31, '_menu_item_menu_item_parent', '33'),
(83, 31, '_menu_item_object_id', '26'),
(84, 31, '_menu_item_object', 'page'),
(85, 31, '_menu_item_target', ''),
(86, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 31, '_menu_item_xfn', ''),
(88, 31, '_menu_item_url', ''),
(109, 34, '_edit_lock', '1536646823:1'),
(90, 32, '_menu_item_type', 'post_type'),
(91, 32, '_menu_item_menu_item_parent', '33'),
(92, 32, '_menu_item_object_id', '24'),
(93, 32, '_menu_item_object', 'page'),
(94, 32, '_menu_item_target', ''),
(95, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 32, '_menu_item_xfn', ''),
(97, 32, '_menu_item_url', ''),
(110, 36, '_edit_last', '1'),
(99, 33, '_menu_item_type', 'post_type'),
(100, 33, '_menu_item_menu_item_parent', '0'),
(101, 33, '_menu_item_object_id', '22'),
(102, 33, '_menu_item_object', 'page'),
(103, 33, '_menu_item_target', ''),
(104, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 33, '_menu_item_xfn', ''),
(106, 33, '_menu_item_url', ''),
(111, 36, '_edit_lock', '1536646920:1'),
(112, 38, '_edit_last', '1'),
(113, 38, '_edit_lock', '1536642690:1'),
(114, 40, '_edit_last', '1'),
(115, 40, '_edit_lock', '1536647800:1'),
(116, 42, '_menu_item_type', 'post_type'),
(117, 42, '_menu_item_menu_item_parent', '0'),
(118, 42, '_menu_item_object_id', '40'),
(119, 42, '_menu_item_object', 'page'),
(120, 42, '_menu_item_target', ''),
(121, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 42, '_menu_item_xfn', ''),
(123, 42, '_menu_item_url', ''),
(152, 38, '_wp_page_template', 'contact.php'),
(125, 43, '_menu_item_type', 'post_type'),
(126, 43, '_menu_item_menu_item_parent', '0'),
(127, 43, '_menu_item_object_id', '38'),
(128, 43, '_menu_item_object', 'page'),
(129, 43, '_menu_item_target', ''),
(130, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 43, '_menu_item_xfn', ''),
(132, 43, '_menu_item_url', ''),
(153, 34, '_wp_page_template', 'gallery.php'),
(134, 44, '_menu_item_type', 'post_type'),
(135, 44, '_menu_item_menu_item_parent', '0'),
(136, 44, '_menu_item_object_id', '36'),
(137, 44, '_menu_item_object', 'page'),
(138, 44, '_menu_item_target', ''),
(139, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 44, '_menu_item_xfn', ''),
(141, 44, '_menu_item_url', ''),
(154, 36, '_wp_page_template', 'about-us.php'),
(143, 45, '_menu_item_type', 'post_type'),
(144, 45, '_menu_item_menu_item_parent', '0'),
(145, 45, '_menu_item_object_id', '34'),
(146, 45, '_menu_item_object', 'page'),
(147, 45, '_menu_item_target', ''),
(148, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 45, '_menu_item_xfn', ''),
(150, 45, '_menu_item_url', ''),
(155, 40, '_wp_page_template', 'apply-now.php'),
(156, 24, '_wp_page_template', 'results.php'),
(157, 26, '_wp_page_template', 'training-and-placements.php'),
(158, 28, '_wp_page_template', 'career-opportunities.php'),
(159, 12, '_wp_page_template', 'hotel-management.php'),
(160, 14, '_wp_page_template', 'hospitality-management.php'),
(161, 16, '_wp_page_template', 'certificate-courses.php'),
(162, 46, '_edit_last', '1'),
(163, 46, 'field_5b9889752a8eb', 'a:11:{s:3:\"key\";s:19:\"field_5b9889752a8eb\";s:5:\"label\";s:4:\"Date\";s:4:\"name\";s:11:\"notice_date\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:11:\"date_format\";s:8:\"dd-mm-yy\";s:14:\"display_format\";s:8:\"dd-mm-yy\";s:9:\"first_day\";s:1:\"1\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(175, 46, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"notices\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(165, 46, 'position', 'normal'),
(166, 46, 'layout', 'no_box'),
(167, 46, 'hide_on_screen', 'a:12:{i:0;s:11:\"the_content\";i:1;s:7:\"excerpt\";i:2;s:10:\"discussion\";i:3;s:8:\"comments\";i:4;s:9:\"revisions\";i:5;s:4:\"slug\";i:6;s:6:\"author\";i:7;s:6:\"format\";i:8;s:14:\"featured_image\";i:9;s:10:\"categories\";i:10;s:4:\"tags\";i:11;s:15:\"send-trackbacks\";}'),
(168, 46, '_edit_lock', '1536723444:1'),
(170, 46, 'field_5b9889c2e56bd', 'a:13:{s:3:\"key\";s:19:\"field_5b9889c2e56bd\";s:5:\"label\";s:11:\"Description\";s:4:\"name\";s:18:\"notice_description\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:3:\"500\";s:4:\"rows\";s:2:\"20\";s:10:\"formatting\";s:4:\"html\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(173, 46, 'field_5b988a4848d8b', 'a:10:{s:3:\"key\";s:19:\"field_5b988a4848d8b\";s:5:\"label\";s:10:\"Attachment\";s:4:\"name\";s:17:\"notice_attachment\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:6:\"object\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(176, 47, '_edit_last', '1'),
(177, 47, '_edit_lock', '1536723502:1'),
(178, 47, 'notice_date', '12-09-2018'),
(179, 47, '_notice_date', 'field_5b9889752a8eb'),
(180, 47, 'notice_description', 'M.A./M.Com. Part-II Examination 2016 Admit Card will be download on and from 11AM, 24th August 2016'),
(181, 47, '_notice_description', 'field_5b9889c2e56bd'),
(182, 47, 'notice_attachment', ''),
(183, 47, '_notice_attachment', 'field_5b988a4848d8b'),
(184, 48, '_edit_last', '1'),
(185, 48, 'notice_date', '13-09-2018'),
(186, 48, '_notice_date', 'field_5b9889752a8eb'),
(187, 48, 'notice_description', 'Online admission for P.G. /B.Ed. Part-I Admission for Session 2016-2018 will start from 11AM, 22th August 2016.'),
(188, 48, '_notice_description', 'field_5b9889c2e56bd'),
(189, 48, 'notice_attachment', ''),
(190, 48, '_notice_attachment', 'field_5b988a4848d8b'),
(191, 48, '_edit_lock', '1536723620:1'),
(192, 49, '_edit_last', '1'),
(193, 49, '_wp_page_template', 'archive-notices.php'),
(194, 49, '_edit_lock', '1536724132:1'),
(195, 53, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(196, 53, '_mail', 'a:8:{s:7:\"subject\";s:39:\"Welcome to Surya Group \"[your-subject]\"\";s:6:\"sender\";s:38:\"[your-name] <anup.69ghoshal@gmail.com>\";s:4:\"body\";s:183:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Welcome to Surya Group (http://localhost/surya)\";s:9:\"recipient\";s:24:\"anup.69ghoshal@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(197, 53, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:39:\"Welcome to Surya Group \"[your-subject]\"\";s:6:\"sender\";s:49:\"Welcome to Surya Group <anup.69ghoshal@gmail.com>\";s:4:\"body\";s:125:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Welcome to Surya Group (http://localhost/surya)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:34:\"Reply-To: anup.69ghoshal@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(198, 53, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(199, 53, '_additional_settings', NULL),
(200, 53, '_locale', 'en_US'),
(201, 54, '_edit_last', '1'),
(202, 54, '_wp_page_template', 'terms-of-use.php'),
(203, 54, '_edit_lock', '1536725845:1'),
(204, 56, '_edit_last', '1'),
(205, 56, '_wp_page_template', 'privacy-policy.php'),
(206, 56, '_edit_lock', '1536743338:1');

-- --------------------------------------------------------

--
-- Table structure for table `as_posts`
--

DROP TABLE IF EXISTS `as_posts`;
CREATE TABLE IF NOT EXISTS `as_posts` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `as_posts`
--

INSERT INTO `as_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-07 08:09:32', '2018-09-07 08:09:32', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-09-07 08:09:32', '2018-09-07 08:09:32', '', 0, 'http://localhost/surya/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-07 08:09:32', '2018-09-07 08:09:32', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/surya/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-09-07 08:54:15', '2018-09-07 08:54:15', '', 0, 'http://localhost/surya/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-07 08:09:32', '2018-09-07 08:09:32', '<h2>Who we are</h2><p>Our website address is: http://localhost/surya.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-09-07 08:54:11', '2018-09-07 08:54:11', '', 0, 'http://localhost/surya/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-09-07 08:54:11', '2018-09-07 08:54:11', '<h2>Who we are</h2><p>Our website address is: http://localhost/surya.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-09-07 08:54:11', '2018-09-07 08:54:11', '', 3, 'http://localhost/surya/2018/09/07/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-09-07 08:54:15', '2018-09-07 08:54:15', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/surya/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-07 08:54:15', '2018-09-07 08:54:15', '', 2, 'http://localhost/surya/2018/09/07/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-09-07 08:54:50', '2018-09-07 08:54:50', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-07 08:54:50', '2018-09-07 08:54:50', '', 0, 'http://localhost/surya/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-09-07 08:54:50', '2018-09-07 08:54:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-09-07 08:54:50', '2018-09-07 08:54:50', '', 7, 'http://localhost/surya/2018/09/07/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-09-07 08:55:04', '2018-09-07 08:55:04', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2018-09-07 08:58:58', '2018-09-07 08:58:58', '', 0, 'http://localhost/surya/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2018-09-07 08:55:27', '2018-09-07 08:55:27', '', 'Our Courses', '', 'publish', 'closed', 'closed', '', 'our-courses', '', '', '2018-09-07 08:55:28', '2018-09-07 08:55:28', '', 0, 'http://localhost/surya/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-09-07 08:55:28', '2018-09-07 08:55:28', '', 'Our Courses', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-09-07 08:55:28', '2018-09-07 08:55:28', '', 10, 'http://localhost/surya/2018/09/07/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-09-07 08:55:39', '2018-09-07 08:55:39', '', 'Hotel Management', '', 'publish', 'closed', 'closed', '', 'hotel-management', '', '', '2018-09-11 08:07:23', '2018-09-11 08:07:23', '', 0, 'http://localhost/surya/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-09-07 08:55:39', '2018-09-07 08:55:39', '', 'Hotel Management', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-09-07 08:55:39', '2018-09-07 08:55:39', '', 12, 'http://localhost/surya/2018/09/07/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-09-07 08:55:52', '2018-09-07 08:55:52', '', 'Hospitality Management', '', 'publish', 'closed', 'closed', '', 'hospitality-management', '', '', '2018-09-11 08:08:19', '2018-09-11 08:08:19', '', 0, 'http://localhost/surya/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-09-07 08:55:52', '2018-09-07 08:55:52', '', 'Hospitality Management', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-09-07 08:55:52', '2018-09-07 08:55:52', '', 14, 'http://localhost/surya/2018/09/07/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-09-07 08:56:07', '2018-09-07 08:56:07', '', 'Certificate  Courses', '', 'publish', 'closed', 'closed', '', 'certificate-courses', '', '', '2018-09-11 08:09:16', '2018-09-11 08:09:16', '', 0, 'http://localhost/surya/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-09-07 08:56:07', '2018-09-07 08:56:07', '', 'Certificate  Courses', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-09-07 08:56:07', '2018-09-07 08:56:07', '', 16, 'http://localhost/surya/2018/09/07/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-09-07 08:56:35', '2018-09-07 08:56:35', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2018-09-07 08:58:59', '2018-09-07 08:58:59', '', 0, 'http://localhost/surya/?p=18', 5, 'nav_menu_item', '', 0),
(19, 1, '2018-09-07 08:56:35', '2018-09-07 08:56:35', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-09-07 08:58:58', '2018-09-07 08:58:58', '', 0, 'http://localhost/surya/?p=19', 4, 'nav_menu_item', '', 0),
(20, 1, '2018-09-07 08:56:35', '2018-09-07 08:56:35', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-09-07 08:58:58', '2018-09-07 08:58:58', '', 0, 'http://localhost/surya/?p=20', 3, 'nav_menu_item', '', 0),
(21, 1, '2018-09-07 08:56:35', '2018-09-07 08:56:35', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-09-07 08:58:58', '2018-09-07 08:58:58', '', 0, 'http://localhost/surya/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2018-09-07 08:56:51', '2018-09-07 08:56:51', '', 'Students', '', 'publish', 'closed', 'closed', '', 'students', '', '', '2018-09-07 08:56:51', '2018-09-07 08:56:51', '', 0, 'http://localhost/surya/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-09-07 08:56:51', '2018-09-07 08:56:51', '', 'Students', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-09-07 08:56:51', '2018-09-07 08:56:51', '', 22, 'http://localhost/surya/2018/09/07/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-09-07 08:57:03', '2018-09-07 08:57:03', '', 'Results', '', 'publish', 'closed', 'closed', '', 'results', '', '', '2018-09-11 06:39:14', '2018-09-11 06:39:14', '', 0, 'http://localhost/surya/?page_id=24', 0, 'page', '', 0),
(25, 1, '2018-09-07 08:57:03', '2018-09-07 08:57:03', '', 'Results', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-09-07 08:57:03', '2018-09-07 08:57:03', '', 24, 'http://localhost/surya/2018/09/07/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-09-07 08:57:14', '2018-09-07 08:57:14', '', 'Training and Placements', '', 'publish', 'closed', 'closed', '', 'training-and-placements', '', '', '2018-09-11 06:41:01', '2018-09-11 06:41:01', '', 0, 'http://localhost/surya/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-09-07 08:57:14', '2018-09-07 08:57:14', '', 'Training and Placements', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-07 08:57:14', '2018-09-07 08:57:14', '', 26, 'http://localhost/surya/2018/09/07/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-09-07 08:57:25', '2018-09-07 08:57:25', '', 'Career Opportunities', '', 'publish', 'closed', 'closed', '', 'career-opportunities', '', '', '2018-09-11 08:05:54', '2018-09-11 08:05:54', '', 0, 'http://localhost/surya/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-09-07 08:57:25', '2018-09-07 08:57:25', '', 'Career Opportunities', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-09-07 08:57:25', '2018-09-07 08:57:25', '', 28, 'http://localhost/surya/2018/09/07/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-09-07 08:57:48', '2018-09-07 08:57:48', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-09-07 08:58:59', '2018-09-07 08:58:59', '', 0, 'http://localhost/surya/?p=30', 9, 'nav_menu_item', '', 0),
(31, 1, '2018-09-07 08:57:48', '2018-09-07 08:57:48', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-09-07 08:58:59', '2018-09-07 08:58:59', '', 0, 'http://localhost/surya/?p=31', 8, 'nav_menu_item', '', 0),
(32, 1, '2018-09-07 08:57:48', '2018-09-07 08:57:48', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-09-07 08:58:59', '2018-09-07 08:58:59', '', 0, 'http://localhost/surya/?p=32', 7, 'nav_menu_item', '', 0),
(33, 1, '2018-09-07 08:57:48', '2018-09-07 08:57:48', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2018-09-07 08:58:59', '2018-09-07 08:58:59', '', 0, 'http://localhost/surya/?p=33', 6, 'nav_menu_item', '', 0),
(34, 1, '2018-09-07 08:58:03', '2018-09-07 08:58:03', '', 'Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2018-09-11 06:21:04', '2018-09-11 06:21:04', '', 0, 'http://localhost/surya/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-09-07 08:58:03', '2018-09-07 08:58:03', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-09-07 08:58:03', '2018-09-07 08:58:03', '', 34, 'http://localhost/surya/2018/09/07/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-09-07 08:58:13', '2018-09-07 08:58:13', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-09-11 06:22:58', '2018-09-11 06:22:58', '', 0, 'http://localhost/surya/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-09-07 08:58:13', '2018-09-07 08:58:13', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-09-07 08:58:13', '2018-09-07 08:58:13', '', 36, 'http://localhost/surya/2018/09/07/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-09-07 08:58:24', '2018-09-07 08:58:24', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-09-11 04:54:46', '2018-09-11 04:54:46', '', 0, 'http://localhost/surya/?page_id=38', 0, 'page', '', 0),
(39, 1, '2018-09-07 08:58:24', '2018-09-07 08:58:24', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-09-07 08:58:24', '2018-09-07 08:58:24', '', 38, 'http://localhost/surya/2018/09/07/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-09-07 08:58:34', '2018-09-07 08:58:34', '', 'Apply Now', '', 'publish', 'closed', 'closed', '', 'apply-now', '', '', '2018-09-11 06:24:32', '2018-09-11 06:24:32', '', 0, 'http://localhost/surya/?page_id=40', 0, 'page', '', 0),
(41, 1, '2018-09-07 08:58:34', '2018-09-07 08:58:34', '', 'Apply Now', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2018-09-07 08:58:34', '2018-09-07 08:58:34', '', 40, 'http://localhost/surya/2018/09/07/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-09-07 08:58:59', '2018-09-07 08:58:59', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2018-09-07 08:58:59', '2018-09-07 08:58:59', '', 0, 'http://localhost/surya/?p=42', 13, 'nav_menu_item', '', 0),
(43, 1, '2018-09-07 08:58:59', '2018-09-07 08:58:59', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-09-07 08:58:59', '2018-09-07 08:58:59', '', 0, 'http://localhost/surya/?p=43', 12, 'nav_menu_item', '', 0),
(44, 1, '2018-09-07 08:58:59', '2018-09-07 08:58:59', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2018-09-07 08:58:59', '2018-09-07 08:58:59', '', 0, 'http://localhost/surya/?p=44', 11, 'nav_menu_item', '', 0),
(45, 1, '2018-09-07 08:58:59', '2018-09-07 08:58:59', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-09-07 08:58:59', '2018-09-07 08:58:59', '', 0, 'http://localhost/surya/?p=45', 10, 'nav_menu_item', '', 0),
(46, 1, '2018-09-12 03:36:09', '2018-09-12 03:36:09', '', 'Notices', '', 'publish', 'closed', 'closed', '', 'acf_notices', '', '', '2018-09-12 03:39:44', '2018-09-12 03:39:44', '', 0, 'http://localhost/surya/?post_type=acf&#038;p=46', 0, 'acf', '', 0),
(47, 1, '2018-09-12 03:40:33', '2018-09-12 03:40:33', '', 'M.A./M.Com. Part-II Examination 2016 Admit Card', '', 'publish', 'closed', 'closed', '', 'm-a-m-com-part-ii-examination-2016-admit-card', '', '', '2018-09-12 03:40:33', '2018-09-12 03:40:33', '', 0, 'http://localhost/surya/?post_type=notices&#038;p=47', 0, 'notices', '', 0),
(48, 1, '2018-09-12 03:41:02', '2018-09-12 03:41:02', '', 'P.G. /B.Ed. Part-I Admission for Session 2016-2018', '', 'publish', 'closed', 'closed', '', 'p-g-b-ed-part-i-admission-for-session-2016-2018', '', '', '2018-09-12 03:41:02', '2018-09-12 03:41:02', '', 0, 'http://localhost/surya/?post_type=notices&#038;p=48', 0, 'notices', '', 0),
(49, 1, '2018-09-12 03:42:58', '2018-09-12 03:42:58', '', 'Notices', '', 'publish', 'closed', 'closed', '', 'notices', '', '', '2018-09-12 03:42:58', '2018-09-12 03:42:58', '', 0, 'http://localhost/surya/?page_id=49', 0, 'page', '', 0),
(50, 1, '2018-09-12 03:42:58', '2018-09-12 03:42:58', '', 'Notices', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-09-12 03:42:58', '2018-09-12 03:42:58', '', 49, 'http://localhost/surya/2018/09/12/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-09-12 03:55:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 03:55:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?post_type=notices&p=51', 0, 'notices', '', 0),
(52, 1, '2018-09-12 03:55:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-12 03:55:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?post_type=notices&p=52', 0, 'notices', '', 0),
(53, 1, '2018-09-12 04:00:35', '2018-09-12 04:00:35', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nWelcome to Surya Group \"[your-subject]\"\n[your-name] <anup.69ghoshal@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Welcome to Surya Group (http://localhost/surya)\nanup.69ghoshal@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nWelcome to Surya Group \"[your-subject]\"\nWelcome to Surya Group <anup.69ghoshal@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Welcome to Surya Group (http://localhost/surya)\n[your-email]\nReply-To: anup.69ghoshal@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-09-12 04:00:35', '2018-09-12 04:00:35', '', 0, 'http://localhost/surya/?post_type=wpcf7_contact_form&p=53', 0, 'wpcf7_contact_form', '', 0),
(54, 1, '2018-09-12 04:16:48', '2018-09-12 04:16:48', '', 'Terms of Use', '', 'publish', 'closed', 'closed', '', 'terms-of-use', '', '', '2018-09-12 04:18:36', '2018-09-12 04:18:36', '', 0, 'http://localhost/surya/?page_id=54', 0, 'page', '', 0),
(55, 1, '2018-09-12 04:16:48', '2018-09-12 04:16:48', '', 'Terms of Use', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-09-12 04:16:48', '2018-09-12 04:16:48', '', 54, 'http://localhost/surya/2018/09/12/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-09-12 04:19:56', '2018-09-12 04:19:56', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2018-09-12 04:20:56', '2018-09-12 04:20:56', '', 0, 'http://localhost/surya/?page_id=56', 0, 'page', '', 0),
(57, 1, '2018-09-12 04:19:56', '2018-09-12 04:19:56', '', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-09-12 04:19:56', '2018-09-12 04:19:56', '', 56, 'http://localhost/surya/2018/09/12/56-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `as_termmeta`
--

DROP TABLE IF EXISTS `as_termmeta`;
CREATE TABLE IF NOT EXISTS `as_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `as_terms`
--

DROP TABLE IF EXISTS `as_terms`;
CREATE TABLE IF NOT EXISTS `as_terms` (
  `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `as_terms`
--

INSERT INTO `as_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'primary', 'primary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `as_term_relationships`
--

DROP TABLE IF EXISTS `as_term_relationships`;
CREATE TABLE IF NOT EXISTS `as_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `as_term_relationships`
--

INSERT INTO `as_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(21, 2, 0),
(20, 2, 0),
(19, 2, 0),
(18, 2, 0),
(33, 2, 0),
(32, 2, 0),
(31, 2, 0),
(30, 2, 0),
(45, 2, 0),
(44, 2, 0),
(43, 2, 0),
(42, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `as_term_taxonomy`
--

DROP TABLE IF EXISTS `as_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `as_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `as_term_taxonomy`
--

INSERT INTO `as_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `as_usermeta`
--

DROP TABLE IF EXISTS `as_usermeta`;
CREATE TABLE IF NOT EXISTS `as_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `as_usermeta`
--

INSERT INTO `as_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'as_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'as_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(21, 1, 'session_tokens', 'a:1:{s:64:\"92a50a9cabd8627b05191fe5bee8487f4923b7c9b5c76a63543aa19d543e12e7\";a:4:{s:10:\"expiration\";i:1537851263;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:66:\"Mozilla/5.0 (Windows NT 10.0; rv:50.0) Gecko/20100101 Firefox/50.0\";s:5:\"login\";i:1536641663;}}'),
(17, 1, 'as_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `as_users`
--

DROP TABLE IF EXISTS `as_users`;
CREATE TABLE IF NOT EXISTS `as_users` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `as_users`
--

INSERT INTO `as_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B4GAIaJoiTvEnokfXmx1nxZrYx/sne1', 'admin', 'anup.69ghoshal@gmail.com', '', '2018-09-07 08:09:32', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-07-04 09:24:43', '2025-07-04 09:24:43', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_e_events`
--

DROP TABLE IF EXISTS `wp_e_events`;
CREATE TABLE IF NOT EXISTS `wp_e_events` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_data` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at_index` (`created_at`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_e_events`
--

INSERT INTO `wp_e_events` (`id`, `event_data`, `created_at`) VALUES
(1, '{\"event\":\"modal load\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"account\\\",\\\"user_state\\\":\\\"anon\\\"}\",\"ts\":\"2025-07-05T12:46:49.144-06:30\"}', '2025-07-06 00:46:49'),
(2, '{\"event\":\"skip\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"account\\\"}\",\"ts\":\"2025-07-05T12:46:56.965-06:30\"}', '2025-07-05 12:46:57'),
(3, '{\"event\":\"modal load\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"hello\\\",\\\"user_state\\\":\\\"anon\\\"}\",\"ts\":\"2025-07-05T12:46:56.988-06:30\"}', '2025-07-05 12:46:57'),
(4, '{\"event\":\"skip\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"hello\\\"}\",\"ts\":\"2025-07-05T12:46:58.316-06:30\"}', '2025-07-06 00:46:58'),
(5, '{\"event\":\"modal load\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"chooseFeatures\\\",\\\"user_state\\\":\\\"anon\\\"}\",\"ts\":\"2025-07-05T12:46:58.337-06:30\"}', '2025-07-06 00:46:58'),
(6, '{\"event\":\"skip\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"chooseFeatures\\\"}\",\"ts\":\"2025-07-05T12:47:06.348-06:30\"}', '2025-07-06 00:47:06'),
(7, '{\"event\":\"modal load\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"goodToGo\\\",\\\"user_state\\\":\\\"anon\\\"}\",\"ts\":\"2025-07-05T12:47:06.375-06:30\"}', '2025-07-06 00:47:06'),
(8, '{\"event\":\"skip\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"goodToGo\\\"}\",\"ts\":\"2025-07-05T12:47:07.942-06:30\"}', '2025-07-05 12:47:08'),
(9, '{\"event\":\"skip\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"goodToGo\\\"}\",\"ts\":\"2025-07-05T12:47:10.141-06:30\"}', '2025-07-06 00:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=429 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1751865883;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1751880283;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1751880299;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1751880307;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1751883883;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1751885683;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1751887483;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1752226437;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1752312283;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1754337204;a:1:{s:29:\"otter_montly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/surya', 'on'),
(3, 'home', 'http://localhost/surya', 'on'),
(4, 'blogname', 'surya', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'anup.69ghoshal@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:0:{}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'surya', 'on'),
(42, 'stylesheet', 'surya', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:1:{s:23:\"elementor/elementor.php\";a:2:{i:0;s:21:\"Elementor\\Maintenance\";i:1;s:9:\"uninstall\";}}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1767173083', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '58975', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.7.1\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}', 'on'),
(181, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1751861779;s:7:\"checked\";a:1:{s:5:\"surya\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(427, '_site_transient_timeout_wp_theme_files_patterns-286c4e08b71f29d972f9044e32cf0ad0', '1751865529', 'off'),
(428, '_site_transient_wp_theme_files_patterns-286c4e08b71f29d972f9044e32cf0ad0', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(126, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1751621455;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(125, 'recovery_keys', 'a:1:{s:22:\"2Wso2WIggRoGQx6bd6wsMN\";a:2:{s:10:\"hashed_key\";s:49:\"$generic$BFWZDBgEbFNOcJoMpIGNsNHtvpAAZw3UKaa3qO9v\";s:10:\"created_at\";i:1751722850;}}', 'off'),
(127, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(180, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1751861771;s:15:\"version_checked\";s:5:\"6.8.1\";s:12:\"translations\";a:0:{}}', 'off'),
(284, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1751861777;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'off'),
(207, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(208, 'recently_activated', 'a:4:{s:53:\"supreme-modules-for-divi/supreme-modules-for-divi.php\";i:1751702118;s:29:\"otter-blocks/otter-blocks.php\";i:1751702065;s:57:\"addons-for-visual-composer/addons-for-visual-composer.php\";i:1751701836;s:23:\"elementor/elementor.php\";i:1751701499;}', 'off'),
(133, '_site_transient_timeout_browser_7ddeda88d0c599cc494da0dece6554d5', '1752225905', 'off'),
(134, '_site_transient_browser_7ddeda88d0c599cc494da0dece6554d5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"138.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(135, '_site_transient_timeout_php_check_02188af51d4a5a03791426b00985b4f3', '1752225906', 'off'),
(136, '_site_transient_php_check_02188af51d4a5a03791426b00985b4f3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(153, 'finished_updating_comment_type', '1', 'auto'),
(138, 'can_compress_scripts', '1', 'on'),
(424, '_site_transient_timeout_theme_roots', '1751863577', 'off'),
(425, '_site_transient_theme_roots', 'a:1:{s:5:\"surya\";s:7:\"/themes\";}', 'off'),
(154, 'current_theme', 'surya', 'auto'),
(155, 'theme_mods_surya', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main-menu\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(156, 'theme_switched', '', 'auto'),
(163, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(311, 'recovery_mode_email_last_sent', '1751722849', 'auto'),
(183, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"anup.69ghoshal@gmail.com\";s:7:\"version\";s:5:\"6.8.1\";s:9:\"timestamp\";i:1751624837;}', 'off'),
(287, 'dsm_general', '', 'auto'),
(288, 'dsm_theme_builder', '', 'auto'),
(289, 'dsm_settings_social_media', '', 'auto'),
(290, 'dsm_settings_misc', '', 'auto'),
(297, '_transient_health-check-site-status-result', '{\"good\":18,\"recommended\":5,\"critical\":0}', 'on'),
(257, 'fs_active_plugins', 'O:8:\"stdClass\":0:{}', 'auto'),
(222, 'elementor_active_kit', '22', 'auto'),
(223, 'elementor_font_display', 'swap', 'auto'),
(234, 'e_editor_counter', '4', 'auto'),
(226, 'elementor_landing_pages_activation', '0', 'auto'),
(227, 'elementor_checklist', '{\"last_opened_timestamp\":null,\"first_closed_checklist_in_editor\":false,\"is_popup_minimized\":false,\"steps\":{\"add_logo\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"set_fonts_and_colors\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"create_pages\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"setup_header\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"assign_homepage\":{\"is_marked_completed\":false,\"is_immutable_completed\":false}},\"should_open_in_editor\":false}', 'auto'),
(228, 'elementor_version', '3.30.0', 'auto'),
(229, 'elementor_install_history', 'a:1:{s:6:\"3.30.0\";i:1751699786;}', 'auto'),
(230, 'elementor_events_db_version', '1.0.0', 'off'),
(232, 'elementor_onboarded', '1', 'auto'),
(233, '_elementor_onboarding_features', 'a:2:{s:9:\"essential\";a:1:{i:0;s:29:\"Templates &amp; Theme Builder\";}s:8:\"advanced\";a:0:{}}', 'auto'),
(235, '_elementor_installed_time', '1751699828', 'auto'),
(236, '_elementor_free_to_pro_upsell', 'a:2:{s:7:\"timeout\";i:1751703430;s:5:\"value\";s:593:\"[{\"id\":\"animated_headline\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/animated_headline.jpg\"},{\"id\":\"video_playlist\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/video_playlist.jpg\"},{\"id\":\"cta\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/cta.jpg\"},{\"id\":\"testimonial_widget\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/testimonial_widget.jpg\"},{\"id\":\"image_carousel\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/image_carousel.jpg\"}]\";}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(237, '_elementor_notifications_data', 'a:2:{s:7:\"timeout\";i:1751703434;s:5:\"value\";s:12765:\"[{\"id\":\"host-google-cloud\",\"title\":\"Deliver fast, secure websites at scale - free migration included!\",\"description\":\"Host your site on Elementor\\u2019s infrastructure - built for speed, security, and scale. Powered by Google Cloud, with free migration and 24\\/7 expert support.\",\"topic\":\"Host\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/host-google-cloud.png\",\"chipTags\":[\"Cloud Hosting\"],\"link\":\"https:\\/\\/go.elementor.com\\/elementor-host-google-cloud\",\"readMoreText\":\"Read More\"},{\"id\":\"send-notification-june\",\"title\":\"A whole new onboarding experience\",\"description\":\"Try the new onboarding now: Launch abandoned cart recovery, welcome flows & more in minutes. No setup stress\\u2014just smarter automation from day one.\",\"topic\":\"Send: Email & SMS built for WooCommerce\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/send-june.png\",\"chipTags\":[\"New Features\"],\"cta\":\"Check Out\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/New_June\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"send-app\\/send-app.php\"}]]},{\"id\":\"cloud-templates-3.29\",\"title\":\"Your Templates, available everywhere\",\"description\":\"Store sections, containers, and full pages in the cloud\\u2014making them accessible across all your Pro-connected sites. Style once, reuse anywhere!\",\"topic\":\"Elementor Pro 3.29\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/cloud-templates.png\",\"chipPlan\":\"Pro\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-cloud-templates-blog\\/\",\"readMoreText\":\"Learn More\",\"conditions\":[[{\"type\":\"plugin\",\"plugin\":\"elementor-pro\\/elementor-pro.php\"}]]},{\"id\":\"cloud-templates-3.29\",\"title\":\"Your Templates, available everywhere\",\"description\":\"Store sections, containers, and full pages in the cloud\\u2014making them accessible across all your Pro-connected sites. Style once, reuse anywhere!\",\"topic\":\"Elementor Pro 3.29\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/cloud-templates.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Upgrade\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-cloud-templates\\/\"},{\"id\":\"classes-3.29\",\"title\":\"Classes: Style Once, Apply Everywhere\",\"description\":\"Create Classes to define styling patterns once and apply them across your entire site with a single click. Add States for stunning hover and focus effects\\u2014no coding needed!\",\"topic\":\"Editor V4 Alpha\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/v4-classes.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-editor-v4\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"style-tab-3.29\",\"title\":\"Consistent Styling Everywhere\",\"description\":\"Every V4 element shares the same styling capabilities in the same logical order and location. Plus, we\'ve streamlined from 3 tabs to just 2\\u2014content in one, styling in the other!\",\"topic\":\"Editor V4 Alpha\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/v4-style-tab.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-editor-v4\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"responsive-3.29\",\"title\":\"Fully Responsive Design\",\"description\":\"With Editor V4, every single style property can be customized per device. Complete creative control for desktop, tablet, and mobile!\",\"topic\":\"Editor V4 Alpha\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/v4-responsive.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-editor-v4\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"send-connect\",\"title\":\"More Integrations, More Impact\",\"description\":\"Discover Send\\u2019s new features: Behavior-based triggers, win-back email campaigns, expanded form integrations, and more! Explore how marketing automation features can boost your store.\",\"topic\":\"Send: Email & SMS built for WooCommerce\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/send-connect.png\",\"chipTags\":[\"New Features\"],\"cta\":\"Check Out\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/newmay\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"send-app\\/send-app.php\"}]]},{\"id\":\"performance-3.29\",\"title\":\"Blazing fast performance\",\"description\":\"In Editor V4, each element uses one clean div instead of multiple nested divs like in the current version\\u2014your sites will load lightning-fast with cleaner code!\",\"topic\":\"Editor V4 Alpha\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/v4-performance.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.29-editor-v4\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"migration-host\",\"title\":\"Move to Better Cloud Hosting, Painlessly\",\"description\":\"Migrate your Elementor website for free to a home that\\u2019s perfect for it, in minutes, with a combination of\\u2028advanced automation and free expert support\",\"topic\":\"Host\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/migration-host.png\",\"chipTags\":[\"Cloud Hosting\"],\"link\":\"https:\\/\\/go.elementor.com\\/hosting-free-migration\",\"readMoreText\":\"Learn More\",\"cta\":\"Migrate for free\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/hosting-free-migration\"},{\"id\":\"ai-isolate-object\",\"title\":\"Sharper product images, instantly\",\"description\":\"Remove distractions and reframe your shots with the new Isolate Object tool powered by Elementor AI \\u2014 perfect for a polished, uniform Woo storefront.\",\"topic\":\"Elementor AI\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/isolate-object-ai.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/Isolateobjectblog\",\"readMoreText\":\"Learn More\",\"conditions\":[[{\"type\":\"introduction_meta\",\"meta\":\"ai_get_started\"}]],\"cta\":\"Start Free Trial\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/Isolateobjectblog\"},{\"id\":\"ai-isolate-object\",\"title\":\"Sharper product images, instantly\",\"description\":\"Remove distractions and reframe your shots with the new Isolate Object tool powered by Elementor AI \\u2014 perfect for a polished, uniform Woo storefront.\",\"topic\":\"Elementor AI\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/isolate-object-ai.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Start Free Trial\",\"link\":\"https:\\/\\/go.elementor.com\\/Isolateobjectblog\",\"readMoreText\":\"Learn More\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/Isolateobjectblog\"},{\"id\":\"hello-biz-contact\",\"title\":\"New Contact Widget, Visual Layout Presets & more\",\"description\":\"Hello Biz just got an update! Explore the new Contact Widget, Visual Layout Presets, Form Submissions integration, and fresh new kits.\",\"topic\":\"Hello Biz\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/hello-biz-contact.png\",\"chipTags\":[\"New Features\"],\"link\":\"https:\\/\\/go.elementor.com\\/hello-biz-updates\",\"readMoreText\":\"Learn More\"},{\"id\":\"ai-site-planner-colors\",\"title\":\"Style Your Wireframe, Speed Up Your Store Build\",\"description\":\"Site Planner now lets you style your wireframe with fonts and colors - instantly visualizing your site\\u2019s look and feel. Plus, it predesigns pages for WooCommerce like Cart and Checkout, so you can dive straight into customizations\",\"topic\":\"Elementor AI\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/site-planner-colors.png\",\"chipTags\":[\"New Feature\"],\"link\":\"http:\\/\\/www.elementor.com\\/ai-site-planner\",\"readMoreText\":\"Learn More\"},{\"id\":\"ally-notification\",\"title\":\"Just released! Ally - a new plugin for web accessibility & usability\",\"description\":\"Ally simplifies the complexities of making your website more accessible. With new regulations here and coming, making your website more usable and inclusive is no longer just an option, but a must.\",\"topic\":\"Ally by Elementor\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/ally-notification.png\",\"chipTags\":[\"New plugin\"],\"cta\":\"Get it free\",\"ctaLink\":\"https:\\/\\/wordpress.org\\/plugins\\/pojo-accessibility\\/\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"pojo-accessibility\\/pojo-accessibility.php\"}]]},{\"id\":\"ai-site-planner\",\"title\":\"Instant Sitemaps & Wireframes\",\"description\":\"Get your website plan in minutes with AI Site Planner. Describe your desired site and AI will generate a sitemap, brief and wireframe populated with initial content, ready for you to customize.\",\"topic\":\"Elementor AI\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/aI-site-planner.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/ai-notification-site-planner\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"grid-span-3.27\",\"title\":\"Design Grid layouts that fit your exact vision\",\"description\":\"Advanced column and row span controls give you the power to design Grid Container layouts that fit your exact vision.\",\"topic\":\"Elementor 3.27\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/grid-span-3.27.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.27-grid-span-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"local-fonts-3.27\",\"title\":\"Load Google Fonts safer and faster\",\"description\":\"Once enabled, Google Fonts are served directly from your server, streamlining the loading process and enhancing security.\",\"topic\":\"Elementor 3.27\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/local-google-fonts-3.27.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.27-local-fonts-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"video-shorts-3.27\",\"title\":\"Showcase short-form, vertical videos\",\"description\":\"The Video widget now supports YouTube Shorts in a vertical 9:16 ratio, the go-to format for engaging audiences.\",\"topic\":\"Elementor 3.27\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/video-shorts-3.27.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.27-video-shorts-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"dynamic-off-canvas-3.26\",\"title\":\"Dynamic Off-Canvas for Loop Grids\",\"description\":\"Create richer, more interactive designs by linking Dynamic Content to the Off Canvas widget, delivering seamless user experiences.\",\"topic\":\"Elementor Pro 3.26\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/off-canvas-loop-grids.png\",\"chipPlan\":\"Pro\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.26-blog\\/\",\"readMoreText\":\"Learn More\",\"conditions\":[[{\"type\":\"plugin\",\"plugin\":\"elementor-pro\\/elementor-pro.php\"}]]},{\"id\":\"dynamic-off-canvas-3.26\",\"title\":\"Dynamic Off-Canvas for Loop Grids\",\"description\":\"Create richer, more interactive designs by linking Dynamic Content to the Off Canvas widget, delivering seamless user experiences.\",\"topic\":\"Elementor Pro 3.26\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/off-canvas-loop-grids.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Upgrade\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.26-loop-off-canvas\\/\"},{\"id\":\"image-optimizer-3.19\",\"title\":\"Effortlessly optimize images for a stunning, high-speed website with the Image Optimizer plugin.\",\"description\":\"Image Optimizer perfectly balances between image quality and performance to boost your website.  Resize, compress, and convert images to WebP, for faster loading times and and better user experience.\",\"topic\":\"Image Optimizer Plugin by Elementor\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/image-optimizer-3.19.png\",\"chipTags\":[\"New plugin\"],\"cta\":\"Get the Image Optimizer\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/io-notification-wp-dash-learn-more\\/\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"image-optimization\\/image-optimization.php\"}]]},{\"id\":\"5-star-rating-prompt\",\"title\":\"Love the New Features? Let Us Know with 5 Stars!\",\"description\":\"Help spread the word by telling the world what you love about Elementor.\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/5-star-rating-prompt.png\",\"cta\":\"Leave a Review\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/wp-dash-notification-five-stars\\/\"},{\"id\":\"site-mailer-introducing\",\"title\":\"Introducing Site Mailer\",\"description\":\"Keep your WordPress emails out of the spam folder with improved deliverability and an easy setup\\u2014no need for an SMTP plugin or complicated configurations.\",\"topic\":\"Site Mailer Plugin by Elementor\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/Site-mailer.png\",\"chipTags\":[\"New plugin\"],\"cta\":\"Start Free Trial\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/sm-wp-dash-whatsnew\\/\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"site-mailer\\/site-mailer.php\"}]]}]\";}', 'off'),
(240, 'elementor_connect_site_key', 'e907a24d0d54ce07293ff1b248354497', 'auto'),
(241, 'elementor_remote_info_library', 'a:3:{s:10:\"types_data\";a:4:{s:5:\"block\";a:2:{s:10:\"categories\";a:30:{i:0;s:8:\"404 page\";i:1;s:5:\"about\";i:2;s:7:\"archive\";i:3;s:8:\"Benefits\";i:4;s:14:\"call to action\";i:5;s:7:\"clients\";i:6;s:7:\"contact\";i:7;s:4:\"Data\";i:8;s:10:\"ehp-footer\";i:9;s:10:\"ehp-header\";i:10;s:3:\"faq\";i:11;s:8:\"features\";i:12;s:6:\"footer\";i:13;s:7:\"Gallery\";i:14;s:6:\"header\";i:15;s:4:\"hero\";i:16;s:11:\"Link in Bio\";i:17;s:9:\"portfolio\";i:18;s:7:\"pricing\";i:19;s:15:\"product archive\";i:20;s:5:\"Quote\";i:21;s:15:\"Service Details\";i:22;s:8:\"services\";i:23;s:11:\"single page\";i:24;s:11:\"single post\";i:25;s:14:\"single product\";i:26;s:5:\"stats\";i:27;s:9:\"subscribe\";i:28;s:4:\"team\";i:29;s:12:\"testimonials\";}s:4:\"sets\";a:5:{i:0;s:11:\"Boxing Club\";i:1;s:19:\"Business Consultant\";i:2;s:16:\"Marketing Agency\";i:3;s:9:\"Wireframe\";i:4;s:15:\"Workshop Center\";}}s:5:\"popup\";a:1:{s:10:\"categories\";a:6:{i:0;s:10:\"bottom bar\";i:1;s:7:\"classic\";i:2;s:6:\"fly-in\";i:3;s:11:\"full screen\";i:4;s:9:\"hello bar\";i:5;s:8:\"slide-in\";}}s:2:\"lp\";a:1:{s:10:\"categories\";a:15:{i:0;s:8:\"Business\";i:1;s:16:\"Coming Soon Page\";i:2;s:9:\"eCommerce\";i:3;s:9:\"Education\";i:4;s:6:\"Events\";i:5;s:18:\"Health and Fitness\";i:6;s:3:\"NFT\";i:7;s:14:\"Online Service\";i:8;s:7:\"Product\";i:9;s:11:\"Real Estate\";i:10;s:18:\"Social Involvement\";i:11;s:14:\"Thank You Page\";i:12;s:6:\"Travel\";i:13;s:18:\"Under Construction\";i:14;s:9:\"Wireframe\";}}s:2:\"lb\";a:1:{s:10:\"categories\";a:2:{i:0;s:4:\"post\";i:1;s:7:\"product\";}}}s:10:\"categories\";a:30:{i:0;s:8:\"404 page\";i:1;s:5:\"about\";i:2;s:7:\"archive\";i:3;s:8:\"Benefits\";i:4;s:14:\"call to action\";i:5;s:7:\"clients\";i:6;s:7:\"contact\";i:7;s:4:\"Data\";i:8;s:10:\"ehp-footer\";i:9;s:10:\"ehp-header\";i:10;s:3:\"faq\";i:11;s:8:\"features\";i:12;s:6:\"footer\";i:13;s:7:\"Gallery\";i:14;s:6:\"header\";i:15;s:4:\"hero\";i:16;s:11:\"Link in Bio\";i:17;s:9:\"portfolio\";i:18;s:7:\"pricing\";i:19;s:15:\"product archive\";i:20;s:5:\"Quote\";i:21;s:15:\"Service Details\";i:22;s:8:\"services\";i:23;s:11:\"single page\";i:24;s:11:\"single post\";i:25;s:14:\"single product\";i:26;s:5:\"stats\";i:27;s:9:\"subscribe\";i:28;s:4:\"team\";i:29;s:12:\"testimonials\";}s:9:\"templates\";a:4:{i:0;a:20:{s:4:\"tmpl\";i:1254;s:2:\"id\";i:20472;s:5:\"title\";s:10:\"test ido f\";s:9:\"thumbnail\";s:153:\"https://library.stg.elementor.red/wp-content/uploads/2025/01/png-clipart-logo-harry-potter-literary-series-lord-voldemort-film-harry-potter-thumbnail.png\";s:12:\"tmpl_created\";i:1751356263;s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:120:\"https://library.stg.elementor.red/blocks/test-ido-f/?utm_source=template-library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:11:\"access_tier\";s:4:\"free\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";i:0;s:16:\"popularity_index\";i:-1;s:11:\"trend_index\";i:-1;s:18:\"editor_layout_type\";s:0:\"\";s:15:\"minimum_version\";s:5:\"0.0.0\";s:8:\"products\";s:7:\"regular\";s:17:\"has_page_settings\";s:1:\"0\";s:6:\"is_pro\";s:1:\"0\";s:12:\"access_level\";i:0;}i:1;a:20:{s:4:\"tmpl\";i:1227;s:2:\"id\";i:19968;s:5:\"title\";s:12:\"Zeyad Test 1\";s:9:\"thumbnail\";s:83:\"https://library.stg.elementor.red/wp-content/uploads/2022/09/boxking_hero_img_2.jpg\";s:12:\"tmpl_created\";i:1670765723;s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:122:\"https://library.stg.elementor.red/blocks/zeyad-test-1/?utm_source=template-library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:11:\"access_tier\";s:9:\"essential\";s:7:\"subtype\";s:5:\"about\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";i:1;s:16:\"popularity_index\";i:-1;s:11:\"trend_index\";i:-1;s:18:\"editor_layout_type\";s:0:\"\";s:15:\"minimum_version\";s:5:\"0.0.0\";s:8:\"products\";s:7:\"regular\";s:17:\"has_page_settings\";s:1:\"0\";s:6:\"is_pro\";s:1:\"1\";s:12:\"access_level\";i:20;}i:2;a:20:{s:4:\"tmpl\";i:1231;s:2:\"id\";i:19494;s:5:\"title\";s:5:\"test2\";s:9:\"thumbnail\";s:83:\"https://library.stg.elementor.red/wp-content/uploads/2022/09/boxking_hero_img_4.jpg\";s:12:\"tmpl_created\";i:1672308146;s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:115:\"https://library.stg.elementor.red/blocks/test2/?utm_source=template-library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"block\";s:11:\"access_tier\";s:9:\"essential\";s:7:\"subtype\";s:4:\"page\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";i:2;s:16:\"popularity_index\";i:-1;s:11:\"trend_index\";i:-1;s:18:\"editor_layout_type\";s:0:\"\";s:15:\"minimum_version\";s:5:\"0.0.0\";s:8:\"products\";s:7:\"regular\";s:17:\"has_page_settings\";s:1:\"1\";s:6:\"is_pro\";s:1:\"1\";s:12:\"access_level\";i:20;}i:3;a:20:{s:4:\"tmpl\";i:1209;s:2:\"id\";i:9631;s:5:\"title\";s:38:\"Slide-in | Sale | Register | Subscribe\";s:9:\"thumbnail\";s:87:\"https://library.stg.elementor.red/wp-content/uploads/2019/01/Slide-in_Sale_small_01.png\";s:12:\"tmpl_created\";i:1660034300;s:6:\"author\";s:9:\"Elementor\";s:3:\"url\";s:126:\"https://library.stg.elementor.red/popups/slide-in-sale-01/?utm_source=template-library&utm_medium=wp-dash&utm_campaign=preview\";s:4:\"type\";s:5:\"popup\";s:11:\"access_tier\";s:9:\"essential\";s:7:\"subtype\";s:8:\"slide-in\";s:4:\"tags\";s:2:\"[]\";s:10:\"menu_order\";i:142;s:16:\"popularity_index\";i:-1;s:11:\"trend_index\";i:-1;s:18:\"editor_layout_type\";s:0:\"\";s:15:\"minimum_version\";s:5:\"0.0.0\";s:8:\"products\";s:7:\"regular\";s:17:\"has_page_settings\";s:1:\"1\";s:6:\"is_pro\";s:1:\"1\";s:12:\"access_level\";i:1;}}}', 'off'),
(242, 'elementor_remote_info_feed_data', 'a:3:{i:0;a:5:{s:5:\"title\";s:57:\"Introducing Cloud Templates: your personal design library\";s:7:\"excerpt\";s:153:\"Transform your workflow with Elementor\'s new Cloud Templates – create, save, and access your templates across all your websites with just a few clicks.\";s:7:\"created\";i:1749048239;s:5:\"badge\";s:3:\"NEW\";s:3:\"url\";s:127:\"https://elementor.com/blog/introducing-cloud-templates/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}i:1;a:5:{s:5:\"title\";s:74:\"Introducing Editor V4 Alpha: The Future of Website Building with Elementor\";s:7:\"excerpt\";s:242:\"Editor V4 Alpha introduces a CSS-first framework with reusable Classes and States, improved performance, a unified styling system, and fully responsive style controls—all designed to make your website building more efficient and consistent.\";s:7:\"created\";i:1748357309;s:5:\"badge\";s:4:\" NEW\";s:3:\"url\";s:119:\"https://elementor.com/blog/editor-v4-1st-alpha/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}i:2;a:5:{s:5:\"title\";s:101:\"Introducing Elementor 3.27: Flexible Grids, Better Security, Enhanced Accessibility & More Creativity\";s:7:\"excerpt\";s:409:\"Elementor 3.27 is packed with features designed to give you more control, boost your site’s performance, enhance accessibility, and take your creativity to new heights. This version is all about solving real challenges—whether it’s designing intricate Grid layouts, embedding modern video formats, or adding effortless animations, Elementor 3.27 makes your workflow smoother and your websites smarter.\r\n\";s:7:\"created\";i:1738142681;s:5:\"badge\";s:3:\"NEW\";s:3:\"url\";s:155:\"https://elementor.com/blog/elementor-327-grid-layouts-local-google-fonts-ai-motion/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}}', 'off'),
(268, '_transient_timeout_tisdk_has_support_page', '1752306642', 'off'),
(269, '_transient_tisdk_has_support_page', 'no', 'off'),
(270, '_transient_timeout_tisdk_has_donate_page', '1752306642', 'off'),
(271, '_transient_tisdk_has_donate_page', 'no', 'off'),
(252, '_elementor_local_google_fonts', 'a:2:{s:6:\"roboto\";a:2:{s:3:\"url\";s:79:\"http://localhost/surya/wp-content/uploads/elementor/google-fonts/css/roboto.css\";s:7:\"version\";i:1751700397;}s:10:\"robotoslab\";a:2:{s:3:\"url\";s:83:\"http://localhost/surya/wp-content/uploads/elementor/google-fonts/css/robotoslab.css\";s:7:\"version\";i:1751701430;}}', 'auto'),
(267, 'otter_blocks_install', '1751701842', 'auto'),
(258, 'fs_debug_mode', '', 'auto'),
(259, 'fs_accounts', 'a:8:{s:21:\"id_slug_type_path_map\";a:1:{i:2182;a:3:{s:4:\"slug\";s:26:\"addons-for-visual-composer\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:57:\"addons-for-visual-composer/addons-for-visual-composer.php\";}}s:11:\"plugin_data\";a:1:{s:26:\"addons-for-visual-composer\";a:18:{s:19:\"last_load_timestamp\";i:1751701509;s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:57:\"addons-for-visual-composer/addons-for-visual-composer.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1751701509;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:6:\"2.11.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"3.9.3\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";N;s:4:\"host\";s:9:\"localhost\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1751701509;s:7:\"version\";s:5:\"3.9.3\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1751701513;s:7:\"version\";s:5:\"3.9.3\";}s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"7\";s:4:\"info\";s:2:\"jj\";s:12:\"is_anonymous\";b:1;}}}s:13:\"file_slug_map\";a:1:{s:57:\"addons-for-visual-composer/addons-for-visual-composer.php\";s:26:\"addons-for-visual-composer\";}s:7:\"plugins\";a:1:{s:26:\"addons-for-visual-composer\";O:9:\"FS_Plugin\":24:{s:2:\"id\";s:4:\"2182\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_1322c3f34412e56dc2d697e80ef14\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";N;s:5:\"title\";s:41:\"Livemesh Addons for WPBakery Page Builder\";s:4:\"slug\";s:26:\"addons-for-visual-composer\";s:12:\"premium_slug\";s:34:\"addons-for-visual-composer-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:57:\"addons-for-visual-composer/addons-for-visual-composer.php\";s:7:\"version\";s:5:\"3.9.3\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}}s:12:\"gc_timestamp\";a:0:{}s:10:\"theme_data\";a:0:{}s:9:\"unique_id\";s:32:\"4d0ca48121f5b31285449aa8ff40fdb3\";s:13:\"admin_notices\";a:1:{s:26:\"addons-for-visual-composer\";a:0:{}}}', 'auto'),
(260, 'fs_api_cache', 'a:0:{}', 'off'),
(265, 'lvca_settings', 'a:20:{s:16:\"lvca_theme_color\";s:7:\"#f94213\";s:22:\"lvca_theme_hover_color\";s:7:\"#888888\";s:33:\"lvca_deactivate_element_accordion\";s:4:\"true\";s:32:\"lvca_deactivate_element_carousel\";s:4:\"true\";s:31:\"lvca_deactivate_element_clients\";s:4:\"true\";s:31:\"lvca_deactivate_element_heading\";s:4:\"true\";s:33:\"lvca_deactivate_element_odometers\";s:4:\"true\";s:33:\"lvca_deactivate_element_piecharts\";s:4:\"true\";s:33:\"lvca_deactivate_element_portfolio\";s:4:\"true\";s:38:\"lvca_deactivate_element_posts_carousel\";s:4:\"true\";s:37:\"lvca_deactivate_element_pricing_table\";s:4:\"true\";s:30:\"lvca_deactivate_element_spacer\";s:4:\"true\";s:32:\"lvca_deactivate_element_services\";s:4:\"true\";s:33:\"lvca_deactivate_element_stats_bar\";s:4:\"true\";s:28:\"lvca_deactivate_element_tabs\";s:4:\"true\";s:28:\"lvca_deactivate_element_team\";s:4:\"true\";s:36:\"lvca_deactivate_element_testimonials\";s:4:\"true\";s:43:\"lvca_deactivate_element_testimonials_slider\";s:4:\"true\";s:15:\"lvca_custom_css\";s:0:\"\";s:17:\"lvca_enable_debug\";s:0:\"\";}', 'auto'),
(266, 'lvca_option_dismissed_notices', 'a:1:{s:4:\"rate\";i:1752306613;}', 'auto'),
(291, 'supreme-modules-for-divi-activation-date', '1751702085', 'off'),
(276, 'themeisle_blocks_db_version', '3.1.0', 'auto'),
(277, 'themeisle_blocks_settings_redirect', '', 'auto'),
(278, 'otter_blocks_logger_flag', 'yes', 'auto'),
(282, '_transient_timeout_otter_blocks_310versions', '1752134057', 'off'),
(283, '_transient_otter_blocks_310versions', 'a:123:{i:0;a:2:{s:7:\"version\";s:5:\"1.0.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.0.0.zip\";}i:1;a:2:{s:7:\"version\";s:5:\"1.0.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.0.1.zip\";}i:2;a:2:{s:7:\"version\";s:5:\"1.0.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.0.2.zip\";}i:3;a:2:{s:7:\"version\";s:5:\"1.0.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.0.3.zip\";}i:4;a:2:{s:7:\"version\";s:5:\"1.0.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.0.4.zip\";}i:5;a:2:{s:7:\"version\";s:5:\"1.1.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.1.0.zip\";}i:6;a:2:{s:7:\"version\";s:5:\"1.1.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.1.1.zip\";}i:7;a:2:{s:7:\"version\";s:5:\"1.1.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.1.2.zip\";}i:8;a:2:{s:7:\"version\";s:5:\"1.1.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.1.3.zip\";}i:9;a:2:{s:7:\"version\";s:5:\"1.1.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.1.4.zip\";}i:10;a:2:{s:7:\"version\";s:5:\"1.1.5\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.1.5.zip\";}i:11;a:2:{s:7:\"version\";s:5:\"1.2.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.2.0.zip\";}i:12;a:2:{s:7:\"version\";s:5:\"1.2.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.2.1.zip\";}i:13;a:2:{s:7:\"version\";s:5:\"1.2.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.2.2.zip\";}i:14;a:2:{s:7:\"version\";s:5:\"1.2.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.2.3.zip\";}i:15;a:2:{s:7:\"version\";s:5:\"1.2.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.2.4.zip\";}i:16;a:2:{s:7:\"version\";s:5:\"1.2.5\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.2.5.zip\";}i:17;a:2:{s:7:\"version\";s:5:\"1.3.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.3.0.zip\";}i:18;a:2:{s:7:\"version\";s:5:\"1.3.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.3.1.zip\";}i:19;a:2:{s:7:\"version\";s:5:\"1.3.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.3.2.zip\";}i:20;a:2:{s:7:\"version\";s:5:\"1.3.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.3.3.zip\";}i:21;a:2:{s:7:\"version\";s:5:\"1.4.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.4.0.zip\";}i:22;a:2:{s:7:\"version\";s:5:\"1.4.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.4.1.zip\";}i:23;a:2:{s:7:\"version\";s:5:\"1.5.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.0.zip\";}i:24;a:2:{s:7:\"version\";s:5:\"1.5.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.1.zip\";}i:25;a:2:{s:7:\"version\";s:6:\"1.5.10\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.10.zip\";}i:26;a:2:{s:7:\"version\";s:6:\"1.5.11\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.11.zip\";}i:27;a:2:{s:7:\"version\";s:6:\"1.5.12\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.12.zip\";}i:28;a:2:{s:7:\"version\";s:5:\"1.5.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.2.zip\";}i:29;a:2:{s:7:\"version\";s:5:\"1.5.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.3.zip\";}i:30;a:2:{s:7:\"version\";s:5:\"1.5.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.4.zip\";}i:31;a:2:{s:7:\"version\";s:5:\"1.5.5\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.5.zip\";}i:32;a:2:{s:7:\"version\";s:5:\"1.5.6\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.6.zip\";}i:33;a:2:{s:7:\"version\";s:5:\"1.5.7\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.7.zip\";}i:34;a:2:{s:7:\"version\";s:5:\"1.5.8\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.8.zip\";}i:35;a:2:{s:7:\"version\";s:5:\"1.5.9\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.5.9.zip\";}i:36;a:2:{s:7:\"version\";s:5:\"1.6.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.6.0.zip\";}i:37;a:2:{s:7:\"version\";s:5:\"1.6.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.6.1.zip\";}i:38;a:2:{s:7:\"version\";s:5:\"1.6.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.6.2.zip\";}i:39;a:2:{s:7:\"version\";s:5:\"1.6.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.6.3.zip\";}i:40;a:2:{s:7:\"version\";s:5:\"1.6.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.6.4.zip\";}i:41;a:2:{s:7:\"version\";s:5:\"1.6.5\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.6.5.zip\";}i:42;a:2:{s:7:\"version\";s:5:\"1.6.6\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.6.6.zip\";}i:43;a:2:{s:7:\"version\";s:5:\"1.6.7\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.6.7.zip\";}i:44;a:2:{s:7:\"version\";s:5:\"1.6.8\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.6.8.zip\";}i:45;a:2:{s:7:\"version\";s:5:\"1.6.9\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.6.9.zip\";}i:46;a:2:{s:7:\"version\";s:5:\"1.7.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.7.0.zip\";}i:47;a:2:{s:7:\"version\";s:5:\"1.7.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.7.1.zip\";}i:48;a:2:{s:7:\"version\";s:5:\"1.7.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.7.2.zip\";}i:49;a:2:{s:7:\"version\";s:5:\"1.7.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.7.3.zip\";}i:50;a:2:{s:7:\"version\";s:5:\"1.7.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.7.4.zip\";}i:51;a:2:{s:7:\"version\";s:5:\"1.7.5\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.1.7.5.zip\";}i:52;a:2:{s:7:\"version\";s:5:\"2.0.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.0.zip\";}i:53;a:2:{s:7:\"version\";s:5:\"2.0.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.1.zip\";}i:54;a:2:{s:7:\"version\";s:6:\"2.0.10\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.10.zip\";}i:55;a:2:{s:7:\"version\";s:6:\"2.0.11\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.11.zip\";}i:56;a:2:{s:7:\"version\";s:6:\"2.0.12\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.12.zip\";}i:57;a:2:{s:7:\"version\";s:6:\"2.0.13\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.13.zip\";}i:58;a:2:{s:7:\"version\";s:6:\"2.0.14\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.14.zip\";}i:59;a:2:{s:7:\"version\";s:6:\"2.0.15\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.15.zip\";}i:60;a:2:{s:7:\"version\";s:6:\"2.0.16\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.16.zip\";}i:61;a:2:{s:7:\"version\";s:5:\"2.0.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.2.zip\";}i:62;a:2:{s:7:\"version\";s:5:\"2.0.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.3.zip\";}i:63;a:2:{s:7:\"version\";s:5:\"2.0.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.4.zip\";}i:64;a:2:{s:7:\"version\";s:5:\"2.0.5\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.5.zip\";}i:65;a:2:{s:7:\"version\";s:5:\"2.0.6\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.6.zip\";}i:66;a:2:{s:7:\"version\";s:5:\"2.0.7\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.7.zip\";}i:67;a:2:{s:7:\"version\";s:5:\"2.0.8\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.8.zip\";}i:68;a:2:{s:7:\"version\";s:5:\"2.0.9\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.0.9.zip\";}i:69;a:2:{s:7:\"version\";s:5:\"2.1.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.1.0.zip\";}i:70;a:2:{s:7:\"version\";s:5:\"2.1.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.1.1.zip\";}i:71;a:2:{s:7:\"version\";s:5:\"2.1.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.1.2.zip\";}i:72;a:2:{s:7:\"version\";s:5:\"2.1.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.1.3.zip\";}i:73;a:2:{s:7:\"version\";s:5:\"2.1.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.1.4.zip\";}i:74;a:2:{s:7:\"version\";s:5:\"2.1.5\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.1.5.zip\";}i:75;a:2:{s:7:\"version\";s:5:\"2.1.6\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.1.6.zip\";}i:76;a:2:{s:7:\"version\";s:5:\"2.2.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.2.0.zip\";}i:77;a:2:{s:7:\"version\";s:5:\"2.2.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.2.1.zip\";}i:78;a:2:{s:7:\"version\";s:5:\"2.2.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.2.2.zip\";}i:79;a:2:{s:7:\"version\";s:5:\"2.2.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.2.3.zip\";}i:80;a:2:{s:7:\"version\";s:5:\"2.2.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.2.4.zip\";}i:81;a:2:{s:7:\"version\";s:5:\"2.2.5\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.2.5.zip\";}i:82;a:2:{s:7:\"version\";s:5:\"2.2.6\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.2.6.zip\";}i:83;a:2:{s:7:\"version\";s:5:\"2.2.7\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.2.7.zip\";}i:84;a:2:{s:7:\"version\";s:5:\"2.3.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.3.0.zip\";}i:85;a:2:{s:7:\"version\";s:5:\"2.3.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.3.1.zip\";}i:86;a:2:{s:7:\"version\";s:5:\"2.3.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.3.2.zip\";}i:87;a:2:{s:7:\"version\";s:5:\"2.3.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.3.3.zip\";}i:88;a:2:{s:7:\"version\";s:5:\"2.3.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.3.4.zip\";}i:89;a:2:{s:7:\"version\";s:5:\"2.4.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.4.0.zip\";}i:90;a:2:{s:7:\"version\";s:5:\"2.4.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.4.1.zip\";}i:91;a:2:{s:7:\"version\";s:5:\"2.5.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.5.0.zip\";}i:92;a:2:{s:7:\"version\";s:5:\"2.5.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.5.1.zip\";}i:93;a:2:{s:7:\"version\";s:5:\"2.5.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.5.2.zip\";}i:94;a:2:{s:7:\"version\";s:5:\"2.6.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.0.zip\";}i:95;a:2:{s:7:\"version\";s:5:\"2.6.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.1.zip\";}i:96;a:2:{s:7:\"version\";s:6:\"2.6.10\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.10.zip\";}i:97;a:2:{s:7:\"version\";s:6:\"2.6.11\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.11.zip\";}i:98;a:2:{s:7:\"version\";s:6:\"2.6.12\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.12.zip\";}i:99;a:2:{s:7:\"version\";s:6:\"2.6.13\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.13.zip\";}i:100;a:2:{s:7:\"version\";s:5:\"2.6.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.2.zip\";}i:101;a:2:{s:7:\"version\";s:5:\"2.6.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.3.zip\";}i:102;a:2:{s:7:\"version\";s:5:\"2.6.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.4.zip\";}i:103;a:2:{s:7:\"version\";s:5:\"2.6.5\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.5.zip\";}i:104;a:2:{s:7:\"version\";s:5:\"2.6.6\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.6.zip\";}i:105;a:2:{s:7:\"version\";s:5:\"2.6.7\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.7.zip\";}i:106;a:2:{s:7:\"version\";s:5:\"2.6.8\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.8.zip\";}i:107;a:2:{s:7:\"version\";s:5:\"2.6.9\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.2.6.9.zip\";}i:108;a:2:{s:7:\"version\";s:5:\"3.0.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.0.zip\";}i:109;a:2:{s:7:\"version\";s:5:\"3.0.1\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.1.zip\";}i:110;a:2:{s:7:\"version\";s:6:\"3.0.10\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.10.zip\";}i:111;a:2:{s:7:\"version\";s:6:\"3.0.11\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.11.zip\";}i:112;a:2:{s:7:\"version\";s:6:\"3.0.12\";s:3:\"url\";s:62:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.12.zip\";}i:113;a:2:{s:7:\"version\";s:5:\"3.0.2\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.2.zip\";}i:114;a:2:{s:7:\"version\";s:5:\"3.0.3\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.3.zip\";}i:115;a:2:{s:7:\"version\";s:5:\"3.0.4\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.4.zip\";}i:116;a:2:{s:7:\"version\";s:5:\"3.0.5\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.5.zip\";}i:117;a:2:{s:7:\"version\";s:5:\"3.0.6\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.6.zip\";}i:118;a:2:{s:7:\"version\";s:5:\"3.0.7\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.7.zip\";}i:119;a:2:{s:7:\"version\";s:5:\"3.0.8\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.8.zip\";}i:120;a:2:{s:7:\"version\";s:5:\"3.0.9\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.3.0.9.zip\";}i:121;a:2:{s:7:\"version\";s:5:\"3.1.0\";s:3:\"url\";s:61:\"https://downloads.wordpress.org/plugin/otter-blocks.3.1.0.zip\";}i:122;a:2:{s:7:\"version\";s:5:\"trunk\";s:3:\"url\";s:55:\"https://downloads.wordpress.org/plugin/otter-blocks.zip\";}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=747 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 7, '_edit_lock', '1751621586:1'),
(4, 7, '_wp_page_template', 'about-us.php'),
(43, 16, '_edit_lock', '1751622046:1'),
(687, 98, '_edit_lock', '1751737330:1'),
(42, 14, '_wp_page_template', 'default'),
(41, 14, '_edit_lock', '1751701684:1'),
(40, 2, '_wp_desired_post_slug', 'sample-page'),
(34, 7, '_wp_desired_post_slug', 'home'),
(39, 2, '_wp_trash_meta_time', '1751622049'),
(38, 2, '_wp_trash_meta_status', 'publish'),
(37, 3, '_wp_desired_post_slug', 'privacy-policy'),
(36, 3, '_wp_trash_meta_time', '1751622047'),
(35, 3, '_wp_trash_meta_status', 'draft'),
(33, 7, '_wp_trash_meta_time', '1751621690'),
(98, 30, '_menu_item_url', 'http://localhost/surya/'),
(97, 30, '_menu_item_xfn', ''),
(95, 30, '_menu_item_target', ''),
(96, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 18, '_wp_page_template', 'default'),
(53, 18, '_edit_lock', '1751622338:1'),
(32, 7, '_wp_trash_meta_status', 'publish'),
(104, 31, '_menu_item_target', ''),
(103, 31, '_menu_item_object', 'page'),
(102, 31, '_menu_item_object_id', '14'),
(101, 31, '_menu_item_menu_item_parent', '0'),
(100, 31, '_menu_item_type', 'post_type'),
(99, 30, '_menu_item_orphaned', '1751723015'),
(94, 30, '_menu_item_object', 'custom'),
(93, 30, '_menu_item_object_id', '30'),
(92, 30, '_menu_item_menu_item_parent', '0'),
(64, 21, '_edit_lock', '1751699764:1'),
(65, 22, '_elementor_edit_mode', 'builder'),
(66, 22, '_elementor_template_type', 'kit'),
(67, 23, '_elementor_edit_mode', 'builder'),
(68, 23, '_elementor_template_type', 'wp-post'),
(69, 24, '_elementor_edit_mode', 'builder'),
(70, 24, '_elementor_template_type', 'post'),
(71, 23, '_elementor_version', '3.30.0'),
(72, 25, '_elementor_edit_mode', 'builder'),
(73, 25, '_elementor_template_type', 'wp-post'),
(74, 26, '_elementor_edit_mode', 'builder'),
(75, 26, '_elementor_template_type', 'post'),
(76, 25, '_elementor_version', '3.30.0'),
(77, 25, '_edit_lock', '1751701338:1'),
(79, 23, '_wp_trash_meta_status', 'draft'),
(80, 23, '_wp_trash_meta_time', '1751701599'),
(81, 23, '_wp_desired_post_slug', ''),
(82, 25, '_wp_trash_meta_status', 'draft'),
(83, 25, '_wp_trash_meta_time', '1751701599'),
(84, 25, '_wp_desired_post_slug', ''),
(85, 27, 'footnotes', ''),
(86, 28, '_edit_lock', '1751702048:1'),
(91, 30, '_menu_item_type', 'custom'),
(89, 29, '_wp_trash_meta_status', 'publish'),
(90, 29, '_wp_trash_meta_time', '1751722487'),
(105, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 31, '_menu_item_xfn', ''),
(107, 31, '_menu_item_url', ''),
(108, 31, '_menu_item_orphaned', '1751723015'),
(109, 32, '_menu_item_type', 'post_type'),
(110, 32, '_menu_item_menu_item_parent', '0'),
(111, 32, '_menu_item_object_id', '18'),
(112, 32, '_menu_item_object', 'page'),
(113, 32, '_menu_item_target', ''),
(114, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(115, 32, '_menu_item_xfn', ''),
(116, 32, '_menu_item_url', ''),
(117, 32, '_menu_item_orphaned', '1751723015'),
(225, 44, '_menu_item_orphaned', '1751723992'),
(199, 42, '_menu_item_type', 'custom'),
(200, 42, '_menu_item_menu_item_parent', '0'),
(201, 42, '_menu_item_object_id', '42'),
(202, 42, '_menu_item_object', 'custom'),
(203, 42, '_menu_item_target', ''),
(204, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(205, 42, '_menu_item_xfn', ''),
(206, 42, '_menu_item_url', 'http://localhost/surya/'),
(207, 42, '_menu_item_orphaned', '1751723992'),
(208, 43, '_menu_item_type', 'post_type'),
(209, 43, '_menu_item_menu_item_parent', '0'),
(210, 43, '_menu_item_object_id', '14'),
(211, 43, '_menu_item_object', 'page'),
(212, 43, '_menu_item_target', ''),
(213, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(214, 43, '_menu_item_xfn', ''),
(215, 43, '_menu_item_url', ''),
(216, 43, '_menu_item_orphaned', '1751723992'),
(217, 44, '_menu_item_type', 'post_type'),
(218, 44, '_menu_item_menu_item_parent', '0'),
(219, 44, '_menu_item_object_id', '18'),
(220, 44, '_menu_item_object', 'page'),
(221, 44, '_menu_item_target', ''),
(222, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(223, 44, '_menu_item_xfn', ''),
(224, 44, '_menu_item_url', ''),
(253, 49, '_menu_item_type', 'post_type'),
(252, 48, '_menu_item_orphaned', '1751724400'),
(251, 48, '_menu_item_url', 'http://localhost/surya/'),
(250, 48, '_menu_item_xfn', ''),
(249, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(248, 48, '_menu_item_target', ''),
(247, 48, '_menu_item_object', 'custom'),
(246, 48, '_menu_item_object_id', '48'),
(245, 48, '_menu_item_menu_item_parent', '0'),
(244, 48, '_menu_item_type', 'custom'),
(242, 45, '_wp_trash_meta_status', 'publish'),
(243, 45, '_wp_trash_meta_time', '1751724023'),
(254, 49, '_menu_item_menu_item_parent', '0'),
(255, 49, '_menu_item_object_id', '14'),
(256, 49, '_menu_item_object', 'page'),
(257, 49, '_menu_item_target', ''),
(258, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(259, 49, '_menu_item_xfn', ''),
(260, 49, '_menu_item_url', ''),
(261, 49, '_menu_item_orphaned', '1751724400'),
(262, 50, '_menu_item_type', 'post_type'),
(263, 50, '_menu_item_menu_item_parent', '0'),
(264, 50, '_menu_item_object_id', '18'),
(265, 50, '_menu_item_object', 'page'),
(266, 50, '_menu_item_target', ''),
(267, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(268, 50, '_menu_item_xfn', ''),
(269, 50, '_menu_item_url', ''),
(270, 50, '_menu_item_orphaned', '1751724400'),
(271, 51, '_menu_item_type', 'custom'),
(272, 51, '_menu_item_menu_item_parent', '0'),
(273, 51, '_menu_item_object_id', '51'),
(274, 51, '_menu_item_object', 'custom'),
(275, 51, '_menu_item_target', ''),
(276, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(277, 51, '_menu_item_xfn', ''),
(278, 51, '_menu_item_url', 'http://localhost/surya/'),
(279, 51, '_menu_item_orphaned', '1751724404'),
(280, 52, '_menu_item_type', 'post_type'),
(281, 52, '_menu_item_menu_item_parent', '0'),
(282, 52, '_menu_item_object_id', '14'),
(283, 52, '_menu_item_object', 'page'),
(284, 52, '_menu_item_target', ''),
(285, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(286, 52, '_menu_item_xfn', ''),
(287, 52, '_menu_item_url', ''),
(288, 52, '_menu_item_orphaned', '1751724404'),
(289, 53, '_menu_item_type', 'post_type'),
(290, 53, '_menu_item_menu_item_parent', '0'),
(291, 53, '_menu_item_object_id', '18'),
(292, 53, '_menu_item_object', 'page'),
(293, 53, '_menu_item_target', ''),
(294, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(295, 53, '_menu_item_xfn', ''),
(296, 53, '_menu_item_url', ''),
(297, 53, '_menu_item_orphaned', '1751724404'),
(298, 54, '_menu_item_type', 'custom'),
(299, 54, '_menu_item_menu_item_parent', '0'),
(300, 54, '_menu_item_object_id', '54'),
(301, 54, '_menu_item_object', 'custom'),
(302, 54, '_menu_item_target', ''),
(303, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(304, 54, '_menu_item_xfn', ''),
(305, 54, '_menu_item_url', 'http://localhost/surya/'),
(306, 54, '_menu_item_orphaned', '1751724406'),
(307, 55, '_menu_item_type', 'post_type'),
(308, 55, '_menu_item_menu_item_parent', '0'),
(309, 55, '_menu_item_object_id', '14'),
(310, 55, '_menu_item_object', 'page'),
(311, 55, '_menu_item_target', ''),
(312, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(313, 55, '_menu_item_xfn', ''),
(314, 55, '_menu_item_url', ''),
(315, 55, '_menu_item_orphaned', '1751724406'),
(316, 56, '_menu_item_type', 'post_type'),
(317, 56, '_menu_item_menu_item_parent', '0'),
(318, 56, '_menu_item_object_id', '18'),
(319, 56, '_menu_item_object', 'page'),
(320, 56, '_menu_item_target', ''),
(321, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(322, 56, '_menu_item_xfn', ''),
(323, 56, '_menu_item_url', ''),
(324, 56, '_menu_item_orphaned', '1751724406'),
(368, 61, '_menu_item_url', ''),
(367, 61, '_menu_item_xfn', ''),
(366, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(365, 61, '_menu_item_target', ''),
(364, 61, '_menu_item_object', 'page'),
(363, 61, '_menu_item_object_id', '14'),
(362, 61, '_menu_item_menu_item_parent', '0'),
(361, 61, '_menu_item_type', 'post_type'),
(360, 60, '_menu_item_orphaned', '1751725019'),
(359, 60, '_menu_item_url', 'http://localhost/surya/'),
(358, 60, '_menu_item_xfn', ''),
(357, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(356, 60, '_menu_item_target', ''),
(355, 60, '_menu_item_object', 'custom'),
(354, 60, '_menu_item_object_id', '60'),
(353, 60, '_menu_item_menu_item_parent', '0'),
(352, 60, '_menu_item_type', 'custom'),
(369, 61, '_menu_item_orphaned', '1751725020'),
(370, 62, '_menu_item_type', 'post_type'),
(371, 62, '_menu_item_menu_item_parent', '0'),
(372, 62, '_menu_item_object_id', '18'),
(373, 62, '_menu_item_object', 'page'),
(374, 62, '_menu_item_target', ''),
(375, 62, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(376, 62, '_menu_item_xfn', ''),
(377, 62, '_menu_item_url', ''),
(378, 62, '_menu_item_orphaned', '1751725020'),
(532, 80, '_menu_item_url', ''),
(488, 75, '_menu_item_orphaned', '1751726730'),
(486, 75, '_menu_item_xfn', ''),
(487, 75, '_menu_item_url', ''),
(484, 75, '_menu_item_target', ''),
(485, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(483, 75, '_menu_item_object', 'page'),
(477, 74, '_menu_item_xfn', ''),
(478, 74, '_menu_item_url', ''),
(479, 74, '_menu_item_orphaned', '1751726730'),
(480, 75, '_menu_item_type', 'post_type'),
(481, 75, '_menu_item_menu_item_parent', '0'),
(482, 75, '_menu_item_object_id', '18'),
(407, 66, '_wp_trash_meta_time', '1751725731'),
(474, 74, '_menu_item_object', 'page'),
(475, 74, '_menu_item_target', ''),
(476, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(473, 74, '_menu_item_object_id', '14'),
(471, 74, '_menu_item_type', 'post_type'),
(472, 74, '_menu_item_menu_item_parent', '0'),
(406, 66, '_wp_trash_meta_status', 'publish'),
(464, 73, '_menu_item_object_id', '73'),
(465, 73, '_menu_item_object', 'custom'),
(466, 73, '_menu_item_target', ''),
(467, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(468, 73, '_menu_item_xfn', ''),
(469, 73, '_menu_item_url', 'http://localhost/surya/'),
(470, 73, '_menu_item_orphaned', '1751726730'),
(463, 73, '_menu_item_menu_item_parent', '0'),
(462, 73, '_menu_item_type', 'custom'),
(531, 80, '_menu_item_xfn', ''),
(530, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(529, 80, '_menu_item_target', ''),
(528, 80, '_menu_item_object', 'page'),
(527, 80, '_menu_item_object_id', '14'),
(526, 80, '_menu_item_menu_item_parent', '0'),
(525, 80, '_menu_item_type', 'post_type'),
(524, 79, '_menu_item_orphaned', '1751727072'),
(523, 79, '_menu_item_url', 'http://localhost/surya/'),
(522, 79, '_menu_item_xfn', ''),
(521, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(520, 79, '_menu_item_target', ''),
(519, 79, '_menu_item_object', 'custom'),
(518, 79, '_menu_item_object_id', '79'),
(517, 79, '_menu_item_menu_item_parent', '0'),
(516, 79, '_menu_item_type', 'custom'),
(533, 80, '_menu_item_orphaned', '1751727072'),
(534, 81, '_menu_item_type', 'post_type'),
(535, 81, '_menu_item_menu_item_parent', '0'),
(536, 81, '_menu_item_object_id', '18'),
(537, 81, '_menu_item_object', 'page'),
(538, 81, '_menu_item_target', ''),
(539, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(540, 81, '_menu_item_xfn', ''),
(541, 81, '_menu_item_url', ''),
(542, 81, '_menu_item_orphaned', '1751727072'),
(586, 86, '_menu_item_url', ''),
(585, 86, '_menu_item_xfn', ''),
(584, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(583, 86, '_menu_item_target', ''),
(582, 86, '_menu_item_object', 'page'),
(581, 86, '_menu_item_object_id', '14'),
(580, 86, '_menu_item_menu_item_parent', '0'),
(579, 86, '_menu_item_type', 'post_type'),
(578, 85, '_menu_item_orphaned', '1751727587'),
(577, 85, '_menu_item_url', 'http://localhost/surya/'),
(576, 85, '_menu_item_xfn', ''),
(575, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(574, 85, '_menu_item_target', ''),
(573, 85, '_menu_item_object', 'custom'),
(572, 85, '_menu_item_object_id', '85'),
(571, 85, '_menu_item_menu_item_parent', '0'),
(570, 85, '_menu_item_type', 'custom'),
(587, 86, '_menu_item_orphaned', '1751727587'),
(588, 87, '_menu_item_type', 'post_type'),
(589, 87, '_menu_item_menu_item_parent', '0'),
(590, 87, '_menu_item_object_id', '18'),
(591, 87, '_menu_item_object', 'page'),
(592, 87, '_menu_item_target', ''),
(593, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(594, 87, '_menu_item_xfn', ''),
(595, 87, '_menu_item_url', ''),
(596, 87, '_menu_item_orphaned', '1751727587'),
(680, 18, '_wp_desired_post_slug', 'contact-us'),
(681, 28, '_wp_trash_meta_status', 'draft'),
(678, 18, '_wp_trash_meta_status', 'publish'),
(679, 18, '_wp_trash_meta_time', '1751734437'),
(682, 28, '_wp_trash_meta_time', '1751734443'),
(683, 28, '_wp_desired_post_slug', ''),
(684, 14, '_wp_trash_meta_status', 'publish'),
(685, 14, '_wp_trash_meta_time', '1751737212'),
(686, 14, '_wp_desired_post_slug', 'about-us'),
(688, 100, '_edit_lock', '1751737346:1'),
(689, 102, '_edit_lock', '1751737367:1'),
(690, 104, '_edit_lock', '1751737395:1'),
(691, 106, '_edit_lock', '1751737408:1'),
(692, 108, '_edit_lock', '1751737426:1'),
(693, 110, '_menu_item_type', 'post_type'),
(694, 110, '_menu_item_menu_item_parent', '0'),
(695, 110, '_menu_item_object_id', '108'),
(696, 110, '_menu_item_object', 'page'),
(697, 110, '_menu_item_target', ''),
(698, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(699, 110, '_menu_item_xfn', ''),
(700, 110, '_menu_item_url', ''),
(702, 111, '_menu_item_type', 'post_type'),
(703, 111, '_menu_item_menu_item_parent', '0'),
(704, 111, '_menu_item_object_id', '106'),
(705, 111, '_menu_item_object', 'page'),
(706, 111, '_menu_item_target', ''),
(707, 111, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(708, 111, '_menu_item_xfn', ''),
(709, 111, '_menu_item_url', ''),
(711, 112, '_menu_item_type', 'post_type'),
(712, 112, '_menu_item_menu_item_parent', '0'),
(713, 112, '_menu_item_object_id', '104'),
(714, 112, '_menu_item_object', 'page'),
(715, 112, '_menu_item_target', ''),
(716, 112, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(717, 112, '_menu_item_xfn', ''),
(718, 112, '_menu_item_url', ''),
(720, 113, '_menu_item_type', 'post_type'),
(721, 113, '_menu_item_menu_item_parent', '0'),
(722, 113, '_menu_item_object_id', '102'),
(723, 113, '_menu_item_object', 'page'),
(724, 113, '_menu_item_target', ''),
(725, 113, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(726, 113, '_menu_item_xfn', ''),
(727, 113, '_menu_item_url', ''),
(729, 114, '_menu_item_type', 'post_type'),
(730, 114, '_menu_item_menu_item_parent', '0'),
(731, 114, '_menu_item_object_id', '100'),
(732, 114, '_menu_item_object', 'page'),
(733, 114, '_menu_item_target', ''),
(734, 114, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(735, 114, '_menu_item_xfn', ''),
(736, 114, '_menu_item_url', ''),
(738, 115, '_menu_item_type', 'post_type'),
(739, 115, '_menu_item_menu_item_parent', '0'),
(740, 115, '_menu_item_object_id', '98'),
(741, 115, '_menu_item_object', 'page'),
(742, 115, '_menu_item_target', ''),
(743, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(744, 115, '_menu_item_xfn', ''),
(745, 115, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-07-04 09:24:43', '2025-07-04 09:24:43', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2025-07-04 09:24:43', '2025-07-04 09:24:43', '', 0, 'http://localhost/surya/?p=1', 0, 'post', '', 1),
(2, 1, '2025-07-04 09:24:43', '2025-07-04 09:24:43', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/surya/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2025-07-04 09:40:49', '2025-07-04 09:40:49', '', 0, 'http://localhost/surya/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-07-04 09:24:43', '2025-07-04 09:24:43', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/surya.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2025-07-04 09:40:47', '2025-07-04 09:40:47', '', 0, 'http://localhost/surya/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-07-04 09:24:49', '2025-07-04 09:24:49', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-07-04 09:24:49', '2025-07-04 09:24:49', '', 0, 'http://localhost/surya/2025/07/04/navigation/', 0, 'wp_navigation', '', 0),
(5, 0, '2025-07-04 09:24:49', '2025-07-04 09:24:49', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-07-04 09:24:49', '2025-07-04 09:24:49', '', 0, 'http://localhost/surya/index.php/2025/07/04/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2025-07-04 09:25:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-07-04 09:25:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=6', 0, 'post', '', 0),
(7, 1, '2025-07-04 09:33:10', '2025-07-04 09:33:10', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2025-07-04 09:34:50', '2025-07-04 09:34:50', '', 0, 'http://localhost/surya/?page_id=7', 0, 'page', '', 0),
(8, 1, '2025-07-04 09:33:10', '2025-07-04 09:33:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2025-07-04 09:33:10', '2025-07-04 09:33:10', '', 7, 'http://localhost/surya/?p=8', 0, 'revision', '', 0),
(12, 1, '2025-07-04 09:40:47', '2025-07-04 09:40:47', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/surya.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2025-07-04 09:40:47', '2025-07-04 09:40:47', '', 3, 'http://localhost/surya/?p=12', 0, 'revision', '', 0),
(18, 1, '2025-07-04 09:45:45', '2025-07-04 09:45:45', '', 'Contact us', '', 'trash', 'closed', 'closed', '', 'contact-us__trashed', '', '', '2025-07-05 16:53:57', '2025-07-05 16:53:57', '', 0, 'http://localhost/surya/?page_id=18', 0, 'page', '', 0),
(13, 1, '2025-07-04 09:40:49', '2025-07-04 09:40:49', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/surya/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-07-04 09:40:49', '2025-07-04 09:40:49', '', 2, 'http://localhost/surya/?p=13', 0, 'revision', '', 0),
(14, 1, '2025-07-04 09:42:34', '2025-07-04 09:42:34', '', 'About us', '', 'trash', 'closed', 'closed', '', 'about-us__trashed', '', '', '2025-07-05 17:40:12', '2025-07-05 17:40:12', '', 0, 'http://localhost/surya/?page_id=14', 0, 'page', '', 0),
(15, 1, '2025-07-04 09:42:34', '2025-07-04 09:42:34', '', 'About us', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2025-07-04 09:42:34', '2025-07-04 09:42:34', '', 14, 'http://localhost/surya/?p=15', 0, 'revision', '', 0),
(16, 1, '2025-07-04 09:43:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-07-04 09:43:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?page_id=16', 0, 'page', '', 0),
(31, 1, '2025-07-05 13:43:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 13:43:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=31', 1, 'nav_menu_item', '', 0),
(19, 1, '2025-07-04 09:45:45', '2025-07-04 09:45:45', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-07-04 09:45:45', '2025-07-04 09:45:45', '', 18, 'http://localhost/surya/?p=19', 0, 'revision', '', 0),
(30, 1, '2025-07-05 13:43:35', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 13:43:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=30', 1, 'nav_menu_item', '', 0),
(21, 1, '2025-07-05 07:15:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-07-05 07:15:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?page_id=21', 0, 'page', '', 0),
(22, 1, '2025-07-05 07:16:25', '2025-07-05 07:16:25', '', 'Default Kit', '', 'publish', 'closed', 'closed', '', 'default-kit', '', '', '2025-07-05 07:16:25', '2025-07-05 07:16:25', '', 0, 'http://localhost/surya/?p=22', 0, 'elementor_library', '', 0),
(23, 1, '2025-07-05 07:46:39', '2025-07-05 07:46:39', '', 'Elementor #23', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2025-07-05 07:46:39', '2025-07-05 07:46:39', '', 0, 'http://localhost/surya/?page_id=23', 0, 'page', '', 0),
(24, 1, '2025-07-05 07:17:08', '2025-07-05 07:17:08', '', 'Elementor #23', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-07-05 07:17:08', '2025-07-05 07:17:08', '', 23, 'http://localhost/surya/?p=24', 0, 'revision', '', 0),
(25, 1, '2025-07-05 07:46:39', '2025-07-05 07:46:39', '', 'Elementor #25', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2025-07-05 07:46:39', '2025-07-05 07:46:39', '', 0, 'http://localhost/surya/?page_id=25', 0, 'page', '', 0),
(26, 1, '2025-07-05 07:17:10', '2025-07-05 07:17:10', '', 'Elementor #25', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2025-07-05 07:17:10', '2025-07-05 07:17:10', '', 25, 'http://localhost/surya/?p=26', 0, 'revision', '', 0),
(27, 1, '2025-07-05 07:47:44', '2025-07-05 07:47:44', '', 'About us', '', 'inherit', 'closed', 'closed', '', '14-autosave-v1', '', '', '2025-07-05 07:47:44', '2025-07-05 07:47:44', '', 14, 'http://localhost/surya/?p=27', 0, 'revision', '', 0),
(28, 1, '2025-07-05 16:54:03', '2025-07-05 16:54:03', '', 'News', '', 'trash', 'closed', 'closed', '', '__trashed-3', '', '', '2025-07-05 16:54:03', '2025-07-05 16:54:03', '', 0, 'http://localhost/surya/?page_id=28', 0, 'page', '', 0),
(29, 1, '2025-07-05 13:34:47', '2025-07-05 13:34:47', '{\n    \"surya::nav_menu_locations[side-menu]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-07-05 13:34:47\"\n    },\n    \"nav_menu[2]\": {\n        \"value\": {\n            \"name\": \"primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-07-05 13:34:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a0658e72-c7aa-41e4-8d70-a6b2c73fac68', '', '', '2025-07-05 13:34:47', '2025-07-05 13:34:47', '', 0, 'http://localhost/surya/a0658e72-c7aa-41e4-8d70-a6b2c73fac68/', 0, 'customize_changeset', '', 0),
(32, 1, '2025-07-05 13:43:35', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 13:43:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=32', 1, 'nav_menu_item', '', 0),
(45, 1, '2025-07-05 14:00:23', '2025-07-05 14:00:23', '{\n    \"nav_menu[-1859456966826429400]\": {\n        \"value\": {\n            \"name\": \"primary\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-07-05 14:00:23\"\n    },\n    \"nav_menu_item[-6875964865614898000]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Contact us\",\n            \"url\": \"http://localhost/surya/contact-us/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact us\",\n            \"nav_menu_term_id\": -1859456966826429400,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-07-05 14:00:23\"\n    },\n    \"nav_menu_item[-1942417486240753700]\": {\n        \"value\": {\n            \"object_id\": 14,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"About us\",\n            \"url\": \"http://localhost/surya/about-us/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About us\",\n            \"nav_menu_term_id\": -1859456966826429400,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-07-05 14:00:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bcaa1530-dee7-40ee-9a6f-422c6db66d6e', '', '', '2025-07-05 14:00:23', '2025-07-05 14:00:23', '', 0, 'http://localhost/surya/bcaa1530-dee7-40ee-9a6f-422c6db66d6e/', 0, 'customize_changeset', '', 0),
(44, 1, '2025-07-05 13:59:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 13:59:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=44', 1, 'nav_menu_item', '', 0),
(42, 1, '2025-07-05 13:59:52', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 13:59:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=42', 1, 'nav_menu_item', '', 0),
(43, 1, '2025-07-05 13:59:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 13:59:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=43', 1, 'nav_menu_item', '', 0),
(49, 1, '2025-07-05 14:06:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:06:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=49', 1, 'nav_menu_item', '', 0),
(48, 1, '2025-07-05 14:06:40', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:06:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=48', 1, 'nav_menu_item', '', 0),
(50, 1, '2025-07-05 14:06:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:06:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2025-07-05 14:06:44', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:06:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2025-07-05 14:06:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:06:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2025-07-05 14:06:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:06:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=53', 1, 'nav_menu_item', '', 0),
(54, 1, '2025-07-05 14:06:46', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:06:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2025-07-05 14:06:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:06:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=55', 1, 'nav_menu_item', '', 0),
(56, 1, '2025-07-05 14:06:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:06:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=56', 1, 'nav_menu_item', '', 0),
(62, 1, '2025-07-05 14:17:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:17:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=62', 1, 'nav_menu_item', '', 0),
(61, 1, '2025-07-05 14:17:00', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:17:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=61', 1, 'nav_menu_item', '', 0),
(60, 1, '2025-07-05 14:16:59', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:16:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=60', 1, 'nav_menu_item', '', 0),
(74, 1, '2025-07-05 14:45:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:45:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=74', 1, 'nav_menu_item', '', 0),
(73, 1, '2025-07-05 14:45:30', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:45:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=73', 1, 'nav_menu_item', '', 0),
(66, 1, '2025-07-05 14:28:51', '2025-07-05 14:28:51', '{\n    \"surya::nav_menu_locations[side-menu]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-07-05 14:28:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '78d4c9cd-7124-4f58-913c-6f5356023834', '', '', '2025-07-05 14:28:51', '2025-07-05 14:28:51', '', 0, 'http://localhost/surya/78d4c9cd-7124-4f58-913c-6f5356023834/', 0, 'customize_changeset', '', 0),
(75, 1, '2025-07-05 14:45:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:45:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=75', 1, 'nav_menu_item', '', 0),
(81, 1, '2025-07-05 14:51:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:51:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=81', 1, 'nav_menu_item', '', 0),
(80, 1, '2025-07-05 14:51:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:51:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=80', 1, 'nav_menu_item', '', 0),
(79, 1, '2025-07-05 14:51:12', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:51:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=79', 1, 'nav_menu_item', '', 0),
(87, 1, '2025-07-05 14:59:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:59:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=87', 1, 'nav_menu_item', '', 0),
(86, 1, '2025-07-05 14:59:47', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:59:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=86', 1, 'nav_menu_item', '', 0),
(85, 1, '2025-07-05 14:59:47', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-07-05 14:59:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/surya/?p=85', 1, 'nav_menu_item', '', 0),
(97, 1, '2025-07-05 16:54:03', '2025-07-05 16:54:03', '', 'News', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2025-07-05 16:54:03', '2025-07-05 16:54:03', '', 28, 'http://localhost/surya/?p=97', 0, 'revision', '', 0),
(98, 1, '2025-07-05 17:41:48', '2025-07-05 17:41:48', '', 'Ground Zero', '', 'publish', 'closed', 'closed', '', 'ground-zero', '', '', '2025-07-05 17:41:48', '2025-07-05 17:41:48', '', 0, 'http://localhost/surya/?page_id=98', 0, 'page', '', 0),
(99, 1, '2025-07-05 17:41:48', '2025-07-05 17:41:48', '', 'Ground Zero', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2025-07-05 17:41:48', '2025-07-05 17:41:48', '', 98, 'http://localhost/surya/?p=99', 0, 'revision', '', 0),
(100, 1, '2025-07-05 17:42:21', '2025-07-05 17:42:21', '', 'Join Us', '', 'publish', 'closed', 'closed', '', 'join-us', '', '', '2025-07-05 17:42:21', '2025-07-05 17:42:21', '', 0, 'http://localhost/surya/?page_id=100', 0, 'page', '', 0),
(101, 1, '2025-07-05 17:42:21', '2025-07-05 17:42:21', '', 'Join Us', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2025-07-05 17:42:21', '2025-07-05 17:42:21', '', 100, 'http://localhost/surya/?p=101', 0, 'revision', '', 0),
(102, 1, '2025-07-05 17:42:40', '2025-07-05 17:42:40', '', 'Team', '', 'publish', 'closed', 'closed', '', 'team', '', '', '2025-07-05 17:42:40', '2025-07-05 17:42:40', '', 0, 'http://localhost/surya/?page_id=102', 0, 'page', '', 0),
(103, 1, '2025-07-05 17:42:40', '2025-07-05 17:42:40', '', 'Team', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2025-07-05 17:42:40', '2025-07-05 17:42:40', '', 102, 'http://localhost/surya/?p=103', 0, 'revision', '', 0),
(104, 1, '2025-07-05 17:42:59', '2025-07-05 17:42:59', '', 'Redsights', '', 'publish', 'closed', 'closed', '', 'redsights', '', '', '2025-07-05 17:42:59', '2025-07-05 17:42:59', '', 0, 'http://localhost/surya/?page_id=104', 0, 'page', '', 0),
(105, 1, '2025-07-05 17:42:59', '2025-07-05 17:42:59', '', 'Redsights', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2025-07-05 17:42:59', '2025-07-05 17:42:59', '', 104, 'http://localhost/surya/?p=105', 0, 'revision', '', 0),
(106, 1, '2025-07-05 17:43:21', '2025-07-05 17:43:21', '', 'Industries', '', 'publish', 'closed', 'closed', '', 'industries', '', '', '2025-07-05 17:43:21', '2025-07-05 17:43:21', '', 0, 'http://localhost/surya/?page_id=106', 0, 'page', '', 0),
(107, 1, '2025-07-05 17:43:21', '2025-07-05 17:43:21', '', 'Industries', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2025-07-05 17:43:21', '2025-07-05 17:43:21', '', 106, 'http://localhost/surya/?p=107', 0, 'revision', '', 0),
(108, 1, '2025-07-05 17:43:40', '2025-07-05 17:43:40', '', 'Offerings', '', 'publish', 'closed', 'closed', '', 'offerings', '', '', '2025-07-05 17:43:40', '2025-07-05 17:43:40', '', 0, 'http://localhost/surya/?page_id=108', 0, 'page', '', 0),
(109, 1, '2025-07-05 17:43:40', '2025-07-05 17:43:40', '', 'Offerings', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2025-07-05 17:43:40', '2025-07-05 17:43:40', '', 108, 'http://localhost/surya/?p=109', 0, 'revision', '', 0),
(110, 1, '2025-07-05 17:44:15', '2025-07-05 17:44:15', ' ', '', '', 'publish', 'closed', 'closed', '', '110', '', '', '2025-07-05 17:44:15', '2025-07-05 17:44:15', '', 0, 'http://localhost/surya/?p=110', 1, 'nav_menu_item', '', 0),
(111, 1, '2025-07-05 17:44:15', '2025-07-05 17:44:15', ' ', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2025-07-05 17:44:15', '2025-07-05 17:44:15', '', 0, 'http://localhost/surya/?p=111', 2, 'nav_menu_item', '', 0),
(112, 1, '2025-07-05 17:44:15', '2025-07-05 17:44:15', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2025-07-05 17:44:15', '2025-07-05 17:44:15', '', 0, 'http://localhost/surya/?p=112', 3, 'nav_menu_item', '', 0),
(113, 1, '2025-07-05 17:44:15', '2025-07-05 17:44:15', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2025-07-05 17:44:15', '2025-07-05 17:44:15', '', 0, 'http://localhost/surya/?p=113', 4, 'nav_menu_item', '', 0),
(114, 1, '2025-07-05 17:44:15', '2025-07-05 17:44:15', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2025-07-05 17:44:15', '2025-07-05 17:44:15', '', 0, 'http://localhost/surya/?p=114', 5, 'nav_menu_item', '', 0),
(115, 1, '2025-07-05 17:44:15', '2025-07-05 17:44:15', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2025-07-05 17:44:15', '2025-07-05 17:44:15', '', 0, 'http://localhost/surya/?p=115', 6, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(16, 'primary', 'primary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(110, 16, 0),
(111, 16, 0),
(112, 16, 0),
(113, 16, 0),
(114, 16, 0),
(115, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(16, 16, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(27, 1, 'session_tokens', 'a:1:{s:64:\"f545be9a42e1fc65daa5b5b13e9e579964673b9e1df653448bbf11fa39de329f\";a:4:{s:10:\"expiration\";i:1753029913;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36\";s:5:\"login\";i:1751820313;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '6'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '16'),
(21, 1, 'elementor_introduction', 'a:1:{s:27:\"ai-get-started-announcement\";b:1;}'),
(22, 1, 'wp_persisted_preferences', 'a:4:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:0;s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-07-05T07:47:56.668Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(23, 1, 'wp_user-settings', 'mfold=o'),
(24, 1, 'wp_user-settings-time', '1751724556'),
(25, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(26, 1, 'metaboxhidden_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$wp$2y$10$dgBiNQI9wYKH.hBV8UG6dey6nicTKPR41Dkvy4sgO5izTTCpNFMxi', 'admin', 'anup.69ghoshal@gmail.com', 'http://localhost/surya', '2025-07-04 09:24:43', '', 0, 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
