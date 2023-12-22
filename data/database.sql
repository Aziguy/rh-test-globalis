-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 29, 2023 at 04:20 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `globalis_rh_test_wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `grh_commentmeta`
--

CREATE TABLE `grh_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grh_comments`
--

CREATE TABLE `grh_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grh_links`
--

CREATE TABLE `grh_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grh_options`
--

CREATE TABLE `grh_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `grh_options`
--

INSERT INTO `grh_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/globalis_rh_test_wordpress/web/wpcb', 'yes'),
(2, 'home', 'http://localhost/globalis_rh_test_wordpress/web/wpcb', 'yes'),
(3, 'blogname', 'Globalis\\Test\\WordPress', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tech@globalis-ms.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:116:{s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:54:\"index.php?post_type=events&name=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:48:\"index.php?post_type=events&name=$matches[1]&tb=1\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?post_type=events&name=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?post_type=events&name=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:60:\"index.php?post_type=events&name=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"registrations/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"registrations/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"registrations/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"registrations/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"registrations/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"registrations/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"registrations/([^/]+)/embed/?$\";s:61:\"index.php?post_type=registrations&name=$matches[1]&embed=true\";s:34:\"registrations/([^/]+)/trackback/?$\";s:55:\"index.php?post_type=registrations&name=$matches[1]&tb=1\";s:42:\"registrations/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?post_type=registrations&name=$matches[1]&paged=$matches[2]\";s:49:\"registrations/([^/]+)/comment-page-([0-9]{1,})/?$\";s:68:\"index.php?post_type=registrations&name=$matches[1]&cpage=$matches[2]\";s:38:\"registrations/([^/]+)(?:/([0-9]+))?/?$\";s:67:\"index.php?post_type=registrations&name=$matches[1]&page=$matches[2]\";s:30:\"registrations/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"registrations/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"registrations/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"registrations/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"registrations/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"registrations/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:31:\"query-monitor/query-monitor.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:35:\"autodescription/autodescription.php\";i:3;s:17:\"dynamo/dynamo.php\";i:4;s:63:\"limit-login-attempts-reloaded/limit-login-attempts-reloaded.php\";i:5;s:13:\"soil/soil.php\";i:6;s:33:\"user-switching/user-switching.php\";i:7;s:27:\"wp-crontrol/wp-crontrol.php\";i:8;s:37:\"wp-cubi-imagemin/wp-cubi-imagemin.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp-cubi-debug-theme', 'yes'),
(41, 'stylesheet', 'wp-cubi-debug-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Paris', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1700914090', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'grh_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"view_query_monitor\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:0:{}', 'yes'),
(105, 'bedrock_autoloader', 'a:2:{s:7:\"plugins\";a:3:{s:45:\"10-wp-cubi-admin-bar/10-wp-cubi-admin-bar.php\";a:14:{s:4:\"Name\";s:17:\"wp-cubi-admin-bar\";s:9:\"PluginURI\";s:90:\"https://github.com/globalis-ms/wp-cubi/blob/master/web/app/mu-modules/10-wp-cubi-admin-bar\";s:7:\"Version\";s:0:\"\";s:11:\"Description\";s:70:\"Add application, system and environment informations to your admin bar\";s:6:\"Author\";s:38:\"Pierre Dargham, Globalis Media Systems\";s:9:\"AuthorURI\";s:28:\"https://www.globalis-ms.com/\";s:10:\"TextDomain\";s:0:\"\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:9:\"UpdateURI\";s:0:\"\";s:5:\"Title\";s:17:\"wp-cubi-admin-bar\";s:10:\"AuthorName\";s:38:\"Pierre Dargham, Globalis Media Systems\";}s:41:\"00-wp-cubi-core-mu/00-wp-cubi-core-mu.php\";a:14:{s:4:\"Name\";s:15:\"wp-cubi-core-mu\";s:9:\"PluginURI\";s:88:\"https://github.com/globalis-ms/wp-cubi/blob/master/web/app/mu-modules/00-wp-cubi-core-mu\";s:7:\"Version\";s:0:\"\";s:11:\"Description\";s:43:\"Collection of wp-cubi core must-use plugins\";s:6:\"Author\";s:38:\"Pierre Dargham, Globalis Media Systems\";s:9:\"AuthorURI\";s:28:\"https://www.globalis-ms.com/\";s:10:\"TextDomain\";s:0:\"\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:9:\"UpdateURI\";s:0:\"\";s:5:\"Title\";s:15:\"wp-cubi-core-mu\";s:10:\"AuthorName\";s:38:\"Pierre Dargham, Globalis Media Systems\";}s:43:\"20-wp-cubi-webhooks/20-wp-cubi-webhooks.php\";a:14:{s:4:\"Name\";s:16:\"wp-cubi-webhooks\";s:9:\"PluginURI\";s:89:\"https://github.com/globalis-ms/wp-cubi/blob/master/web/app/mu-modules/20-wp-cubi-webhooks\";s:7:\"Version\";s:0:\"\";s:11:\"Description\";s:35:\"Add wp-cubi webhooks to application\";s:6:\"Author\";s:38:\"Pierre Dargham, Globalis Media Systems\";s:9:\"AuthorURI\";s:28:\"https://www.globalis-ms.com/\";s:10:\"TextDomain\";s:0:\"\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:9:\"UpdateURI\";s:0:\"\";s:5:\"Title\";s:16:\"wp-cubi-webhooks\";s:10:\"AuthorName\";s:38:\"Pierre Dargham, Globalis Media Systems\";}}s:5:\"count\";i:3;}', 'yes'),
(106, 'cron', 'a:9:{i:1685370066;a:1:{s:28:\"tsf_sitemap_cron_hook_before\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1685370067;a:1:{s:21:\"tsf_sitemap_cron_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1685372893;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1685405293;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1685405399;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1685448493;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1685448599;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1685449210;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:0:{}', 'yes'),
(117, 'widget_recent-comments', 'a:0:{}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'wp-cubi-site-url-hash', 'aHR0cDovL2xvY2FsaG9zdC9nbG9iYWxpc19yaF90ZXN0X3dvcmRwcmVzcy93ZWIv', 'yes'),
(123, 'WPLANG', '', 'yes'),
(125, '_site_transient_update_plugins', 'O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1685362107;s:15:\"version_checked\";s:5:\"6.2.2\";s:7:\"updates\";a:0:{}}', 'no'),
(127, '_site_transient_update_themes', 'O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1685362119;s:15:\"version_checked\";s:5:\"6.2.2\";s:7:\"updates\";a:0:{}}', 'no'),
(128, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(129, 'autodescription-updates-cache', 'a:2:{s:26:\"check_seo_plugin_conflicts\";i:0;s:15:\"settings_notice\";s:0:\"\";}', 'yes'),
(130, 'wp_crontrol_paused', 'a:0:{}', 'yes'),
(132, 'the_seo_framework_initial_db_version', '4270', 'no'),
(133, 'autodescription-site-settings', 'a:125:{s:22:\"display_seo_bar_tables\";i:1;s:21:\"display_pixel_counter\";i:1;s:25:\"display_character_counter\";i:1;s:23:\"alter_search_query_type\";s:8:\"in_query\";s:24:\"alter_archive_query_type\";s:8:\"in_query\";s:16:\"canonical_scheme\";s:4:\"http\";s:15:\"prev_next_posts\";i:1;s:18:\"prev_next_archives\";i:1;s:19:\"prev_next_frontpage\";i:1;s:17:\"timestamps_format\";s:1:\"1\";s:19:\"disabled_post_types\";a:2:{s:6:\"events\";i:1;s:13:\"registrations\";i:1;}s:15:\"title_separator\";s:6:\"hyphen\";s:16:\"title_strip_tags\";i:1;s:10:\"site_title\";s:0:\"\";s:14:\"title_location\";s:5:\"right\";s:16:\"auto_description\";i:1;s:27:\"auto_descripton_html_method\";s:4:\"fast\";s:14:\"homepage_title\";s:0:\"\";s:20:\"homepage_description\";s:0:\"\";s:22:\"homepage_title_tagline\";s:0:\"\";s:16:\"homepage_tagline\";i:1;s:19:\"home_title_location\";s:5:\"right\";s:17:\"homepage_og_title\";s:0:\"\";s:23:\"homepage_og_description\";s:0:\"\";s:22:\"homepage_twitter_title\";s:0:\"\";s:28:\"homepage_twitter_description\";s:0:\"\";s:25:\"homepage_social_image_url\";s:0:\"\";s:24:\"homepage_social_image_id\";i:0;s:7:\"og_tags\";i:1;s:13:\"facebook_tags\";i:1;s:12:\"twitter_tags\";i:1;s:14:\"oembed_scripts\";i:1;s:26:\"social_title_rem_additions\";i:1;s:19:\"social_image_fb_url\";s:0:\"\";s:18:\"social_image_fb_id\";i:0;s:11:\"theme_color\";s:0:\"\";s:14:\"facebook_appid\";s:0:\"\";s:18:\"facebook_publisher\";s:0:\"\";s:15:\"facebook_author\";s:0:\"\";s:12:\"twitter_card\";s:19:\"summary_large_image\";s:12:\"twitter_site\";s:0:\"\";s:15:\"twitter_creator\";s:0:\"\";s:23:\"oembed_use_social_image\";i:1;s:20:\"oembed_remove_author\";i:1;s:17:\"post_publish_time\";i:1;s:16:\"post_modify_time\";i:1;s:19:\"ld_json_breadcrumbs\";i:1;s:17:\"ld_json_searchbox\";i:1;s:16:\"knowledge_output\";i:1;s:14:\"knowledge_type\";s:12:\"organization\";s:14:\"knowledge_name\";s:0:\"\";s:14:\"knowledge_logo\";i:1;s:18:\"knowledge_logo_url\";s:0:\"\";s:17:\"knowledge_logo_id\";i:0;s:25:\"advanced_query_protection\";i:1;s:24:\"set_copyright_directives\";i:1;s:18:\"max_snippet_length\";i:-1;s:17:\"max_image_preview\";s:5:\"large\";s:17:\"max_video_preview\";i:-1;s:18:\"noindex_post_types\";a:2:{s:6:\"events\";i:0;s:13:\"registrations\";i:0;}s:18:\"noindex_taxonomies\";a:3:{s:8:\"category\";i:0;s:8:\"post_tag\";i:0;s:11:\"post_format\";i:1;}s:12:\"date_noindex\";i:1;s:14:\"search_noindex\";i:1;s:19:\"nofollow_post_types\";a:2:{s:6:\"events\";i:0;s:13:\"registrations\";i:0;}s:19:\"nofollow_taxonomies\";a:3:{s:8:\"category\";i:0;s:8:\"post_tag\";i:0;s:11:\"post_format\";i:0;}s:20:\"noarchive_post_types\";a:2:{s:6:\"events\";i:0;s:13:\"registrations\";i:0;}s:20:\"noarchive_taxonomies\";a:3:{s:8:\"category\";i:0;s:8:\"post_tag\";i:0;s:11:\"post_format\";i:0;}s:19:\"google_verification\";s:0:\"\";s:17:\"bing_verification\";s:0:\"\";s:19:\"yandex_verification\";s:0:\"\";s:18:\"baidu_verification\";s:0:\"\";s:17:\"pint_verification\";s:0:\"\";s:15:\"sitemaps_output\";i:1;s:19:\"sitemap_query_limit\";i:1000;s:13:\"cache_sitemap\";i:1;s:15:\"sitemaps_robots\";i:1;s:17:\"sitemaps_modified\";i:1;s:13:\"ping_use_cron\";i:1;s:11:\"ping_google\";i:1;s:9:\"ping_bing\";i:1;s:14:\"sitemap_styles\";i:1;s:18:\"sitemap_color_main\";s:7:\"#222222\";s:20:\"sitemap_color_accent\";s:7:\"#00a0d2\";s:12:\"sitemap_logo\";i:1;s:16:\"sitemap_logo_url\";s:0:\"\";s:15:\"sitemap_logo_id\";i:0;s:16:\"excerpt_the_feed\";i:1;s:15:\"source_the_feed\";i:1;s:18:\"alter_search_query\";i:0;s:19:\"alter_archive_query\";i:0;s:23:\"display_seo_bar_metabox\";i:0;s:15:\"seo_bar_symbols\";i:0;s:19:\"title_rem_additions\";i:0;s:18:\"title_rem_prefixes\";i:0;s:14:\"author_noindex\";i:0;s:12:\"site_noindex\";i:0;s:15:\"author_nofollow\";i:0;s:13:\"date_nofollow\";i:0;s:15:\"search_nofollow\";i:0;s:13:\"site_nofollow\";i:0;s:16:\"author_noarchive\";i:0;s:14:\"date_noarchive\";i:0;s:16:\"search_noarchive\";i:0;s:14:\"site_noarchive\";i:0;s:13:\"paged_noindex\";i:0;s:18:\"home_paged_noindex\";i:0;s:16:\"homepage_noindex\";i:0;s:17:\"homepage_nofollow\";i:0;s:18:\"homepage_noarchive\";i:0;s:13:\"shortlink_tag\";i:0;s:19:\"oembed_use_og_title\";i:0;s:14:\"multi_og_image\";i:0;s:23:\"ping_use_cron_prerender\";i:0;s:14:\"index_the_feed\";i:0;s:19:\"disabled_taxonomies\";a:0:{}s:3:\"pta\";a:0:{}s:18:\"knowledge_facebook\";s:0:\"\";s:17:\"knowledge_twitter\";s:0:\"\";s:15:\"knowledge_gplus\";s:0:\"\";s:19:\"knowledge_instagram\";s:0:\"\";s:17:\"knowledge_youtube\";s:0:\"\";s:19:\"knowledge_pinterest\";s:0:\"\";s:20:\"knowledge_soundcloud\";s:0:\"\";s:16:\"knowledge_tumblr\";s:0:\"\";s:18:\"knowledge_linkedin\";s:0:\"\";}', 'yes'),
(134, 'the_seo_framework_upgraded_db_version', '4270', 'yes'),
(135, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:17:\"bad_response_code\";a:1:{i:0;s:9:\"Forbidden\";}}', 'yes'),
(137, 'theme_mods_wp-cubi-debug-theme', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(140, 'finished_updating_comment_type', '1', 'yes'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(143, 'acf_version', '6.1.6', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `grh_postmeta`
--

CREATE TABLE `grh_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `grh_postmeta`
--

INSERT INTO `grh_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 6, '_edit_last', '1'),
(4, 6, '_edit_lock', '1685363727:1'),
(5, 13, '_edit_last', '1'),
(6, 13, '_edit_lock', '1685365696:1'),
(7, 14, '_wp_attached_file', '2023/05/test.pdf'),
(8, 14, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:5796;}'),
(9, 13, 'event_date', '20230531'),
(10, 13, '_event_date', 'field_64749adbfcbda'),
(11, 13, 'event_time', '10:00:00'),
(12, 13, '_event_time', 'field_64749b6868643'),
(13, 13, 'event_pdf_entrance_ticket', '14'),
(14, 13, '_event_pdf_entrance_ticket', 'field_64749bea84f58'),
(15, 16, '_edit_last', '1'),
(16, 16, '_edit_lock', '1685365693:1'),
(17, 29, '_edit_last', '1'),
(18, 29, '_edit_lock', '1685369839:1'),
(19, 29, 'registration_event_id', '13'),
(20, 29, '_registration_event_id', 'field_64749cde33fd7'),
(21, 29, 'registration_last_name', 'Foo'),
(22, 29, '_registration_last_name', 'field_64749cfff238e'),
(23, 29, 'registration_first_name', 'Bar'),
(24, 29, '_registration_first_name', 'field_64749d4bf238f'),
(25, 29, 'registration_email', 'foo.bar@example.com'),
(26, 29, '_registration_email', 'field_64749d780cd14'),
(27, 29, 'registration_phone', '+33600000000'),
(28, 29, '_registration_phone', 'field_64749d920cd15'),
(29, 30, '_edit_last', '1'),
(30, 30, 'event_date', '20240501'),
(31, 30, '_event_date', 'field_64749adbfcbda'),
(32, 30, 'event_time', '15:00:00'),
(33, 30, '_event_time', 'field_64749b6868643'),
(34, 30, 'event_pdf_entrance_ticket', '14'),
(35, 30, '_event_pdf_entrance_ticket', 'field_64749bea84f58'),
(36, 30, '_edit_lock', '1685368336:1'),
(37, 31, '_edit_last', '1'),
(38, 31, '_edit_lock', '1685369836:1'),
(39, 31, 'registration_event_id', '13'),
(40, 31, '_registration_event_id', 'field_64749cde33fd7'),
(41, 31, 'registration_last_name', 'Lorem'),
(42, 31, '_registration_last_name', 'field_64749cfff238e'),
(43, 31, 'registration_first_name', 'Ipsum'),
(44, 31, '_registration_first_name', 'field_64749d4bf238f'),
(45, 31, 'registration_email', 'lorem.ipsum@example.com'),
(46, 31, '_registration_email', 'field_64749d780cd14'),
(47, 31, 'registration_phone', ''),
(48, 31, '_registration_phone', 'field_64749d920cd15'),
(49, 32, '_edit_last', '1'),
(50, 32, 'registration_event_id', '30'),
(51, 32, '_registration_event_id', 'field_64749cde33fd7'),
(52, 32, 'registration_last_name', 'Dupont'),
(53, 32, '_registration_last_name', 'field_64749cfff238e'),
(54, 32, 'registration_first_name', 'Dupond'),
(55, 32, '_registration_first_name', 'field_64749d4bf238f'),
(56, 32, 'registration_email', 'dupont.dupond@example.com'),
(57, 32, '_registration_email', 'field_64749d780cd14'),
(58, 32, 'registration_phone', '0111223344'),
(59, 32, '_registration_phone', 'field_64749d920cd15'),
(60, 32, '_edit_lock', '1685369832:1'),
(61, 33, '_edit_last', '1'),
(62, 33, 'registration_event_id', '13'),
(63, 33, '_registration_event_id', 'field_64749cde33fd7'),
(64, 33, 'registration_last_name', 'Lambert'),
(65, 33, '_registration_last_name', 'field_64749cfff238e'),
(66, 33, 'registration_first_name', 'Gérard'),
(67, 33, '_registration_first_name', 'field_64749d4bf238f'),
(68, 33, 'registration_email', 'gerard.lambert@example.com'),
(69, 33, '_registration_email', 'field_64749d780cd14'),
(70, 33, 'registration_phone', '0612123434'),
(71, 33, '_registration_phone', 'field_64749d920cd15'),
(72, 33, '_edit_lock', '1685369824:1'),
(73, 33, '_wp_old_slug', 'auto-draft'),
(74, 32, '_wp_old_slug', '32'),
(75, 31, '_wp_old_slug', '67816'),
(76, 29, '_wp_old_slug', '15451'),
(77, 34, '_edit_last', '1'),
(78, 34, 'registration_event_id', '13'),
(79, 34, '_registration_event_id', 'field_64749cde33fd7'),
(80, 34, 'registration_last_name', 'Donnais'),
(81, 34, '_registration_last_name', 'field_64749cfff238e'),
(82, 34, 'registration_first_name', 'Richard'),
(83, 34, '_registration_first_name', 'field_64749d4bf238f'),
(84, 34, 'registration_email', 'richard.donnais@example.com'),
(85, 34, '_registration_email', 'field_64749d780cd14'),
(86, 34, 'registration_phone', ''),
(87, 34, '_registration_phone', 'field_64749d920cd15'),
(88, 34, '_edit_lock', '1685369901:1');

-- --------------------------------------------------------

--
-- Table structure for table `grh_posts`
--

CREATE TABLE `grh_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `grh_posts`
--

INSERT INTO `grh_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(4, 1, '2023-05-29 14:20:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:20:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&p=4', 0, 'registrations', '', 0),
(5, 1, '2023-05-29 14:21:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:21:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&p=5', 0, 'registrations', '', 0),
(6, 1, '2023-05-29 14:31:16', '2023-05-29 12:31:16', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"events\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";b:0;}', 'Event details', 'event-details', 'publish', 'closed', 'closed', '', 'group_64749adb400dd', '', '', '2023-05-29 14:36:34', '2023-05-29 12:36:34', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=acf-field-group&#038;p=6', 50, 'acf-field-group', '', 0),
(7, 1, '2023-05-29 14:31:16', '2023-05-29 12:31:16', 'a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"Y-m-d\";s:13:\"return_format\";s:5:\"Y-m-d\";s:9:\"first_day\";i:1;}', 'Date', 'event_date', 'publish', 'closed', 'closed', '', 'field_64749adbfcbda', '', '', '2023-05-29 14:33:27', '2023-05-29 12:33:27', '', 6, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=acf-field&#038;p=7', 0, 'acf-field', '', 0),
(8, 1, '2023-05-29 14:31:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:31:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=events&p=8', 0, 'events', '', 0),
(9, 1, '2023-05-29 14:33:27', '2023-05-29 12:33:27', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"H:i\";s:13:\"return_format\";s:3:\"H:i\";}', 'Time', 'event_time', 'publish', 'closed', 'closed', '', 'field_64749b6868643', '', '', '2023-05-29 14:33:27', '2023-05-29 12:33:27', '', 6, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=acf-field&p=9', 1, 'acf-field', '', 0),
(10, 1, '2023-05-29 14:33:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:33:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=events&p=10', 0, 'events', '', 0),
(11, 1, '2023-05-29 14:36:34', '2023-05-29 12:36:34', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:3:\"pdf\";}', 'PDF Entrance ticket', 'event_pdf_entrance_ticket', 'publish', 'closed', 'closed', '', 'field_64749bea84f58', '', '', '2023-05-29 14:36:34', '2023-05-29 12:36:34', '', 6, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=acf-field&p=11', 2, 'acf-field', '', 0),
(12, 1, '2023-05-29 14:36:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:36:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=events&p=12', 0, 'events', '', 0),
(13, 1, '2023-05-29 14:37:22', '2023-05-29 12:37:22', '', 'Event 1', '', 'publish', 'closed', 'closed', '', 'event-1', '', '', '2023-05-29 14:37:22', '2023-05-29 12:37:22', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=events&#038;p=13', 0, 'events', '', 0),
(14, 1, '2023-05-29 14:37:19', '2023-05-29 12:37:19', '', 'test', '', 'inherit', 'closed', 'closed', '', 'test', '', '', '2023-05-29 14:37:19', '2023-05-29 12:37:19', '', 13, 'http://localhost/globalis_rh_test_wordpress/web/media/2023/05/test.pdf', 0, 'attachment', 'application/pdf', 0),
(15, 1, '2023-05-29 14:37:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:37:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&p=15', 0, 'registrations', '', 0),
(16, 1, '2023-05-29 14:38:44', '2023-05-29 12:38:44', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"registrations\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";b:0;}', 'Registration details', 'registration-details', 'publish', 'closed', 'closed', '', 'group_64749ca2c7b28', '', '', '2023-05-29 14:46:14', '2023-05-29 12:46:14', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=acf-field-group&#038;p=16', 50, 'acf-field-group', '', 0),
(18, 1, '2023-05-29 14:38:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:38:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&p=18', 0, 'registrations', '', 0),
(19, 1, '2023-05-29 14:39:17', '2023-05-29 12:39:17', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"events\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:2:\"id\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:1;}', 'Event', 'registration_event_id', 'publish', 'closed', 'closed', '', 'field_64749cde33fd7', '', '', '2023-05-29 14:39:17', '2023-05-29 12:39:17', '', 16, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2023-05-29 14:39:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:39:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&p=20', 0, 'registrations', '', 0),
(21, 1, '2023-05-29 14:41:00', '2023-05-29 12:41:00', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";i:150;s:11:\"placeholder\";s:11:\"Exampe: Foo\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Last name', 'registration_last_name', 'publish', 'closed', 'closed', '', 'field_64749cfff238e', '', '', '2023-05-29 14:41:00', '2023-05-29 12:41:00', '', 16, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=acf-field&p=21', 1, 'acf-field', '', 0),
(22, 1, '2023-05-29 14:41:00', '2023-05-29 12:41:00', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";i:150;s:11:\"placeholder\";s:11:\"Exampe: Bar\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'First name', 'registration_first_name', 'publish', 'closed', 'closed', '', 'field_64749d4bf238f', '', '', '2023-05-29 14:41:00', '2023-05-29 12:41:00', '', 16, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=acf-field&p=22', 2, 'acf-field', '', 0),
(23, 1, '2023-05-29 14:41:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:41:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&p=23', 0, 'registrations', '', 0),
(24, 1, '2023-05-29 14:42:27', '2023-05-29 12:42:27', 'a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:28:\"Example: foo.bar@example.com\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email', 'registration_email', 'publish', 'closed', 'closed', '', 'field_64749d780cd14', '', '', '2023-05-29 14:42:27', '2023-05-29 12:42:27', '', 16, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=acf-field&p=24', 3, 'acf-field', '', 0),
(25, 1, '2023-05-29 14:42:27', '2023-05-29 12:42:27', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";i:20;s:11:\"placeholder\";s:21:\"Example: +33612345678\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Phone (optional)', 'registration_phone', 'publish', 'closed', 'closed', '', 'field_64749d920cd15', '', '', '2023-05-29 14:46:14', '2023-05-29 12:46:14', '', 16, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=acf-field&#038;p=25', 4, 'acf-field', '', 0),
(26, 1, '2023-05-29 14:42:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:42:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&p=26', 0, 'registrations', '', 0),
(27, 1, '2023-05-29 14:42:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:42:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&p=27', 0, 'registrations', '', 0),
(28, 1, '2023-05-29 14:43:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-29 14:43:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=events&p=28', 0, 'events', '', 0),
(29, 1, '2023-05-29 14:46:20', '2023-05-29 12:46:20', '', '#29 (Foo Bar)', '', 'publish', 'closed', 'closed', '', '29-foo-bar', '', '', '2023-05-29 16:19:43', '2023-05-29 14:19:43', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&#038;p=29', 0, 'registrations', '', 0),
(30, 1, '2023-05-29 15:54:40', '2023-05-29 13:54:40', '', 'Event 2', '', 'publish', 'closed', 'closed', '', 'event-2', '', '', '2023-05-29 15:54:40', '2023-05-29 13:54:40', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=events&#038;p=30', 0, 'events', '', 0),
(31, 1, '2023-05-29 14:57:50', '2023-05-29 12:57:50', '', '#31 (Lorem Ipsum)', '', 'publish', 'closed', 'closed', '', '31-lorem-ipsum', '', '', '2023-05-29 16:19:40', '2023-05-29 14:19:40', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&#038;p=31', 0, 'registrations', '', 0),
(32, 1, '2023-05-29 15:38:54', '2023-05-29 13:38:54', '', '#32 (Dupont Dupond)', '', 'publish', 'closed', 'closed', '', '32-dupont-dupond', '', '', '2023-05-29 16:19:34', '2023-05-29 14:19:34', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&#038;p=32', 0, 'registrations', '', 0),
(33, 1, '2023-05-29 16:18:23', '2023-05-29 14:18:23', '', '#33 (Lambert Gérard)', '', 'publish', 'closed', 'closed', '', '33-lambert-gerard', '', '', '2023-05-29 16:19:25', '2023-05-29 14:19:25', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&#038;p=33', 0, 'registrations', '', 0),
(34, 1, '2023-05-29 16:20:37', '2023-05-29 14:20:37', '', '#34 (Donnais Richard)', '', 'publish', 'closed', 'closed', '', '34-donnais-richard', '', '', '2023-05-29 16:20:37', '2023-05-29 14:20:37', '', 0, 'http://localhost/globalis_rh_test_wordpress/web/?post_type=registrations&#038;p=34', 0, 'registrations', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `grh_termmeta`
--

CREATE TABLE `grh_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grh_terms`
--

CREATE TABLE `grh_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `grh_terms`
--

INSERT INTO `grh_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `grh_term_relationships`
--

CREATE TABLE `grh_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `grh_term_relationships`
--

INSERT INTO `grh_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `grh_term_taxonomy`
--

CREATE TABLE `grh_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `grh_term_taxonomy`
--

INSERT INTO `grh_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grh_usermeta`
--

CREATE TABLE `grh_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `grh_usermeta`
--

INSERT INTO `grh_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'username'),
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
(12, 1, 'grh_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'grh_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"28af63e7bfc9d81114f2a3ea9a36afa32a1dcc2b7be811c940387c92c63edbeb\";a:4:{s:10:\"expiration\";i:1685534999;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36\";s:5:\"login\";i:1685362199;}}'),
(17, 1, 'grh_user-settings', 'libraryContent=browse'),
(18, 1, 'grh_user-settings-time', '1685363837');

-- --------------------------------------------------------

--
-- Table structure for table `grh_users`
--

CREATE TABLE `grh_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `grh_users`
--

INSERT INTO `grh_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'username', '$2y$10$AIoNtnGgEn.oIVyGIi34IesFLTuf1zjPFuROoVlG8bly725Uff4iC', 'username', 'tech@globalis-ms.com', 'http://localhost/globalis_rh_test_wordpress/web/wpcb', '2023-05-29 12:08:10', '', 0, 'username');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grh_commentmeta`
--
ALTER TABLE `grh_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `grh_comments`
--
ALTER TABLE `grh_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `grh_links`
--
ALTER TABLE `grh_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `grh_options`
--
ALTER TABLE `grh_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `grh_postmeta`
--
ALTER TABLE `grh_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `grh_posts`
--
ALTER TABLE `grh_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `grh_termmeta`
--
ALTER TABLE `grh_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `grh_terms`
--
ALTER TABLE `grh_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `grh_term_relationships`
--
ALTER TABLE `grh_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `grh_term_taxonomy`
--
ALTER TABLE `grh_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `grh_usermeta`
--
ALTER TABLE `grh_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `grh_users`
--
ALTER TABLE `grh_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grh_commentmeta`
--
ALTER TABLE `grh_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grh_comments`
--
ALTER TABLE `grh_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grh_links`
--
ALTER TABLE `grh_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grh_options`
--
ALTER TABLE `grh_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `grh_postmeta`
--
ALTER TABLE `grh_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `grh_posts`
--
ALTER TABLE `grh_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `grh_termmeta`
--
ALTER TABLE `grh_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grh_terms`
--
ALTER TABLE `grh_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grh_term_taxonomy`
--
ALTER TABLE `grh_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grh_usermeta`
--
ALTER TABLE `grh_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `grh_users`
--
ALTER TABLE `grh_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
