-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2018 at 08:41 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fixmyhome`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 10, 'rating', '5'),
(2, 10, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-16 20:04:05', '2017-12-16 20:04:05', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 105, 'WooCommerce', '', '', '', '2017-12-21 16:44:45', '2017-12-21 16:44:45', 'Awaiting check payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 105, 'admin', 'areebvohra@gmail.com', '', '', '2017-12-21 16:54:05', '2017-12-21 16:54:05', 'Order status changed from On hold to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 106, 'ali', 'alikhan@gmail.com', '', '', '2017-12-21 16:56:20', '2017-12-21 16:56:20', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 105, 'admin', 'areebvohra@gmail.com', '', '', '2017-12-21 17:08:51', '2017-12-21 17:08:51', 'Order status changed from Processing to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 105, 'admin', 'areebvohra@gmail.com', '', '', '2017-12-21 17:09:03', '2017-12-21 17:09:03', 'Order status changed from Completed to Pending payment.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 106, 'ali', 'alikhan@gmail.com', '', '', '2017-12-21 17:10:29', '2017-12-21 17:10:29', 'Order status changed from Processing to Pending payment.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 106, 'ali', 'alikhan@gmail.com', '', '', '2017-12-21 17:15:02', '2017-12-21 17:15:02', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 105, 'admin', 'areebvohra@gmail.com', '', '', '2017-12-21 17:15:24', '2017-12-21 17:15:24', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 87, 'abbas', 'abas@gmail.com', '', '::1', '2017-12-22 05:23:39', '2017-12-22 05:23:39', 'very helful', 0, '0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0', '', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wp_datalist`
--

CREATE TABLE `wp_datalist` (
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `full_content` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/FixMyHome', 'yes'),
(2, 'home', 'http://localhost/FixMyHome', 'yes'),
(3, 'blogname', 'Fix My Home', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'areebvohra@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:186:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"vc_grid_item/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"vc_grid_item/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"vc_grid_item/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"vc_grid_item/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"vc_grid_item/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"vc_grid_item/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"vc_grid_item/([^/]+)/embed/?$\";s:45:\"index.php?vc_grid_item=$matches[1]&embed=true\";s:33:\"vc_grid_item/([^/]+)/trackback/?$\";s:39:\"index.php?vc_grid_item=$matches[1]&tb=1\";s:41:\"vc_grid_item/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?vc_grid_item=$matches[1]&paged=$matches[2]\";s:48:\"vc_grid_item/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?vc_grid_item=$matches[1]&cpage=$matches[2]\";s:38:\"vc_grid_item/([^/]+)/wc-api(/(.*))?/?$\";s:53:\"index.php?vc_grid_item=$matches[1]&wc-api=$matches[3]\";s:44:\"vc_grid_item/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"vc_grid_item/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"vc_grid_item/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?vc_grid_item=$matches[1]&page=$matches[2]\";s:29:\"vc_grid_item/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"vc_grid_item/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"vc_grid_item/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"vc_grid_item/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"vc_grid_item/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"vc_grid_item/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"vendor/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?yith_shop_vendor=$matches[1]&feed=$matches[2]\";s:42:\"vendor/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?yith_shop_vendor=$matches[1]&feed=$matches[2]\";s:23:\"vendor/([^/]+)/embed/?$\";s:49:\"index.php?yith_shop_vendor=$matches[1]&embed=true\";s:35:\"vendor/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?yith_shop_vendor=$matches[1]&paged=$matches[2]\";s:17:\"vendor/([^/]+)/?$\";s:38:\"index.php?yith_shop_vendor=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=4&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:19:\"bookings(/(.*))?/?$\";s:31:\"index.php?&bookings=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\"(.?.+?)/my-downloads(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&my-downloads=$matches[3]\";s:34:\"(.?.+?)/become-a-worker(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&become-a-worker=$matches[3]\";s:27:\"(.?.+?)/bookings(/(.*))?/?$\";s:51:\"index.php?pagename=$matches[1]&bookings=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:8:{i:0;s:29:\"gravityforms/gravityforms.php\";i:1;s:37:\"admin-menu-editor-pro/menu-editor.php\";i:2;s:27:\"js_composer/js_composer.php\";i:4;s:71:\"woocommerce-gravityforms-product-addons/gravityforms-product-addons.php\";i:5;s:65:\"woocommerce-multistep-checkout/woocommerce-multistep-checkout.php\";i:6;s:27:\"woocommerce/woocommerce.php\";i:7;s:50:\"yith-woocommerce-customize-myaccount-page/init.php\";i:8;s:46:\"yith-woocommerce-multi-vendor-premium/init.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:67:\"C:\\xampp\\htdocs\\FixMyHome/wp-content/themes/shop-isle/functions.php\";i:2;s:63:\"C:\\xampp\\htdocs\\FixMyHome/wp-content/themes/shop-isle/style.css\";i:3;s:82:\"C:\\xampp\\htdocs\\FixMyHome/wp-content/plugins/admin-menu-editor-pro/menu-editor.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'shop-isle', 'yes'),
(41, 'stylesheet', 'shop-isle', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'customer', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '4', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:139:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"ure_edit_roles\";b:1;s:16:\"ure_create_roles\";b:1;s:16:\"ure_delete_roles\";b:1;s:23:\"ure_create_capabilities\";b:1;s:23:\"ure_delete_capabilities\";b:1;s:18:\"ure_manage_options\";b:1;s:15:\"ure_reset_roles\";b:1;s:13:\"edit_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"edit_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:16:\"edit_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;s:15:\"manage_bookings\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:110:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:17:\"edit_shop_webhook\";b:1;s:17:\"read_shop_webhook\";b:1;s:19:\"delete_shop_webhook\";b:1;s:18:\"edit_shop_webhooks\";b:1;s:25:\"edit_others_shop_webhooks\";b:1;s:21:\"publish_shop_webhooks\";b:1;s:26:\"read_private_shop_webhooks\";b:1;s:20:\"delete_shop_webhooks\";b:1;s:28:\"delete_private_shop_webhooks\";b:1;s:30:\"delete_published_shop_webhooks\";b:1;s:27:\"delete_others_shop_webhooks\";b:1;s:26:\"edit_private_shop_webhooks\";b:1;s:28:\"edit_published_shop_webhooks\";b:1;s:25:\"manage_shop_webhook_terms\";b:1;s:23:\"edit_shop_webhook_terms\";b:1;s:25:\"delete_shop_webhook_terms\";b:1;s:25:\"assign_shop_webhook_terms\";b:1;s:15:\"manage_bookings\";b:1;}}s:11:\"yith_vendor\";a:2:{s:4:\"name\";s:6:\"Worker\";s:12:\"capabilities\";a:17:{s:4:\"read\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:15:\"delete_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"assign_product_terms\";b:1;s:12:\"upload_files\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"manage_vendor_store\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:24:\"view_woocommerce_reports\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"sidebar-footer-area-1\";a:0:{}s:21:\"sidebar-footer-area-2\";a:0:{}s:21:\"sidebar-footer-area-3\";N;s:21:\"sidebar-footer-area-4\";N;s:30:\"shop-isle-sidebar-shop-archive\";N;s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:10:{i:1513922210;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1513925148;a:2:{s:44:\"puc_cron_check_updates-admin-menu-editor-pro\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1513926885;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1513929846;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1513968348;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1513973074;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1513973864;a:1:{s:17:\"gravityforms_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1513987200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1514851200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1513454691;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(118, 'can_compress_scripts', '1', 'no'),
(119, 'current_theme', 'Shop Isle', 'yes'),
(120, 'theme_mods_shop-isle', 'a:24:{i:0;b:0;s:16:\"shop_isle_slider\";s:649:\"[{\"image_url\":\"http:\\/\\/localhost\\/FixMyHome\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide1.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5a357c6a43d91\"},{\"image_url\":\"http:\\/\\/localhost\\/FixMyHome\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide2.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5a357c6a43d91\"},{\"image_url\":\"http:\\/\\/localhost\\/FixMyHome\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/slide3.jpg\",\"link\":\"#\",\"text\":\"Shop Isle\",\"subtext\":\"WooCommerce Theme\",\"label\":\"Read more\",\"id\":\"shop_isle_5a357c6a43d91\"}]\";s:17:\"shop_isle_banners\";s:952:\"[{\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"image_url\":\"http:\\/\\/localhost\\/FixMyHome\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner1.jpg\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_banners\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"image_url\":\"http:\\/\\/localhost\\/FixMyHome\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner2.jpg\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_banners\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"image_url\":\"http:\\/\\/localhost\\/FixMyHome\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/banner3.jpg\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_banners\",\"shortcode\":\"undefined\",\"description\":\"undefined\"}]\";s:17:\"shop_isle_socials\";s:973:\"[{\"icon_value\":\"social_facebook\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"icon_value\":\"social_twitter\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"icon_value\":\"social_dribbble\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"},{\"icon_value\":\"social_skype\",\"text\":\"undefined\",\"link\":\"#\",\"label\":\"undefined\",\"title\":\"undefined\",\"subtext\":\"undefined\",\"social_repeater\":\"undefined\",\"id\":\"\\n\\t\\t\\t\\t\\t\\tshop_isle_socials\",\"shortcode\":\"undefined\",\"description\":\"undefined\"}]\";s:22:\"shop_isle_team_members\";s:1090:\"[{\"image_url\":\"http:\\/\\/localhost\\/FixMyHome\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team1.jpg\",\"text\":\"Eva Bean\",\"subtext\":\"Developer\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5a357c6a49382\"},{\"image_url\":\"http:\\/\\/localhost\\/FixMyHome\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team2.jpg\",\"text\":\"Maria Woods\",\"subtext\":\"Designer\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5a357c6a49382\"},{\"image_url\":\"http:\\/\\/localhost\\/FixMyHome\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team3.jpg\",\"text\":\"Booby Stone\",\"subtext\":\"Director\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5a357c6a49382\"},{\"image_url\":\"http:\\/\\/localhost\\/FixMyHome\\/wp-content\\/themes\\/shop-isle\\/assets\\/images\\/team4.jpg\",\"text\":\"Anna Neaga\",\"subtext\":\"Art Director\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit lacus, a iaculis diam.\",\"id\":\"shop_isle_5a357c6a49382\"}]\";s:20:\"shop_isle_advantages\";s:623:\"[{\"icon_value\":\"icon_lightbulb\",\"text\":\"Ideas and concepts\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5a357c6a4d203\"},{\"icon_value\":\"icon_tools\",\"text\":\"Designs & interfaces\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5a357c6a4d203\"},{\"icon_value\":\"icon_cogs\",\"text\":\"Highly customizable\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5a357c6a4d203\"},{\"icon_value\":\"icon_like\",\"text\":\"Easy to use\",\"subtext\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"id\":\"shop_isle_5a357c6a4d203\"}]\";s:18:\"custom_css_post_id\";i:34;s:25:\"shop_isle_big_title_image\";s:98:\"http://localhost/FixMyHome/wp-content/uploads/2017/12/WhatsApp-Image-2017-12-20-at-8.02.42-PM.jpeg\";s:25:\"shop_isle_big_title_title\";s:11:\"fix my home\";s:28:\"shop_isle_big_title_subtitle\";s:16:\"we fix your home\";s:32:\"shop_isle_big_title_button_label\";s:8:\"services\";s:22:\"shop_isle_banners_hide\";s:1:\"1\";s:30:\"shop_isle_products_slider_hide\";b:1;s:37:\"shop_isle_products_slider_single_hide\";s:1:\"1\";s:23:\"shop_isle_products_hide\";s:0:\"\";s:20:\"shop_isle_video_hide\";b:1;s:12:\"header_image\";s:82:\"http://localhost/FixMyHome/wp-content/uploads/2017/12/service-industry-768x384.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:15;s:3:\"url\";s:82:\"http://localhost/FixMyHome/wp-content/uploads/2017/12/service-industry-768x384.jpg\";s:13:\"thumbnail_url\";s:82:\"http://localhost/FixMyHome/wp-content/uploads/2017/12/service-industry-768x384.jpg\";s:6:\"height\";i:384;s:5:\"width\";i:768;}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:15;}s:24:\"shop_isle_products_title\";s:18:\"Exclusive Services\";s:28:\"shop_isle_products_shortcode\";s:76:\"[product_categories orderby=\"\" order=\"ASC\" columns=\"4\" ids=\"17, 24, 25, 28\"]\";s:31:\"shop_isle_big_title_button_link\";s:36:\"http://localhost/FixMyHome/services/\";s:34:\"shop_isle_products_slider_subtitle\";s:0:\"\";s:34:\"shop_isle_products_slider_category\";s:1:\"-\";}', 'yes'),
(121, 'theme_switched', '', 'yes'),
(122, 'shop_isle_wporg_flag', 'true', 'yes'),
(123, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"262\";s:6:\"height\";s:3:\"325\";s:4:\"crop\";i:1;}', 'yes'),
(124, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"555\";s:6:\"height\";s:3:\"688\";s:4:\"crop\";i:1;}', 'yes'),
(125, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:2:\"83\";s:6:\"height\";s:3:\"103\";s:4:\"crop\";i:1;}', 'yes'),
(126, 'shop_isle_migrate_translation', '1', 'yes'),
(130, 'shop_isle_section_order_migrate', 'yes', 'yes'),
(137, '_transient_timeout_plugin_slugs', '1514001416', 'no'),
(138, '_transient_plugin_slugs', 'a:9:{i:0;s:37:\"admin-menu-editor-pro/menu-editor.php\";i:1;s:29:\"gravityforms/gravityforms.php\";i:2;s:27:\"woocommerce/woocommerce.php\";i:3;s:71:\"woocommerce-gravityforms-product-addons/gravityforms-product-addons.php\";i:4;s:45:\"woocommerce-bookings/woocommerce-bookings.php\";i:5;s:65:\"woocommerce-multistep-checkout/woocommerce-multistep-checkout.php\";i:6;s:27:\"js_composer/js_composer.php\";i:7;s:50:\"yith-woocommerce-customize-myaccount-page/init.php\";i:8;s:46:\"yith-woocommerce-multi-vendor-premium/init.php\";}', 'no'),
(139, 'recently_activated', 'a:2:{s:45:\"woocommerce-bookings/woocommerce-bookings.php\";i:1513915015;s:37:\"user-role-editor/user-role-editor.php\";i:1513795370;}', 'yes'),
(144, 'woocommerce_store_address', 'Nazimabad', 'yes'),
(145, 'woocommerce_store_address_2', '', 'yes'),
(146, 'woocommerce_store_city', 'karachi', 'yes'),
(147, 'woocommerce_default_country', 'PK:SD', 'yes'),
(148, 'woocommerce_store_postcode', '74200', 'yes'),
(149, 'woocommerce_allowed_countries', 'all', 'yes'),
(150, 'woocommerce_all_except_countries', '', 'yes'),
(151, 'woocommerce_specific_allowed_countries', '', 'yes'),
(152, 'woocommerce_ship_to_countries', '', 'yes'),
(153, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(154, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(155, 'woocommerce_calc_taxes', 'no', 'yes'),
(156, 'woocommerce_demo_store', 'no', 'yes'),
(157, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(158, 'woocommerce_currency', 'PKR', 'yes'),
(159, 'woocommerce_currency_pos', 'left', 'yes'),
(160, 'woocommerce_price_thousand_sep', ',', 'yes'),
(161, 'woocommerce_price_decimal_sep', '.', 'yes'),
(162, 'woocommerce_price_num_decimals', '2', 'yes'),
(163, 'woocommerce_weight_unit', 'kg', 'yes'),
(164, 'woocommerce_dimension_unit', 'cm', 'yes'),
(165, 'woocommerce_enable_reviews', 'yes', 'yes'),
(166, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(167, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(168, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(169, 'woocommerce_review_rating_required', 'yes', 'no'),
(170, 'woocommerce_shop_page_id', '10', 'yes'),
(171, 'woocommerce_shop_page_display', '', 'yes'),
(172, 'woocommerce_category_archive_display', '', 'yes'),
(173, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(174, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(175, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(176, 'woocommerce_manage_stock', 'yes', 'yes'),
(177, 'woocommerce_hold_stock_minutes', '60', 'no'),
(178, 'woocommerce_notify_low_stock', 'yes', 'no'),
(179, 'woocommerce_notify_no_stock', 'yes', 'no'),
(180, 'woocommerce_stock_email_recipient', 'areebvohra@gmail.com', 'no'),
(181, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(182, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(183, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(184, 'woocommerce_stock_format', '', 'yes'),
(185, 'woocommerce_file_download_method', 'force', 'no'),
(186, 'woocommerce_downloads_require_login', 'no', 'no'),
(187, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(188, 'woocommerce_prices_include_tax', 'no', 'yes'),
(189, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(190, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(191, 'woocommerce_tax_round_at_subtotal', 'no', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(192, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(193, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(194, 'woocommerce_tax_display_cart', 'excl', 'no'),
(195, 'woocommerce_price_display_suffix', '', 'yes'),
(196, 'woocommerce_tax_total_display', 'itemized', 'no'),
(197, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(198, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(199, 'woocommerce_ship_to_destination', 'billing', 'no'),
(200, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(201, 'woocommerce_enable_coupons', 'no', 'yes'),
(202, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(203, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(204, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(205, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(206, 'woocommerce_cart_page_id', '11', 'yes'),
(207, 'woocommerce_checkout_page_id', '12', 'yes'),
(208, 'woocommerce_terms_page_id', '', 'no'),
(209, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(210, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(211, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(212, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(213, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(214, 'woocommerce_myaccount_page_id', '13', 'yes'),
(215, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(216, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(217, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(218, 'woocommerce_registration_generate_username', 'no', 'no'),
(219, 'woocommerce_registration_generate_password', 'no', 'no'),
(220, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(221, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(222, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(223, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(224, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(225, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(226, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(227, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(228, 'woocommerce_email_from_name', 'FixMyHome', 'no'),
(229, 'woocommerce_email_from_address', 'areebvohra@gmail.com', 'no'),
(230, 'woocommerce_email_header_image', '', 'no'),
(231, 'woocommerce_email_footer_text', 'FixMyHome', 'no'),
(232, 'woocommerce_email_base_color', '#96588a', 'no'),
(233, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(234, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(235, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(236, 'woocommerce_api_enabled', 'yes', 'yes'),
(237, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(242, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(243, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(244, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(245, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(246, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(247, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(248, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(249, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(250, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(251, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(252, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(253, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(254, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(255, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(259, 'woocommerce_product_type', 'both', 'yes'),
(260, 'woocommerce_allow_tracking', 'yes', 'yes'),
(261, 'woocommerce_tracker_last_send', '1513455153', 'yes'),
(262, 'woocommerce_ppec_paypal_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(263, 'woocommerce_paypal_settings', 'a:2:{s:7:\"enabled\";s:2:\"no\";s:5:\"email\";b:0;}', 'yes'),
(264, '_transient_shipping-transient-version', '1513455170', 'yes'),
(265, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:1:\"0\";}', 'yes'),
(266, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:1:\"0\";}', 'yes'),
(267, '_site_transient_timeout_browser_4eb4740138551507a84f944f6646a712', '1514059981', 'no'),
(268, '_site_transient_browser_4eb4740138551507a84f944f6646a712', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"63.0.3239.108\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(277, '_transient_timeout_external_ip_address_::1', '1514059982', 'no'),
(278, '_transient_external_ip_address_::1', '72.255.26.104', 'no'),
(293, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1513914977;s:7:\"checked\";a:4:{s:9:\"shop-isle\";s:6:\"1.1.38\";s:13:\"twentyfifteen\";s:3:\"1.9\";s:15:\"twentyseventeen\";s:3:\"1.4\";s:13:\"twentysixteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(297, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(299, 'yith_product_vendors_payments_table_created', '1', 'yes'),
(300, 'yith_product_vendors_db_version', '1.0.9', 'yes'),
(301, 'yith_product_vendors_commissions_table_created', '1', 'yes'),
(302, 'yith_wpv_become_a_vendor_page_id', '23', 'yes'),
(303, 'yith_wpv_terms_and_conditions_page_id', '24', 'yes'),
(304, 'widget_gform_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'widget_yith-vendors-list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(306, 'widget_yith-vendor-store-location', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(307, 'widget_yith-vendor-quick-info', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(308, 'gravityformsaddon_gravityformswebapi_version', '1.0', 'yes'),
(309, 'gform_enable_background_updates', '', 'yes'),
(310, 'gf_db_version', '2.2.5.8', 'yes'),
(311, 'gform_pending_installation', '', 'yes'),
(312, 'rg_form_version', '2.2.5.8', 'yes'),
(320, 'yith_vendor_base_commission', '20', 'yes'),
(321, 'yith_commissions_default_table_view', 'unpaid', 'yes'),
(322, 'yith_wpv_include_coupon', 'no', 'yes'),
(323, 'yith_wpv_include_tax', 'no', 'yes'),
(324, 'yith_wpv_enable_product_amount', 'no', 'yes'),
(325, 'yith_wpv_vendors_product_limit', '25', 'yes'),
(326, 'yith_wpv_hide_vendor_products', 'no', 'yes'),
(327, 'yith_wpv_vendors_option_skip_review', 'no', 'yes'),
(328, 'yith_wpv_vendors_option_pending_post_status', 'no', 'yes'),
(329, 'yith_wpv_vendors_skip_review_for_all', 'no', 'yes'),
(330, 'yith_wpv_vendors_option_coupon_management', 'no', 'yes'),
(331, 'yith_wpv_vendors_option_review_management', 'no', 'yes'),
(332, 'yith_wpv_vendors_option_order_management', 'no', 'yes'),
(333, 'yith_wpv_vendors_option_order_synchronization', 'no', 'yes'),
(334, 'yith_wpv_vendors_option_order_refund_synchronization', 'yes', 'yes'),
(335, 'yith_wpv_vendors_option_order_hide_customer', 'no', 'yes'),
(336, 'yith_wpv_vendors_option_order_hide_payment', 'no', 'yes'),
(337, 'yith_wpv_vendors_option_order_prevent_resend_email', 'no', 'yes'),
(338, 'yith_wpv_vendors_option_featured_management', 'no', 'yes'),
(339, 'yith_wpv_vendors_option_editor_management', 'no', 'yes'),
(340, 'yith_wpv_vendors_option_editor_media', 'no', 'yes'),
(341, 'yith_wpv_vendors_ahop_admins_cap', 'no', 'yes'),
(342, 'payment_gateway', 'masspay', 'yes'),
(343, 'payment_method', 'choose', 'yes'),
(344, 'payment_minimum_withdrawals', '1', 'yes'),
(345, 'paypal_sandbox', 'yes', 'yes'),
(346, 'paypal_ipn_notification_url', 'http://localhost/FixMyHome/?paypal_ipn_response=true', 'yes'),
(347, 'yith_wpv_vendor_name_in_loop', 'yes', 'yes'),
(348, 'yith_wpv_vendor_name_in_single', 'yes', 'yes'),
(349, 'yith_wpv_vendor_name_in_categories', 'yes', 'yes'),
(350, 'yith_wpv_vendor_show_item_sold', 'no', 'yes'),
(351, 'yith_wpv_report_abuse_link', 'all', 'yes'),
(352, 'yith_wpv_report_abuse_link_text', 'Report abuse', 'yes'),
(353, 'yith_wpv_show_vendor_tab_in_single', 'yes', 'yes'),
(354, 'yith_wpv_vendor_tab_text_text', 'Vendor', 'yes'),
(355, 'yith_wpv_vendors_my_account_registration', 'no', 'yes'),
(356, 'yith_wpv_vendors_my_account_registration_auto_approve', 'no', 'yes'),
(357, 'yith_wpv_vendors_my_account_required_vat', 'yes', 'yes'),
(358, 'yith_wpv_vendors_registration_required_terms_and_conditions', 'no', 'yes'),
(359, 'yith_wpv_become_a_vendor_style', 'myaccount', 'yes'),
(360, 'yith_wpv_vendor_taxonomy_rewrite', 'vendor', 'yes'),
(361, 'yith_wpv_vendor_name_style', 'theme', 'yes'),
(362, 'yith_vendors_color_name', '#bc360a', 'yes'),
(363, 'yith_vendors_color_name_hover', '#ea9629', 'yes'),
(364, 'yith_vendors_skin_header', 'small-box', 'yes'),
(365, 'yith_skin_background_color', '#000000', 'yes'),
(366, 'yith_skin_font_color', '#ffffff', 'yes'),
(367, 'yith_vendors_gravatar_image_size', '62', 'yes'),
(368, 'yith_vendors_header_image_width', '0', 'yes'),
(369, 'yith_vendors_header_image_height', '0', 'yes'),
(370, 'yith_vendors_tab_position', '99', 'yes'),
(371, 'yith_vendors_related_products', 'vendor', 'yes'),
(372, 'yith_wpv_vendor_store_description', 'no', 'yes'),
(373, 'yith_wpv_vendor_name_in_store', 'yes', 'yes'),
(374, 'yith_wpv_vendor_total_sales', 'no', 'yes'),
(375, 'yith_wpv_vendor_show_vendor_vat', 'yes', 'yes'),
(376, 'yith_vat_label', 'CNIC', 'yes'),
(377, 'yith_wpv_vendor_show_vendor_website', 'no', 'yes'),
(378, 'yith_wpv_frontpage_gmaps_key', '', 'yes'),
(379, 'yith_wpv_reports_limit', '10', 'yes'),
(380, 'yith_wpv_vendors_option_seller_vacation_management', 'no', 'yes'),
(381, 'yith_wpv_vendors_option_live_chat_management', 'no', 'yes'),
(382, 'yith_wpv_vendors_option_membership_management', 'no', 'yes'),
(383, 'yith_wpv_vendors_option_subscription_management', 'no', 'yes'),
(384, 'yith_wpv_vendors_option_badge_management_management', 'no', 'yes'),
(385, 'yith_wpv_vendors_option_size_charts_management', 'no', 'yes'),
(386, 'yith_wpv_vendors_option_name_your_price_management', 'no', 'yes'),
(387, 'yith_wpv_vendors_option_order_tracking_management', 'no', 'yes'),
(388, 'yith_wpv_vendors_option_waiting_list_management', 'no', 'yes'),
(389, 'yith_wpv_vendors_option_surveys_management', 'no', 'yes'),
(390, 'yith_wpv_vendors_option_review_discounts_management', 'no', 'yes'),
(391, 'yith_wpv_vendors_option_coupon_email_system_management', 'no', 'yes'),
(392, 'yith_wpv_vendors_enable_pdf_invoice', 'no', 'yes'),
(393, 'yith_wpv_vendors_enable_request_quote', 'no', 'yes'),
(394, 'yith_wpv_vendors_enable_catalog_mode', 'no', 'yes'),
(395, 'yith_wpv_vendors_option_role_based_prices_management', 'no', 'yes'),
(396, 'yith_wpv_vendors_option_advanced_product_options_management', 'no', 'yes'),
(397, 'yith_wpv_vendors_enable_sms', 'no', 'yes'),
(398, 'yith_wpv_vendors_option_bulk_product_editing_options_management', 'no', 'yes'),
(409, 'vc_version', '5.1.1', 'yes'),
(429, 'yith_vendors_show_gravatar_image', 'enabled', 'yes'),
(431, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(433, '_transient_timeout_wc_shipping_method_count_0_1513455170', '1516047955', 'no'),
(434, '_transient_wc_shipping_method_count_0_1513455170', '2', 'no'),
(435, '_transient_timeout_wc_shipping_method_count_1_1513455170', '1516047992', 'no'),
(436, '_transient_wc_shipping_method_count_1_1513455170', '2', 'no'),
(443, 'yit_recently_activated', 'a:2:{i:0;s:50:\"yith-woocommerce-customize-myaccount-page/init.php\";i:1;s:50:\"yith-woocommerce-customize-myaccount-page/init.php\";}', 'yes'),
(444, 'yith_wcmap_old_option_updated', '1', 'yes'),
(445, 'yith-wcmap-flush-rewrite-rules', '0', 'yes'),
(446, 'yith-wcmap-custom-avatar', 'yes', 'yes'),
(447, 'yith-wcmap-menu-style', 'tab', 'yes'),
(448, 'yith-wcmap-menu-position', 'left', 'yes'),
(449, 'yith-wcmap-default-endpoint', 'dashboard', 'yes'),
(450, 'yith-wcmap-menu-item-color', '#777777', 'yes'),
(451, 'yith-wcmap-menu-item-color-hover', '#000000', 'yes'),
(452, 'yith-wcmap-logout-color', '#ffffff', 'yes'),
(453, 'yith-wcmap-logout-color-hover', '#ffffff', 'yes'),
(454, 'yith-wcmap-logout-background', '#c0c0c0', 'yes'),
(455, 'yith-wcmap-logout-background-hover', '#333333', 'yes'),
(456, 'yith_wcmap_endpoint', '[{\"id\":\"dashboard\"},{\"id\":\"my-downloads\"},{\"id\":\"view-order\"},{\"id\":\"edit-account\"},{\"id\":\"edit-address\"},{\"id\":\"payment-methods\"},{\"id\":\"become-a-worker\"}]', 'yes'),
(457, 'yith_wcmap_is_my_account', '', 'yes'),
(458, 'yith_wcmap_endpoint_dashboard', 'a:5:{s:6:\"active\";b:1;s:5:\"label\";s:9:\"Dashboard\";s:4:\"icon\";s:10:\"tachometer\";s:7:\"content\";s:0:\"\";s:4:\"slug\";s:9:\"dashboard\";}', 'yes'),
(459, 'woocommerce_myaccount_dashboard_endpoint', 'dashboard', 'yes'),
(460, 'yith_wcmap_endpoint_my-downloads', 'a:5:{s:6:\"active\";b:1;s:4:\"slug\";s:12:\"my-downloads\";s:5:\"label\";s:12:\"My Downloads\";s:4:\"icon\";s:8:\"download\";s:7:\"content\";s:22:\"[my_downloads_content]\";}', 'yes'),
(461, 'woocommerce_myaccount_my_downloads_endpoint', 'my-downloads', 'yes'),
(462, 'yith_wcmap_endpoint_view-order', 'a:5:{s:6:\"active\";b:1;s:4:\"slug\";s:10:\"view-order\";s:5:\"label\";s:9:\"My Orders\";s:4:\"icon\";s:11:\"file-text-o\";s:7:\"content\";s:20:\"[view_order_content]\";}', 'yes'),
(463, 'yith_wcmap_endpoint_edit-account', 'a:5:{s:6:\"active\";b:1;s:4:\"slug\";s:12:\"edit-account\";s:5:\"label\";s:12:\"Edit Account\";s:4:\"icon\";s:15:\"pencil-square-o\";s:7:\"content\";s:0:\"\";}', 'yes'),
(464, 'yith_wcmap_endpoint_edit-address', 'a:5:{s:6:\"active\";b:1;s:4:\"slug\";s:12:\"edit-address\";s:5:\"label\";s:12:\"Edit Address\";s:4:\"icon\";s:15:\"pencil-square-o\";s:7:\"content\";s:0:\"\";}', 'yes'),
(465, 'yith_wcmap_endpoint_payment-methods', 'a:5:{s:6:\"active\";b:1;s:4:\"slug\";s:15:\"payment-methods\";s:5:\"label\";s:15:\"Payment Methods\";s:4:\"icon\";s:5:\"money\";s:7:\"content\";s:0:\"\";}', 'yes'),
(466, 'yith_wcmap_endpoint_become-a-worker', 'a:5:{s:6:\"active\";b:1;s:4:\"slug\";s:15:\"become-a-worker\";s:5:\"label\";s:15:\"Become a worker\";s:4:\"icon\";s:0:\"\";s:7:\"content\";s:102:\"[vc_btn title=\"Become A worker\" link=\"url:http%3A%2F%2Flocalhost%2FFixMyHome%2Fbecome-a-worker%2F|||\"]\";}', 'yes'),
(467, 'woocommerce_myaccount_become_a_worker_endpoint', 'become-a-worker', 'yes'),
(503, 'wmc_add_register_form', 'false', 'yes'),
(504, 'wmc_add_login_form', 'true', 'yes'),
(505, 'wmc_show_product_thumbnail', 'false', 'yes'),
(506, 'wmc_merge_order_payment_tabs', 'true', 'yes'),
(507, 'wmc_merge_billing_shipping_tabs', 'false', 'yes'),
(508, 'wmc_orientation', 'horizontal', 'yes'),
(509, 'wmc_zipcode_validation', 'false', 'yes'),
(510, 'wmc_add_code_footer', 'false', 'yes'),
(511, 'wmc_add_coupon_form', 'false', 'yes'),
(512, 'wmc_empty_error', 'This field is required', 'yes'),
(513, 'wmc_email_error', 'Please enter a valid email address', 'yes'),
(514, 'wmc_phone_error', 'Please enter valid phone number', 'yes'),
(515, 'wmc_terms_error', 'You must accept our Terms & Conditions', 'yes'),
(546, 'woocommerce_tracker_ua', 'a:1:{i:0;s:114:\"mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.108 safari/537.36\";}', 'yes'),
(583, '_transient_product_query-transient-version', '1513920220', 'yes'),
(589, 'rg_gforms_enable_akismet', '1', 'yes'),
(590, 'rg_gforms_currency', '', 'yes'),
(591, 'gform_enable_toolbar_menu', '1', 'yes'),
(596, '_transient_product-transient-version', '1513919084', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(617, 'ws_menu_editor_pro', 'a:23:{s:22:\"hide_advanced_settings\";b:1;s:16:\"show_extra_icons\";b:0;s:11:\"custom_menu\";a:8:{s:4:\"tree\";a:22:{s:9:\"index.php\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:10:\">index.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:19:\"index.php>index.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:4:\"Home\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"index.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"index.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"index.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:25:\"index.php>update-core.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:87:\"Updates <span class=\'update-plugins count-4\'><span class=\'update-count\'>4</span></span>\";s:12:\"access_level\";s:11:\"update_core\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:15:\"update-core.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"index.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:15:\"update-core.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"Dashboard\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"index.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:43:\"menu-top menu-top-first menu-icon-dashboard\";s:8:\"hookname\";s:14:\"menu-dashboard\";s:8:\"icon_url\";s:19:\"dashicons-dashboard\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"index.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_4\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:12:\">separator_4\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_4\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:8:\"edit.php\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:9:\">edit.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:4:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:17:\"edit.php>edit.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"All Posts\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:8:\"edit.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:8:\"edit.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:21:\"edit.php>post-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"post-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:12:\"post-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:40:\"edit.php>edit-tags.php?taxonomy=category\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Categories\";s:12:\"access_level\";s:17:\"manage_categories\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"edit-tags.php?taxonomy=category\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"edit-tags.php?taxonomy=category\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:40:\"edit.php>edit-tags.php?taxonomy=post_tag\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:4:\"Tags\";s:12:\"access_level\";s:16:\"manage_post_tags\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"edit-tags.php?taxonomy=post_tag\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:8:\"edit.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"edit-tags.php?taxonomy=post_tag\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Posts\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:8:\"edit.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:37:\"menu-top menu-icon-post open-if-no-js\";s:8:\"hookname\";s:10:\"menu-posts\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:8:\"edit.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:10:\"upload.php\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:11:\">upload.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:21:\"upload.php>upload.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Library\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"upload.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"upload.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"upload.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:24:\"upload.php>media-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"media-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"upload.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:13:\"media-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Media\";s:12:\"access_level\";s:12:\"upload_files\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"upload.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-media\";s:8:\"hookname\";s:10:\"menu-media\";s:8:\"icon_url\";s:21:\"dashicons-admin-media\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"upload.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:13:\"gf_edit_forms\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:14:\">gf_edit_forms\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:8:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:27:\"gf_edit_forms>gf_edit_forms\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:5:\"Forms\";s:10:\"menu_title\";s:5:\"Forms\";s:12:\"access_level\";s:17:\"gform_full_access\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"gf_edit_forms\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:13:\"gf_edit_forms\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:28:\"admin.php?page=gf_edit_forms\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:25:\"gf_edit_forms>gf_new_form\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:8:\"New Form\";s:10:\"menu_title\";s:8:\"New Form\";s:12:\"access_level\";s:17:\"gform_full_access\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"gf_new_form\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:13:\"gf_edit_forms\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:26:\"admin.php?page=gf_new_form\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:24:\"gf_edit_forms>gf_entries\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:7:\"Entries\";s:10:\"menu_title\";s:7:\"Entries\";s:12:\"access_level\";s:17:\"gform_full_access\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"gf_entries\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:13:\"gf_edit_forms\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:25:\"admin.php?page=gf_entries\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:25:\"gf_edit_forms>gf_settings\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:8:\"Settings\";s:10:\"menu_title\";s:8:\"Settings\";s:12:\"access_level\";s:17:\"gform_full_access\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"gf_settings\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:13:\"gf_edit_forms\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:26:\"admin.php?page=gf_settings\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:23:\"gf_edit_forms>gf_export\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:13:\"Import/Export\";s:10:\"menu_title\";s:13:\"Import/Export\";s:12:\"access_level\";s:17:\"gform_full_access\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"gf_export\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:13:\"gf_edit_forms\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:24:\"admin.php?page=gf_export\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:23:\"gf_edit_forms>gf_addons\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:7:\"Add-Ons\";s:10:\"menu_title\";s:7:\"Add-Ons\";s:12:\"access_level\";s:17:\"gform_full_access\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"gf_addons\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:13:\"gf_edit_forms\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:24:\"admin.php?page=gf_addons\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:6;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:30:\"gf_edit_forms>gf_system_status\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:13:\"System Status\";s:10:\"menu_title\";s:13:\"System Status\";s:12:\"access_level\";s:17:\"gform_full_access\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"gf_system_status\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:13:\"gf_edit_forms\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"admin.php?page=gf_system_status\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:7;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:7;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:21:\"gf_edit_forms>gf_help\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:4:\"Help\";s:10:\"menu_title\";s:4:\"Help\";s:12:\"access_level\";s:17:\"gform_full_access\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:7:\"gf_help\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:13:\"gf_edit_forms\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:22:\"admin.php?page=gf_help\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:5:\"Forms\";s:10:\"menu_title\";s:5:\"Forms\";s:12:\"access_level\";s:17:\"gform_full_access\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"gf_edit_forms\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:36:\"menu-top toplevel_page_gf_edit_forms\";s:8:\"hookname\";s:27:\"toplevel_page_gf_edit_forms\";s:8:\"icon_url\";s:1158:\"data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz48c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB2aWV3Qm94PSItMTUgNzcgNTgxIDY0MCIgZW5hYmxlLWJhY2tncm91bmQ9Im5ldyAtMTUgNzcgNTgxIDY0MCIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+PGcgaWQ9IkxheWVyXzIiPjxwYXRoIGZpbGw9IiM5OTk5OTkiIGQ9Ik00ODkuNSwyMjdMNDg5LjUsMjI3TDMxNS45LDEyNi44Yy0yMi4xLTEyLjgtNTguNC0xMi44LTgwLjUsMEw2MS44LDIyN2MtMjIuMSwxMi44LTQwLjMsNDQuMi00MC4zLDY5Ljd2MjAwLjVjMCwyNS42LDE4LjEsNTYuOSw0MC4zLDY5LjdsMTczLjYsMTAwLjJjMjIuMSwxMi44LDU4LjQsMTIuOCw4MC41LDBMNDg5LjUsNTY3YzIyLjItMTIuOCw0MC4zLTQ0LjIsNDAuMy02OS43VjI5Ni44QzUyOS44LDI3MS4yLDUxMS43LDIzOS44LDQ4OS41LDIyN3ogTTQwMSwzMDAuNHY1OS4zSDI0MXYtNTkuM0g0MDF6IE0xNjMuMyw0OTAuOWMtMTYuNCwwLTI5LjYtMTMuMy0yOS42LTI5LjZjMC0xNi40LDEzLjMtMjkuNiwyOS42LTI5LjZzMjkuNiwxMy4zLDI5LjYsMjkuNkMxOTIuOSw0NzcuNiwxNzkuNiw0OTAuOSwxNjMuMyw0OTAuOXogTTE2My4zLDM1OS43Yy0xNi40LDAtMjkuNi0xMy4zLTI5LjYtMjkuNnMxMy4zLTI5LjYsMjkuNi0yOS42czI5LjYsMTMuMywyOS42LDI5LjZTMTc5LjYsMzU5LjcsMTYzLjMsMzU5Ljd6IE0yNDEsNDkwLjl2LTU5LjNoMTYwdjU5LjNIMjQxeiIvPjwvZz48L3N2Zz4=\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:28:\"admin.php?page=gf_edit_forms\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:23:\"edit.php?post_type=page\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:24:\">edit.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:2:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:47:\"edit.php?post_type=page>edit.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"All Pages\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"edit.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:23:\"edit.php?post_type=page\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"edit.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:51:\"edit.php?post_type=page>post-new.php?post_type=page\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:27:\"post-new.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:23:\"edit.php?post_type=page\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:27:\"post-new.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Pages\";s:12:\"access_level\";s:10:\"edit_pages\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"edit.php?post_type=page\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:23:\"menu-top menu-icon-page\";s:8:\"hookname\";s:10:\"menu-pages\";s:8:\"icon_url\";s:20:\"dashicons-admin-page\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"edit.php?post_type=page\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:17:\"edit-comments.php\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:18:\">edit-comments.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:1:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:35:\"edit-comments.php>edit-comments.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"All Comments\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"edit-comments.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:17:\"edit-comments.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"edit-comments.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:87:\"Comments <span class=\"awaiting-mod count-0\"><span class=\"pending-count\">0</span></span>\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"edit-comments.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:27:\"menu-top menu-icon-comments\";s:8:\"hookname\";s:13:\"menu-comments\";s:8:\"icon_url\";s:24:\"dashicons-admin-comments\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"edit-comments.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:26:\"edit.php?post_type=product\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:7;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:27:\">edit.php?post_type=product\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:7:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:53:\"edit.php?post_type=product>edit.php?post_type=product\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"All Products\";s:12:\"access_level\";s:13:\"edit_products\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:26:\"edit.php?post_type=product\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=product\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:26:\"edit.php?post_type=product\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:57:\"edit.php?post_type=product>post-new.php?post_type=product\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:13:\"edit_products\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:30:\"post-new.php?post_type=product\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=product\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:30:\"post-new.php?post_type=product\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:83:\"edit.php?post_type=product>edit-tags.php?taxonomy=product_cat&amp;post_type=product\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Categories\";s:12:\"access_level\";s:20:\"manage_product_terms\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:56:\"edit-tags.php?taxonomy=product_cat&amp;post_type=product\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=product\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:52:\"edit-tags.php?taxonomy=product_cat&post_type=product\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:83:\"edit.php?post_type=product>edit-tags.php?taxonomy=product_tag&amp;post_type=product\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:4:\"Tags\";s:12:\"access_level\";s:20:\"manage_product_terms\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:56:\"edit-tags.php?taxonomy=product_tag&amp;post_type=product\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=product\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:52:\"edit-tags.php?taxonomy=product_tag&post_type=product\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:45:\"edit.php?post_type=product>product_attributes\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:10:\"Attributes\";s:10:\"menu_title\";s:10:\"Attributes\";s:12:\"access_level\";s:20:\"manage_product_terms\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:18:\"product_attributes\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=product\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:50:\"edit.php?post_type=product&page=product_attributes\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:43:\"edit.php?post_type=product>product_importer\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:14:\"Product Import\";s:10:\"menu_title\";s:14:\"Product Import\";s:12:\"access_level\";s:13:\"edit_products\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"product_importer\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=product\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:48:\"edit.php?post_type=product&page=product_importer\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:6;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:43:\"edit.php?post_type=product>product_exporter\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:14:\"Product Export\";s:10:\"menu_title\";s:14:\"Product Export\";s:12:\"access_level\";s:13:\"edit_products\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"product_exporter\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:26:\"edit.php?post_type=product\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:48:\"edit.php?post_type=product&page=product_exporter\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:8:\"Products\";s:12:\"access_level\";s:13:\"edit_products\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:26:\"edit.php?post_type=product\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:26:\"menu-top menu-icon-product\";s:8:\"hookname\";s:18:\"menu-posts-product\";s:8:\"icon_url\";s:20:\"dashicons-admin-post\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:26:\"edit.php?post_type=product\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:29:\"edit.php?post_type=wc_booking\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:8;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:30:\">edit.php?post_type=wc_booking\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:6:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:59:\"edit.php?post_type=wc_booking>edit.php?post_type=wc_booking\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"All Bookings\";s:12:\"access_level\";s:13:\"edit_products\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:29:\"edit.php?post_type=wc_booking\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:29:\"edit.php?post_type=wc_booking\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"edit.php?post_type=wc_booking\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:66:\"edit.php?post_type=wc_booking>edit.php?post_type=bookable_resource\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:18:\"Bookable resources\";s:10:\"menu_title\";s:9:\"Resources\";s:12:\"access_level\";s:13:\"edit_products\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:36:\"edit.php?post_type=bookable_resource\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:29:\"edit.php?post_type=wc_booking\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:36:\"edit.php?post_type=bookable_resource\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:44:\"edit.php?post_type=wc_booking>create_booking\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:14:\"Create Booking\";s:10:\"menu_title\";s:14:\"Create Booking\";s:12:\"access_level\";s:15:\"manage_bookings\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:14:\"create_booking\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:29:\"edit.php?post_type=wc_booking\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:49:\"edit.php?post_type=wc_booking&page=create_booking\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:46:\"edit.php?post_type=wc_booking>booking_calendar\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:8:\"Calendar\";s:10:\"menu_title\";s:8:\"Calendar\";s:12:\"access_level\";s:15:\"manage_bookings\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"booking_calendar\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:29:\"edit.php?post_type=wc_booking\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:51:\"edit.php?post_type=wc_booking&page=booking_calendar\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:50:\"edit.php?post_type=wc_booking>booking_notification\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:17:\"Send Notification\";s:10:\"menu_title\";s:17:\"Send Notification\";s:12:\"access_level\";s:15:\"manage_bookings\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:20:\"booking_notification\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:29:\"edit.php?post_type=wc_booking\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:55:\"edit.php?post_type=wc_booking&page=booking_notification\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:61:\"edit.php?post_type=wc_booking>wc_bookings_global_availability\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:19:\"Global Availability\";s:10:\"menu_title\";s:19:\"Global Availability\";s:12:\"access_level\";s:15:\"manage_bookings\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"wc_bookings_global_availability\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:29:\"edit.php?post_type=wc_booking\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:66:\"edit.php?post_type=wc_booking&page=wc_bookings_global_availability\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:8:\"Bookings\";s:12:\"access_level\";s:13:\"edit_products\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:29:\"edit.php?post_type=wc_booking\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:29:\"menu-top menu-icon-wc_booking\";s:8:\"hookname\";s:21:\"menu-posts-wc_booking\";s:8:\"icon_url\";s:22:\"dashicons-calendar-alt\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"edit.php?post_type=wc_booking\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"woocommerce\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:9;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";b:1;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:12:\">woocommerce\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:6:{i:0;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:41:\"woocommerce>edit.php?post_type=shop_order\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:9:{s:16:\"role:yith_vendor\";b:1;s:18:\"role:administrator\";b:1;s:11:\"role:editor\";b:0;s:11:\"role:author\";b:0;s:16:\"role:contributor\";b:0;s:15:\"role:subscriber\";b:0;s:13:\"role:customer\";b:0;s:17:\"role:shop_manager\";b:1;s:10:\"user:admin\";b:1;}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:6:\"Orders\";s:10:\"menu_title\";s:6:\"Orders\";s:12:\"access_level\";s:16:\"edit_shop_orders\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:29:\"edit.php?post_type=shop_order\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"woocommerce\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"edit.php?post_type=shop_order\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";N;}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:26:\"woocommerce>wcmultichekout\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:29:\"WooCommerce MultiStepCheckout\";s:10:\"menu_title\";s:15:\"Checkout Wizard\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:14:\"wcmultichekout\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"woocommerce\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"admin.php?page=wcmultichekout\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:22:\"woocommerce>wc-reports\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:7:\"Reports\";s:10:\"menu_title\";s:7:\"Reports\";s:12:\"access_level\";s:24:\"view_woocommerce_reports\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"wc-reports\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"woocommerce\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:25:\"admin.php?page=wc-reports\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:23:\"woocommerce>wc-settings\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:20:\"WooCommerce settings\";s:10:\"menu_title\";s:8:\"Settings\";s:12:\"access_level\";s:18:\"manage_woocommerce\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"wc-settings\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"woocommerce\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:26:\"admin.php?page=wc-settings\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";s:18:\"manage_woocommerce\";}i:4;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:21:\"woocommerce>wc-status\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:18:\"WooCommerce status\";s:10:\"menu_title\";s:6:\"Status\";s:12:\"access_level\";s:18:\"manage_woocommerce\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"wc-status\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"woocommerce\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:24:\"admin.php?page=wc-status\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:21:\"woocommerce>wc-addons\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:22:\"WooCommerce extensions\";s:10:\"menu_title\";s:11:\"Extensions \";s:12:\"access_level\";s:18:\"manage_woocommerce\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"wc-addons\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"woocommerce\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:24:\"admin.php?page=wc-addons\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:11:\"WooCommerce\";s:10:\"menu_title\";s:11:\"WooCommerce\";s:12:\"access_level\";s:18:\"manage_woocommerce\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"woocommerce\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:52:\"menu-top menu-icon-generic toplevel_page_woocommerce\";s:8:\"hookname\";s:25:\"toplevel_page_woocommerce\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"woocommerce\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";s:18:\"manage_woocommerce\";}s:61:\"edit-tags.php?taxonomy=yith_shop_vendor&amp;post_type=product\";a:32:{s:10:\"page_title\";N;s:10:\"menu_title\";s:7:\"Workers\";s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:10;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:62:\">edit-tags.php?taxonomy=yith_shop_vendor&amp;post_type=product\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:7:\"Workers\";s:10:\"menu_title\";s:7:\"Workers\";s:12:\"access_level\";s:18:\"manage_woocommerce\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:61:\"edit-tags.php?taxonomy=yith_shop_vendor&amp;post_type=product\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:80:\"menu-top toplevel_page_edit-tags?taxonomy=yith_shop_vendor&amp;post_type=product\";s:8:\"hookname\";s:71:\"toplevel_page_edit-tags?taxonomy=yith_shop_vendor&amp;post_type=product\";s:8:\"icon_url\";s:25:\"dashicons-admin-multisite\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:57:\"edit-tags.php?taxonomy=yith_shop_vendor&post_type=product\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}s:29:\"required_capability_read_only\";s:18:\"manage_woocommerce\";}s:23:\"yith_vendor_commissions\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:11;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:24:\">yith_vendor_commissions\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:11:\"Commissions\";s:10:\"menu_title\";s:11:\"Commissions\";s:12:\"access_level\";s:13:\"edit_products\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"yith_vendor_commissions\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:46:\"menu-top toplevel_page_yith_vendor_commissions\";s:8:\"hookname\";s:37:\"toplevel_page_yith_vendor_commissions\";s:8:\"icon_url\";s:17:\"dashicons-tickets\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:38:\"admin.php?page=yith_vendor_commissions\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_5\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:12;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:12:\">separator_5\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_5\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:10:\"themes.php\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:13;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:11:\">themes.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:9:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:21:\"themes.php>themes.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:6:\"Themes\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"themes.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"themes.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:24:\"themes.php>customize.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"Customize\";s:12:\"access_level\";s:9:\"customize\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:245:\"customize.php?return=%2FFixMyHome%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26selected_actor%3Drole%253Ayith_vendor%26selected_menu_url%3Dwoocommerce%26selected_submenu_url%3Dedit.php%253Fpost_type%253Dshop_order%26expand_submenu%3D1\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:20:\"hide-if-no-customize\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:245:\"customize.php?return=%2FFixMyHome%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26selected_actor%3Drole%253Ayith_vendor%26selected_menu_url%3Dwoocommerce%26selected_submenu_url%3Dedit.php%253Fpost_type%253Dshop_order%26expand_submenu%3D1\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:22:\"themes.php>widgets.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Widgets\";s:12:\"access_level\";s:18:\"edit_theme_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"widgets.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"widgets.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:24:\"themes.php>nav-menus.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Menus\";s:12:\"access_level\";s:18:\"edit_theme_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"nav-menus.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:13:\"nav-menus.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:65:\"themes.php>customize.php?#038;autofocus%5Bcontrol%5D=header_image\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:6:\"Header\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:286:\"customize.php?return=%2FFixMyHome%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26selected_actor%3Drole%253Ayith_vendor%26selected_menu_url%3Dwoocommerce%26selected_submenu_url%3Dedit.php%253Fpost_type%253Dshop_order%26expand_submenu%3D1&#038;autofocus%5Bcontrol%5D=header_image\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:20:\"hide-if-no-customize\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:281:\"customize.php?return=%2FFixMyHome%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26selected_actor%3Drole%253Ayith_vendor%26selected_menu_url%3Dwoocommerce%26selected_submenu_url%3Dedit.php%253Fpost_type%253Dshop_order%26expand_submenu%3D1&autofocus%5Bcontrol%5D=header_image\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:69:\"themes.php>customize.php?#038;autofocus%5Bcontrol%5D=background_image\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Background\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:290:\"customize.php?return=%2FFixMyHome%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26selected_actor%3Drole%253Ayith_vendor%26selected_menu_url%3Dwoocommerce%26selected_submenu_url%3Dedit.php%253Fpost_type%253Dshop_order%26expand_submenu%3D1&#038;autofocus%5Bcontrol%5D=background_image\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:20:\"hide-if-no-customize\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:285:\"customize.php?return=%2FFixMyHome%2Fwp-admin%2Foptions-general.php%3Fpage%3Dmenu_editor%26selected_actor%3Drole%253Ayith_vendor%26selected_menu_url%3Dwoocommerce%26selected_submenu_url%3Dedit.php%253Fpost_type%253Dshop_order%26expand_submenu%3D1&autofocus%5Bcontrol%5D=background_image\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:6;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:24:\"themes.php>custom-header\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:6:\"Header\";s:10:\"menu_title\";s:6:\"Header\";s:12:\"access_level\";s:18:\"edit_theme_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"custom-header\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"themes.php?page=custom-header\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:7;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:7;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:28:\"themes.php>custom-background\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:10:\"Background\";s:10:\"menu_title\";s:10:\"Background\";s:12:\"access_level\";s:18:\"edit_theme_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"custom-background\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:33:\"themes.php?page=custom-background\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:8;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:8;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:27:\"themes.php>theme-editor.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:6:\"Editor\";s:10:\"menu_title\";s:6:\"Editor\";s:12:\"access_level\";s:11:\"edit_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"theme-editor.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"themes.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:16:\"theme-editor.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Appearance\";s:12:\"access_level\";s:13:\"switch_themes\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"themes.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:29:\"menu-top menu-icon-appearance\";s:8:\"hookname\";s:15:\"menu-appearance\";s:8:\"icon_url\";s:26:\"dashicons-admin-appearance\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"themes.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:16:\"yit_plugin_panel\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:14;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:17:\">yit_plugin_panel\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:4:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:67:\"yit_plugin_panel>//support.yithemes.com/hc/en-us/articles/217840988\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:30:\"How to install premium version\";s:10:\"menu_title\";s:68:\"<span id=\"yith-how-to-premium\">How to install premium version</span>\";s:12:\"access_level\";s:15:\"install_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:50:\"//support.yithemes.com/hc/en-us/articles/217840988\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:16:\"yit_plugin_panel\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:50:\"//support.yithemes.com/hc/en-us/articles/217840988\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:33:\"yit_plugin_panel>yith_wcmap_panel\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:25:\"Customize My Account Page\";s:10:\"menu_title\";s:25:\"Customize My Account Page\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"yith_wcmap_panel\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:16:\"yit_plugin_panel\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"admin.php?page=yith_wcmap_panel\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:31:\"yit_plugin_panel>yith_wpv_panel\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:12:\"Multi Vendor\";s:10:\"menu_title\";s:12:\"Multi Vendor\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:14:\"yith_wpv_panel\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:16:\"yit_plugin_panel\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:29:\"admin.php?page=yith_wpv_panel\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:40:\"yit_plugin_panel>yith_plugins_activation\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:18:\"License Activation\";s:10:\"menu_title\";s:18:\"License Activation\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:23:\"yith_plugins_activation\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:16:\"yit_plugin_panel\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:38:\"admin.php?page=yith_plugins_activation\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:16:\"yit_plugin_panel\";s:10:\"menu_title\";s:12:\"YITH Plugins\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:16:\"yit_plugin_panel\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:39:\"menu-top toplevel_page_yit_plugin_panel\";s:8:\"hookname\";s:30:\"toplevel_page_yit_plugin_panel\";s:8:\"icon_url\";s:125:\"http://localhost/FixMyHome/wp-content/plugins/yith-woocommerce-multi-vendor-premium/plugin-fw/assets/images/yithemes-icon.png\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:16:\"yit_plugin_panel\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"plugins.php\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:15;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:12:\">plugins.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:23:\"plugins.php>plugins.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:17:\"Installed Plugins\";s:12:\"access_level\";s:16:\"activate_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"plugins.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"plugins.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"plugins.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:30:\"plugins.php>plugin-install.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:15:\"install_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:18:\"plugin-install.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"plugins.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:18:\"plugin-install.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:29:\"plugins.php>plugin-editor.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:6:\"Editor\";s:12:\"access_level\";s:12:\"edit_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"plugin-editor.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:11:\"plugins.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"plugin-editor.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:87:\"Plugins <span class=\'update-plugins count-3\'><span class=\'plugin-count\'>3</span></span>\";s:12:\"access_level\";s:16:\"activate_plugins\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"plugins.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:26:\"menu-top menu-icon-plugins\";s:8:\"hookname\";s:12:\"menu-plugins\";s:8:\"icon_url\";s:23:\"dashicons-admin-plugins\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"plugins.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:9:\"users.php\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:16;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:10:\">users.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:19:\"users.php>users.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:9:\"All Users\";s:12:\"access_level\";s:10:\"list_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"users.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"users.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:22:\"users.php>user-new.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Add New\";s:12:\"access_level\";s:12:\"create_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:12:\"user-new.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:12:\"user-new.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:21:\"users.php>profile.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:12:\"Your Profile\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"profile.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"users.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:11:\"profile.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Users\";s:12:\"access_level\";s:10:\"list_users\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"users.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-users\";s:8:\"hookname\";s:10:\"menu-users\";s:8:\"icon_url\";s:21:\"dashicons-admin-users\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"users.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:9:\"tools.php\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:17;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:10:\">tools.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:3:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:19:\"tools.php>tools.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:15:\"Available Tools\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"tools.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"tools.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:20:\"tools.php>import.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:6:\"Import\";s:12:\"access_level\";s:6:\"import\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"import.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"import.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:20:\"tools.php>export.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:6:\"Export\";s:12:\"access_level\";s:6:\"export\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"export.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:9:\"tools.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:10:\"export.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Tools\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:9:\"tools.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:24:\"menu-top menu-icon-tools\";s:8:\"hookname\";s:10:\"menu-tools\";s:8:\"icon_url\";s:21:\"dashicons-admin-tools\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:9:\"tools.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:10:\"vc-general\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:18;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:11:\">vc-general\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:8:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:21:\"vc-general>vc-general\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:16:\"General Settings\";s:10:\"menu_title\";s:16:\"General Settings\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"vc-general\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"vc-general\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:25:\"admin.php?page=vc-general\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:19:\"vc-general>vc-roles\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:12:\"Role Manager\";s:10:\"menu_title\";s:12:\"Role Manager\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:8:\"vc-roles\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"vc-general\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"admin.php?page=vc-roles\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:19:\"vc-general>vc-color\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:14:\"Design Options\";s:10:\"menu_title\";s:14:\"Design Options\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:8:\"vc-color\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"vc-general\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:23:\"admin.php?page=vc-color\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:24:\"vc-general>vc-custom_css\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:10:\"Custom CSS\";s:10:\"menu_title\";s:10:\"Custom CSS\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"vc-custom_css\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"vc-general\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:28:\"admin.php?page=vc-custom_css\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:21:\"vc-general>vc-updater\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:15:\"Product License\";s:10:\"menu_title\";s:15:\"Product License\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"vc-updater\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"vc-general\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:25:\"admin.php?page=vc-updater\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:24:\"vc-general>vc-automapper\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:16:\"Shortcode Mapper\";s:10:\"menu_title\";s:16:\"Shortcode Mapper\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:13:\"vc-automapper\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"vc-general\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:28:\"admin.php?page=vc-automapper\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:6;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:42:\"vc-general>edit.php?post_type=vc_grid_item\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:12:\"Grid Builder\";s:10:\"menu_title\";s:12:\"Grid Builder\";s:12:\"access_level\";s:10:\"edit_posts\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:31:\"edit.php?post_type=vc_grid_item\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"vc-general\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:31:\"edit.php?post_type=vc_grid_item\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:7;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:7;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:21:\"vc-general>vc-welcome\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:5:\"About\";s:10:\"menu_title\";s:5:\"About\";s:12:\"access_level\";s:5:\"exist\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"vc-welcome\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:10:\"vc-general\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:25:\"admin.php?page=vc-welcome\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:15:\"Visual Composer\";s:10:\"menu_title\";s:15:\"Visual Composer\";s:12:\"access_level\";s:5:\"exist\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:10:\"vc-general\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:33:\"menu-top toplevel_page_vc-general\";s:8:\"hookname\";s:24:\"toplevel_page_vc-general\";s:8:\"icon_url\";s:87:\"http://localhost/FixMyHome/wp-content/plugins/js_composer/assets/vc/visual_composer.png\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:25:\"admin.php?page=vc-general\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:19:\"options-general.php\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:19;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:20:\">options-general.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:7:{i:0;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:0;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:39:\"options-general.php>options-general.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"General\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-general.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-general.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:1;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:1;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:39:\"options-general.php>options-writing.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Writing\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-writing.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-writing.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:2;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:2;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:39:\"options-general.php>options-reading.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:7:\"Reading\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-reading.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-reading.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:3;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:3;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:42:\"options-general.php>options-discussion.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Discussion\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:22:\"options-discussion.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:22:\"options-discussion.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:4;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:4;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:37:\"options-general.php>options-media.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:5:\"Media\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:17:\"options-media.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:17:\"options-media.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:5;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:5;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:41:\"options-general.php>options-permalink.php\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:10:\"Permalinks\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:21:\"options-permalink.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:21:\"options-permalink.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}i:6;a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:6;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:0;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:31:\"options-general.php>menu_editor\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:15:\"Menu Editor Pro\";s:10:\"menu_title\";s:15:\"Menu Editor Pro\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"menu_editor\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";s:19:\"options-general.php\";s:9:\"css_class\";s:0:\"\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:1;s:6:\"custom\";b:0;s:3:\"url\";s:36:\"options-general.php?page=menu_editor\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:8:\"Settings\";s:12:\"access_level\";s:14:\"manage_options\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:19:\"options-general.php\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:27:\"menu-top menu-icon-settings\";s:8:\"hookname\";s:13:\"menu-settings\";s:8:\"icon_url\";s:24:\"dashicons-admin-settings\";s:9:\"separator\";b:0;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:19:\"options-general.php\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_6\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:20;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:12:\">separator_6\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_6\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:17:\"wp-menu-separator\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}s:11:\"separator_7\";a:31:{s:10:\"page_title\";N;s:10:\"menu_title\";N;s:12:\"access_level\";N;s:16:\"extra_capability\";N;s:4:\"file\";N;s:12:\"page_heading\";N;s:8:\"position\";i:21;s:6:\"parent\";N;s:9:\"css_class\";N;s:8:\"hookname\";N;s:8:\"icon_url\";N;s:9:\"separator\";b:1;s:6:\"colors\";N;s:14:\"is_always_open\";N;s:7:\"open_in\";N;s:13:\"iframe_height\";N;s:11:\"template_id\";s:12:\">separator_7\";s:14:\"is_plugin_page\";N;s:6:\"custom\";b:0;s:3:\"url\";N;s:16:\"embedded_page_id\";N;s:21:\"embedded_page_blog_id\";N;s:5:\"items\";a:0:{}s:12:\"grant_access\";a:0:{}s:7:\"missing\";b:0;s:6:\"unused\";b:0;s:6:\"hidden\";b:0;s:17:\"hidden_from_actor\";a:0:{}s:24:\"restrict_access_to_items\";b:0;s:24:\"had_access_before_hiding\";N;s:8:\"defaults\";a:20:{s:10:\"page_title\";s:0:\"\";s:10:\"menu_title\";s:0:\"\";s:12:\"access_level\";s:4:\"read\";s:16:\"extra_capability\";s:0:\"\";s:4:\"file\";s:11:\"separator_7\";s:12:\"page_heading\";s:0:\"\";s:6:\"parent\";N;s:9:\"css_class\";s:29:\"wp-menu-separator woocommerce\";s:8:\"hookname\";s:0:\"\";s:8:\"icon_url\";s:23:\"dashicons-admin-generic\";s:9:\"separator\";b:1;s:6:\"colors\";b:0;s:14:\"is_always_open\";b:0;s:7:\"open_in\";s:11:\"same_window\";s:13:\"iframe_height\";i:0;s:14:\"is_plugin_page\";b:0;s:6:\"custom\";b:0;s:3:\"url\";s:0:\"\";s:16:\"embedded_page_id\";i:0;s:21:\"embedded_page_blog_id\";i:1;}}}s:6:\"format\";a:3:{s:4:\"name\";s:22:\"Admin Menu Editor menu\";s:7:\"version\";s:3:\"7.0\";s:13:\"is_normalized\";b:1;}s:13:\"color_presets\";a:0:{}s:20:\"granted_capabilities\";a:1:{s:16:\"role:yith_vendor\";a:1:{s:19:\"publish_shop_orders\";a:3:{i:0;b:1;i:1;s:9:\"post_type\";i:2;s:10:\"shop_order\";}}}s:20:\"component_visibility\";a:0:{}s:22:\"has_modified_dashicons\";b:0;s:9:\"color_css\";s:0:\"\";s:18:\"color_css_modified\";i:0;}s:18:\"first_install_time\";i:1513582058;s:21:\"display_survey_notice\";b:1;s:17:\"plugin_db_version\";i:140;s:24:\"security_logging_enabled\";b:0;s:17:\"menu_config_scope\";s:6:\"global\";s:13:\"plugin_access\";s:14:\"manage_options\";s:15:\"allowed_user_id\";N;s:28:\"plugins_page_allowed_user_id\";N;s:27:\"show_deprecated_hide_button\";b:1;s:37:\"dashboard_hiding_confirmation_enabled\";b:1;s:21:\"submenu_icons_enabled\";s:9:\"if_custom\";s:22:\"force_custom_dashicons\";b:1;s:16:\"ui_colour_scheme\";s:7:\"classic\";s:13:\"visible_users\";a:0:{}s:23:\"show_plugin_menu_notice\";b:0;s:20:\"unused_item_position\";s:8:\"relative\";s:15:\"error_verbosity\";i:2;s:20:\"compress_custom_menu\";b:0;s:16:\"is_active_module\";a:1:{s:19:\"highlight-new-menus\";b:0;}s:19:\"custom_network_menu\";N;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(619, 'ame_pro_external_updates', 'O:8:\"stdClass\":2:{s:9:\"lastCheck\";i:1513914977;s:14:\"checkedVersion\";s:5:\"2.5.1\";}', 'no'),
(704, 'ws_ame_meta_boxes', '{\"format\":{\"name\":\"Admin Menu Editor meta boxes\",\"version\":\"1.0\"},\"screens\":{\"post\":{\"submitdiv\":{\"id\":\"submitdiv\",\"title\":\"Publish\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"categorydiv\":{\"id\":\"categorydiv\",\"title\":\"Categories\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"tagsdiv-post_tag\":{\"id\":\"tagsdiv-post_tag\",\"title\":\"Tags\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"postimagediv\":{\"id\":\"postimagediv\",\"title\":\"Featured Image\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"postexcerpt\":{\"id\":\"postexcerpt\",\"title\":\"Excerpt\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"trackbacksdiv\":{\"id\":\"trackbacksdiv\",\"title\":\"Send Trackbacks\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"postcustom\":{\"id\":\"postcustom\",\"title\":\"Custom Fields\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"commentstatusdiv\":{\"id\":\"commentstatusdiv\",\"title\":\"Discussion\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"slugdiv\":{\"id\":\"slugdiv\",\"title\":\"Slug\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"authordiv\":{\"id\":\"authordiv\",\"title\":\"Author\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"}},\"shop_order\":{\"woocommerce-order-actions\":{\"id\":\"woocommerce-order-actions\",\"title\":\"Order actions\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\woocommerce\\\\includes\\\\admin\\\\meta-boxes\\\\class-wc-meta-box-order-actions.php\"},\"woocommerce-order-notes\":{\"id\":\"woocommerce-order-notes\",\"title\":\"Order notes\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\woocommerce\\\\includes\\\\admin\\\\meta-boxes\\\\class-wc-meta-box-order-notes.php\"},\"postcustom\":{\"id\":\"postcustom\",\"title\":\"Custom Fields\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"woocommerce-order-data\":{\"id\":\"woocommerce-order-data\",\"title\":\"Order data\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\woocommerce\\\\includes\\\\admin\\\\meta-boxes\\\\class-wc-meta-box-order-data.php\"},\"woocommerce-order-items\":{\"id\":\"woocommerce-order-items\",\"title\":\"Items\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\woocommerce\\\\includes\\\\admin\\\\meta-boxes\\\\class-wc-meta-box-order-items.php\"},\"woocommerce-order-downloads\":{\"id\":\"woocommerce-order-downloads\",\"title\":\"Downloadable product permissions<span class=\\\"woocommerce-help-tip\\\" data-tip=\\\"Note: Permissions for order items will automatically be granted when the order status changes to processing\\/completed.\\\"><\\/span>\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\woocommerce\\\\includes\\\\admin\\\\meta-boxes\\\\class-wc-meta-box-order-downloads.php\"},\"woocommerce-suborders\":{\"id\":\"woocommerce-suborders\",\"title\":\"Suborders <span class=\\\"tips\\\" data-tip=\\\"Note: from this box you can monitor the status of suborders associated to individual vendors.\\\">[?]<\\/span>\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\yith-woocommerce-multi-vendor-premium\\\\includes\\\\class.yith-orders.php\"}},\"shop_webhook\":{\"submitdiv\":{\"id\":\"submitdiv\",\"title\":\"Publish\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"slugdiv\":{\"id\":\"slugdiv\",\"title\":\"Slug\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"}},\"product\":{\"submitdiv\":{\"id\":\"submitdiv\",\"title\":\"Publish\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"product_catdiv\":{\"id\":\"product_catdiv\",\"title\":\"Product categories\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"tagsdiv-product_tag\":{\"id\":\"tagsdiv-product_tag\",\"title\":\"Product tags\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"tagsdiv-yith_shop_vendor\":{\"id\":\"tagsdiv-yith_shop_vendor\",\"title\":\"Worker\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\yith-woocommerce-multi-vendor-premium\\\\includes\\\\class.yith-vendors-admin.php\"},\"postimagediv\":{\"id\":\"postimagediv\",\"title\":\"Product image\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"woocommerce-product-images\":{\"id\":\"woocommerce-product-images\",\"title\":\"Product gallery\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\woocommerce\\\\includes\\\\admin\\\\meta-boxes\\\\class-wc-meta-box-product-images.php\"},\"postcustom\":{\"id\":\"postcustom\",\"title\":\"Custom Fields\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"slugdiv\":{\"id\":\"slugdiv\",\"title\":\"Slug\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"woocommerce-gravityforms-meta\":{\"id\":\"woocommerce-gravityforms-meta\",\"title\":\"Gravity Forms Product Add-Ons\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\woocommerce-gravityforms-product-addons\\\\admin\\\\gravityforms-product-addons-admin.php\"},\"postexcerpt\":{\"id\":\"postexcerpt\",\"title\":\"Product short description\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\woocommerce\\\\includes\\\\admin\\\\meta-boxes\\\\class-wc-meta-box-product-short-description.php\"},\"commentsdiv\":{\"id\":\"commentsdiv\",\"title\":\"Reviews\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"woocommerce-product-data\":{\"id\":\"woocommerce-product-data\",\"title\":\"Product data\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\woocommerce\\\\includes\\\\admin\\\\meta-boxes\\\\class-wc-meta-box-product-data.php\"}},\"page\":{\"submitdiv\":{\"id\":\"submitdiv\",\"title\":\"Publish\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"pageparentdiv\":{\"id\":\"pageparentdiv\",\"title\":\"Page Attributes\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"postimagediv\":{\"id\":\"postimagediv\",\"title\":\"Featured Image\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"postcustom\":{\"id\":\"postcustom\",\"title\":\"Custom Fields\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"commentstatusdiv\":{\"id\":\"commentstatusdiv\",\"title\":\"Discussion\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"commentsdiv\":{\"id\":\"commentsdiv\",\"title\":\"Comments\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"slugdiv\":{\"id\":\"slugdiv\",\"title\":\"Slug\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"authordiv\":{\"id\":\"authordiv\",\"title\":\"Author\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"wpb_visual_composer\":{\"id\":\"wpb_visual_composer\",\"title\":\"Visual Composer\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\js_composer\\\\include\\\\classes\\\\editors\\\\class-vc-backend-editor.php\"},\"revisionsdiv\":{\"id\":\"revisionsdiv\",\"title\":\"Revisions\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"}},\"vc_grid_item\":{\"wpb_visual_composer\":{\"id\":\"wpb_visual_composer\",\"title\":\"Grid Builder\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\js_composer\\\\include\\\\params\\\\vc_grid_item\\\\editor\\\\class-vc-grid-item-editor.php\"},\"slugdiv\":{\"id\":\"slugdiv\",\"title\":\"Slug\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"submitdiv\":{\"id\":\"submitdiv\",\"title\":\"Publish\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"}},\"attachment\":{\"submitdiv\":{\"id\":\"submitdiv\",\"title\":\"Save\",\"context\":\"side\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":false,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"commentstatusdiv\":{\"id\":\"commentstatusdiv\",\"title\":\"Discussion\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"commentsdiv\":{\"id\":\"commentsdiv\",\"title\":\"Comments\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"slugdiv\":{\"id\":\"slugdiv\",\"title\":\"Slug\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"},\"authordiv\":{\"id\":\"authordiv\",\"title\":\"Author\",\"context\":\"normal\",\"isPresent\":true,\"grantAccess\":[],\"defaultVisibility\":[],\"isHiddenByDefault\":true,\"className\":\"ameMetaBoxWrapper\",\"wasPresent\":true,\"callbackFileName\":\"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\meta-boxes.php\"}}}}', 'no'),
(709, 'ws_ame_dashboard_widgets', '{\n    \"format\": {\n        \"name\": \"Admin Menu Editor dashboard widgets\",\n        \"version\": \"1.0\"\n    },\n    \"widgets\": [\n        {\n            \"id\": \"dashboard_right_now\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"At a Glance\",\n                \"location\": \"normal\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\dashboard.php\"\n        },\n        {\n            \"id\": \"dashboard_activity\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"Activity\",\n                \"location\": \"normal\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\dashboard.php\"\n        },\n        {\n            \"id\": \"rg_forms_dashboard\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"Forms\",\n                \"location\": \"normal\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\gravityforms\\\\gravityforms.php\"\n        },\n        {\n            \"id\": \"woocommerce_dashboard_recent_reviews\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"WooCommerce recent reviews\",\n                \"location\": \"normal\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\woocommerce\\\\includes\\\\admin\\\\class-wc-admin-dashboard.php\"\n        },\n        {\n            \"id\": \"woocommerce_dashboard_status\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"WooCommerce status\",\n                \"location\": \"normal\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-content\\\\plugins\\\\woocommerce\\\\includes\\\\admin\\\\class-wc-admin-dashboard.php\"\n        },\n        {\n            \"id\": \"dashboard_quick_press\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"<span class=\\\"hide-if-no-js\\\">Quick Draft<\\/span> <span class=\\\"hide-if-js\\\">Drafts<\\/span>\",\n                \"location\": \"side\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\dashboard.php\"\n        },\n        {\n            \"id\": \"dashboard_primary\",\n            \"title\": \"\",\n            \"location\": \"\",\n            \"priority\": \"\",\n            \"isPresent\": true,\n            \"grantAccess\": [],\n            \"widgetType\": \"wrapper\",\n            \"wrappedWidget\": {\n                \"title\": \"WordPress Events and News\",\n                \"location\": \"side\",\n                \"priority\": \"core\"\n            },\n            \"wasPresent\": true,\n            \"callbackFileName\": \"C:\\\\xampp\\\\htdocs\\\\FixMyHome\\\\wp-admin\\\\includes\\\\dashboard.php\"\n        }\n    ],\n    \"siteComponentHash\": \"c993b34491cd26191d27b8749d20214b\"\n}', 'no'),
(728, '_site_transient_timeout_browser_910ae212836ebd1b512fb57c395ff9ff', '1514265807', 'no'),
(729, '_site_transient_browser_910ae212836ebd1b512fb57c395ff9ff', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"56.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(890, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1513914977;s:7:\"checked\";a:9:{s:37:\"admin-menu-editor-pro/menu-editor.php\";s:5:\"2.5.1\";s:29:\"gravityforms/gravityforms.php\";s:7:\"2.2.5.8\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.2.6\";s:71:\"woocommerce-gravityforms-product-addons/gravityforms-product-addons.php\";s:5:\"3.0.0\";s:45:\"woocommerce-bookings/woocommerce-bookings.php\";s:6:\"1.10.1\";s:65:\"woocommerce-multistep-checkout/woocommerce-multistep-checkout.php\";s:3:\"2.5\";s:27:\"js_composer/js_composer.php\";s:5:\"5.1.1\";s:50:\"yith-woocommerce-customize-myaccount-page/init.php\";s:5:\"2.0.1\";s:46:\"yith-woocommerce-multi-vendor-premium/init.php\";s:6:\"1.14.0\";}s:8:\"response\";a:3:{s:27:\"js_composer/js_composer.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:11:\"js_composer\";s:11:\"new_version\";s:5:\"5.4.5\";s:3:\"url\";s:0:\"\";s:7:\"package\";b:0;s:4:\"name\";s:24:\"WPBakery Visual Composer\";}s:50:\"yith-woocommerce-customize-myaccount-page/init.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:50:\"yith-woocommerce-customize-myaccount-page/init.php\";s:11:\"new_version\";s:5:\"2.2.5\";s:9:\"changelog\";s:6325:\"\n\n<h4>Version 2.2.5 - Released on Dec 05, 2017 </h4>\n<ul>\n    <li>New: Support to WooCommerce 3.2.5.</li>\n    <li>New: Support to WordPress 4.9.1.</li>\n    <li>Update: Plugin Core.</li>\n    <li>Fix: Compatibility issue with WooCommerce Membership older then 1.9.0.</li>\n    <li>Fix: Missing strings in languages files.</li>\n</ul>\n<h4>Version 2.2.4 - Released on Nov 13, 2017 </h4>\n<ul>\n    <li>New: Support to WooCommerce 3.2.3.</li>\n    <li>New: Compatibility with YITH WooCommerce Gift Cards Premium.</li>\n    <li>Update: Plugin Core.</li>\n    <li>Fix: User roles multiselect on endpoint options.</li>\n    <li>Fix: Force a tab to be open if an endpoint inside is active.</li>\n</ul>\n<h4>Version 2.2.3 - Released on Oct 18, 2017 </h4>\n<ul>\n    <li>Update: Plugin Core.</li>\n    <li>Fix: Fontawesome icons list incomplete.</li>\n</ul>\n<h4>Version 2.2.2 - Released on Oct 16, 2017 </h4>\n<ul>\n    <li>New: Support to WooCommerce 3.2.1.</li>\n    <li>Update: Plugin Core.</li>\n    <li>Update: Fontawesome version to 4.7.0.</li>\n    <li>Fix: Compatibility issue with WooCommerce Membership version 1.9.0.</li>\n</ul>\n<h4>Version 2.2.1 - Released on Sep 27, 2017 </h4>\n<ul>\n    <li>New: Support to WooCommerce 3.1.2.</li>\n    <li>New: Support to WordPress 4.8.2.</li>\n    <li>New: Dutch translation.</li>\n    <li>New: German translation (thanks to Alexander Cekic).</li>\n    <li>Update: Plugin Core.</li>\n    <li>Fix: Compatibility issue with WooCommerce Membership version 1.9.0.</li>\n</ul>\n<h4>Version 2.2.0 - Released on Jul 13, 2017 </h4>\n<ul>\n    <li>New: Support to WooCommerce 3.1.1.</li>\n    <li>New: New avatar upload popup.</li>\n    <li>Update: Plugin Core.</li>\n</ul>\n<h4>Version 2.1.1 - Released on Jul 02, 2017 </h4>\n<ul>\n    <li>New: Support to WooCommerce 3.1.</li>\n    <li>Fix: Using new WC templates orders.php and downloads.php instead of older.</li>\n    <li>Fix: Compatibility issue with plugin WooComposer.</li>\n    <li>Update: Plugin Core.</li>\n    <li>Dev: New filter yith_wcmap_default_endpoint for the default endpoint slug.</li>\n</ul>\n<h4>Version 2.1.0 - Released on Mar 03, 2017 </h4>\n<ul>\n    <li>New: Support to WooCommerce 2.7 RC 1.</li>\n    <li>New: Hungarian translation (thanks to Szabolcs Égerházi).</li>\n    <li>Update: Plugin Core.</li>\n    <li>Update: Languages files.</li>\n</ul>\n<h4>Version 2.0.1 - Released on Jan 10, 2017 </h4>\n<ul>\n    <li>Fix: Option for tab visibility based on user roles.</li>\n</ul>\n<h4>Version 2.0.0 - Released on Dec 15, 2016 </h4>\n<ul>\n    <li>New: Support to WooCommerce 2.6.9.</li>\n    <li>New: Support to WordPress 4.7.</li>\n    <li>New: Button to reset default account avatar in avatar popup.</li>\n    <li>New: Hide endpoints based on user roles.</li>\n    <li>New: You can now create group of endpoints.</li>\n    <li>New: Integration with WooCommerce Membership.</li>\n    <li>New: Integration with YITH WooCommerce Membership.</li>\n    <li>New: Integration with YITH WooCommerce Subscription.</li>\n    <li>Update: Plugin Core.</li>\n    <li>Fix: Default endpoint option.</li>\n</ul>\n<h4>Version 1.1.1 - Released on Aug 17, 2016 </h4>\n<ul>\n    <li>New: Support to WooCommerce 2.6.4.</li>\n    <li>New: Support to WordPress 4.6.</li>\n    <li>New: Support to YITH WooCommerce Account Funds.</li>\n    <li>New: Spanish Translation.</li>\n    <li>Update: Plugin Core.</li>\n    <li>Fix: If the endpoint slug is changed, now the tab content loads correctly.</li>\n</ul>\n<h4>Version 1.1.0 - Released on Jun 14, 2016 </h4>\n<ul>\n    <li>New: Support to WooCommerce 2.6 RC2.</li>\n    <li>New: Support to WooCommerce Subscription plugin.</li>\n    <li>New: Italian Translation.</li>\n    <li>Update: Plugin Core.</li>\n</ul>\n<h4>Version 1.0.9 - Released on Apr 19, 2016 </h4>\n<ul>\n    <li>New: Compatibility with YITH WooCommerce Waiting List Premium.</li>\n    <li>Fix: Error undefined functions yit_wpml_string_translate and yit_wpml_register_string.</li>\n</ul>\n<h4>Version 1.0.8 - Released on Apr 14, 2016 </h4>\n<ul>\n    <li>New: Compatibility to Wordpress 4.5.</li>\n    <li>New: Added minimized js files. Plugin loads full files version if the constant \"SCRIPT_DEBUG\" is defined and is true.</li>\n    <li>Fix: Logout from my account sidebar does not work.</li>\n    <li>Fix: Default tab redirection.</li>\n</ul>\n<h4>Version 1.0.7 - Released on Apr 12, 2016 </h4>\n<ul>\n    <li>Update: Plugin Core.</li>\n    <li>Update: Language file.</li>\n    <li>Fix: WPML Language Switcher now get correct page link also with custom endpoints.</li>\n    <li>Fix: Compatibility issue with YITH WooCommerce Request a Quote.</li>\n    <li>Fix: Default Tab option.</li>\n</ul>\n<h4>Version 1.0.6 - Released on Mar 11, 2016 </h4>\n<ul>\n    <li>Update: Plugin Core.</li>\n    <li>New: Compatibility with YITH WooCommerce Request a Quote Premium.</li>\n    <li>Fix: Tab title translation with WPML String Translation.</li>\n</ul>\n<h4>Version 1.0.5 - Released on Mar 04, 2016 </h4>\n<ul>\n    <li>New: Compatibility with YITH Themes that already implements a sidebar on my-account.</li>\n    <li>Update: Language file .pot</li>\n    <li>Update: Plugin Core.</li>\n    <li>Fix: Endpoint slug must be not empty.</li>\n    <li>Fix: When custom content for dashboard has been set \"edit address\" doesn\'t work anymore.</li>\n</ul>\n<h4>Version 1.0.4 - Released on Feb 04, 2016 </h4>\n<ul>\n    <li>New: Compatibility with YITH WooCommerce One Click Checkout.</li>\n    <li>New: Compatibility with YITH WooCommerce Stripe.</li>\n    <li>New: Compatibility with WPML.</li>\n    <li>New: Option for choose the default my account tab.</li>\n    <li>Update: Language file .pot</li>\n    <li>Update: Plugin Core.</li>\n</ul>\n<h4>Version 1.0.3 - Released on Jan 11, 2016 </h4>\n<ul>\n    <li>New: Compatibility to WooCommerce 2.5 RC.</li>\n    <li>Update: Language file .pot</li>\n    <li>Update: Plugin Core.</li>\n    <li>Fix: Avatar issue on woocommerce review section.</li>\n    <li>Fix: Avatar missing on admin wordpress settings.</li>\n</ul>\n<h4>Version 1.0.2 - Released on Dec 01, 2015 </h4>\n<ul>\n    <li>Fix: Missing stripslashes for custom endpoint content.</li>\n</ul>\n<h4>Version 1.0.1 - Released on Dec 01, 2015 </h4>\n<ul>\n    <li>Update: Plugin Core.</li>\n    <li>Fix: Custom content for dashboard endpoint overwrite other endpoints.</li>\n</ul>\n<h4>Version 1.0.0 - Released on Nov 10, 2015 </h4>\n<ul>\n    <li>Initial Release</li>\n</ul>\n\n    \";s:7:\"package\";N;s:6:\"plugin\";s:50:\"yith-woocommerce-customize-myaccount-page/init.php\";}s:46:\"yith-woocommerce-multi-vendor-premium/init.php\";O:8:\"stdClass\":5:{s:4:\"slug\";s:46:\"yith-woocommerce-multi-vendor-premium/init.php\";s:11:\"new_version\";s:5:\"2.3.1\";s:9:\"changelog\";s:53536:\"\n        \n        <h4>2.3.1 - Released on Dec 18, 2017</h4>\n        <ul>\n        	<li>* New: Support for SenangPay Payment Gateway for WooCommerce by senangPay plugin</li>\n			<li>* Fix: New user can\'t create a vendor account</li>\n			<li>* Fix: Unable to set two shipping zone with the same country but different postal code</li>\n			<li>* Fix: Unable to use commissions filter in commissions page WordPress 4.9</li>\n			<li>* Fix: Unable to add new product to parent order if the admin is a valid vendor</li>\n			<li>* Fix: change text-domain from woocommerce to yith-woocommerce-product-vendors</li>\n			<li>* Fix: Wrong string localizzation for vendor website field</li>\n			<li>* Dev: yith_wcmv_report_commissions_by_vendor_not_allowed_status hook</li>\n			<li>* Dev: yith_wcmv_report_commissions_by_vendor_order_date hook</li>\n			<li>* Dev: yith_wcmv_force_to_trigger_new_order_email_action hook</li>\n			<li>* Dev: yith_wcmv_commissions_list_table_col_{$column_name} action to extends commissions list table</li>\n        </ul>\n        <h4>2.3.0 - Released on Nov 24, 2017</h4>\n        <ul>\n            <li>New Support for WordPress 4.9</li>\n            <li>New: Support for YITH WooCommerce One-click Chekout order</li>\n            <li>New: Vendor report commissions email for \'change to xxx\' bulk action</li>\n            <li>New: yith_wcmv_vendor_name shortcodes to show the vendor name with or without link</li>\n            <li>Updated: Languages file</li>\n            <li>Tweak: Plugin option panel string</li>\n            <li>Tweak: Removed old jquery-chosen style</li>\n            <li>Twaek: Pre-fill report abuse information is the user is logged in</li>\n            <li>Fix: Unable to assign products to vendor if the store name have coma(s)</li>\n            <li>Fix: Refund amount show 0$ to administrator with multi venodr plugin enabled</li>\n            <li>Fix: New user\'s with no roles can\'t access to become a vendor form in WordPress MultiSite</li>\n            <li>Fix: Fatal error on commissions list table if, for some reason, the vendor is not valid anymore</li>\n            <li>Fix: Database error in related products box in single product page if a vendor have only one product</li>\n            <li>Fix: No email send to admin if a customer create a new vendor account from become a vendor page</li>\n            <li>Fix: Wrong vendor detail url in New vendor registration email</li>\n            <li>Fix: No owner information in New vendor registration email</li>\n            <li>Fix: Unable to access property user_email on null in become a vendor page</li>\n            <li>Fix: Options deps in order management</li>\n        </ul>\n        <h4>2.2.2 - Released on Oct 17, 2017</h4>\n		<ul>\n		    <li>Fix: Unable to activate license</li>\n			<li>Fix: Wrong message in old vendor order message for taxes management</li>\n			<li>Fix: Fix wrong table name, use post instead of posts</li>\n		</ul>\n        <h4>2.2.1 - Released on Oct 12, 2017</h4>\n		<ul>\n		    <li>New: Support for WooCommerce 3.2.0-RC2</li>\n		    <li>Tweak: Add shipping fee information in new order email for vendors</li>\n		    <li>Fix: Minor bugs with WordPress 4.8.2</li>\n		    <li>Fix: No email if admin change the commission status by Bulk Action</li>\n		    <li>Fix: Can\'t change the \"Register as a vendor\" string with the correct hook</li>\n		    <li>Fix: Wrong style in new order for vendor email</li>\n		    <li>Fix: Undefined index issue if no value set for shipping zone in vendor admin panel</li>\n		    <li>Dev: yith_wcmv_send_commissions_email_on_bulk_action hook</li>\n		</ul>\n        <h4>Version 2.2.0 - Released on Sep 27, 2017 </h4>\n        <ul>\n            <li>Add: New tax management in commissions calculations</li>\n            <li>Add: PayPal email field in vendor registration form</li>\n            <li>Fix: Wrong refuind amount in parent order if a vendor make a refund from suborder</li>\n            <li>Fix: Wrong tax amount in vendor suborder</li>\n            <li>Tweak: New column \'Tax\' in new order vendor email if the 100% of taxes are send to vendor</li>\n            <li>Fix: Unable to change vendor\'s commission in add/edit taxonomy screen</li>\n            <li>Fix: No amount shown in commission view poage with no variable products</li>\n            <li>Fix: Unable to create a vendor account with empty PayPal email, it this field isn\'t mandatory</li>\n            <li>Fix: Loop on order refund with WooCommerce 3.0.x or greather</li>\n            <li>Fix: Undefined property $meta in vendor new order email</li>\n            <li>Dev: yith_wcmv_vendor_admin_settings_page_args hook</li>        \n        </ul>    \n        <h4>Version 2.1.1 - Released on Aug 30, 2017 </h4>\n        <ul>\n        	<li>Tweak: Prevent to have different store with the same name</li>\n			<li>Fix: Admin can create vendor with the same shop owner</li>\n        </ul>	\n        <h4>Version 2.1.0 - Released on Aug 24, 2017 </h4>\n        <ul>\n            <li>New: Suborder to parent order status sync option</li>\n			<li>Tweak: Force commission to cancelled status if the commission amoun is equal to zero</li>\n			<li>Update: All languages pot/po/mo files</li>\n			<li>Update: wpml-config.xml file</li>\n			<li>Fix: Notice/Warning during suborder creation with WooCommerce 3.0 or greater</li>\n			<li>Fix: Use the new object WC_Order_Item_Product instead of deprecated WC_Order_Item_Meta</li>\n			<li>Fix: Warning during order refund for no_index found in $args params</li>\n			<li>Fix: Wrong value in date() function with WC 3.0 or grether. The 2nd parameter must be string, WC_DateTime given</li>\n			<li>Fix: Fatal error in commission detail page if the order are set to refunded status</li>\n			<li>Fix: Vendor quick info redirect to vendor shop page instead of single product page</li>\n			<li>Fix: Typo \"net commissions\" instead of \"net sales\" in Sales by date report</li>\n			<li>Fix: Refund policy and Shipping policy for vendor doesn\'t show in single product page</li>\n			<li>Fix: Products not set to pending review status if a vendor edit attributes or variations</li>\n        </ul>\n        <h4>Version 2.0.7 - Released on Aug 16, 2017 </h4>\n        <ul>\n            <li>Update: pot/po/mo files</li>\n            <li>Fix: Exclude autodraft products from admin pending review</li>\n            <li>Fix: Error during registration with YITH Social Login enabled</li>\n            <li>Dev: Add hook <code>yith_wcmv_get_header_size</code> for vendor gravatar and header image size</li>\n        </ul>\n        <h4>Version 2.0.6 - Released on Aug 02, 2017 </h4>\n        <ul>\n            <li>Fix: wc-enhanced-select script is not required in shipping tab</li> \n            <li>Dev: yith_wcmv_shipping_method_without_extra_cost hook</li>\n        </ul>    \n        <h4>Version 2.0.5 - Released on July 28, 2017 </h4>\n        <ul>\n            <li>Tweak: Image size information for vendor header image in vendor frontpage panel</li>\n            <li>Tweak: shipping.min.js file</li>\n            <li>Tweak: multi-vendor.js are included only in vendor\'s page, product page and registration page</li>\n            <li>Fix: Missing select2 deps for shipping.js script</li>\n            <li>Fix: Shipping tab style on frontend manager</li>\n            <li>Fix: No commissions created for Variable product with WooCommerce 2.6</li>\n            <li>Fix: No commissions created for Variable product with WooCommerce 3.1</li>\n            <li>Fix: Recoverable fatal error with php 7.1 in shipping and vacation module options page</li>\n            <li>Fix: Issue with YOAST SEO and WooCommerce 3.1.x</li>\n            <li>Fix: Style issue for vendor name in checkout page with RTL website</li>\n            <li>Fix: Style issue in vacation option panel with RTL website</li>\n            <li>Fix: Prevent global $product not defined in report abuse template</li>\n        </ul>\n        <h4>Version 2.0.4 - Released on July 04, 2017 </h4>\n        <ul>\n            <li>Fix: Removed error_log on shipping module</li>\n            <li>Fix: Save vendor profile remove shipping settings</li>\n        </ul>    \n        <h4>Version 2.0.3 - Released on Jun 23, 2017 </h4>\n        <ul>\n            <li>New: Website admin can search for suborder id</li>\n            <li>New: Support for YITH WooCommerce Email Templates</li>\n            <li>Update: All languages pot/po/mo files</li>\n            <li>Fix: No tax calculation in vendor shipping cost</li>\n            <li>Fix: Object in email header and email footer action for commission paid</li>\n            <li>Fix: Object in email header and email footer action for commission unpaid</li>\n            <li>Fix: Object in email header and email footer action for new vendor registration</li>\n            <li>Fix: Object in email header and email footer action for vendor commissions paid</li>\n            <li>Fix: Object in email header and email footer action for vendor new account</li>\n            <li>Fix: Suborder hasn\'t private meta</li>\n            <li>Fix: Unable to search all commissions suborder</li>\n            <li>Fix: Unable to create commissions table with some MySQL version</li>\n            <li>Fix: Save shipping tab lost all vendor admins</li>\n        </ul>\n        <h4>Version 2.0.2 - Released on Jun 16, 2017 </h4>\n        <ul>\n            <li>New: Parent order info in vendor suborder page</li>\n            <li>Tweak: Shipping module</li>\n        </ul>\n        <h4>Version 2.0.1 - Released on Jun 15, 2017 </h4>\n        <ul>\n            <li>Fix: Shipping doesn\'t works on variable products</li>\n			<li>Fix: Wrong shipping calculation with no vendor products in cart</li>\n			<li>Fix: Admin can\'t provide refund with plugin enabled</li>\n			<li>Update: Plugin core framework</li>\n			<li>Dev: yith_wcmv_single_product_commission_value_object hook</li>\n        </ul>\n        <h4>Version 2.0.0 - Released on Jun 12, 2017 </h4>\n        <ul>\n            <li>New: Hide/Show reviews average ratings in vendor store page</li>\n			<li>New: YITH Live Chat social icon</li>\n			<li>New: Vendor Shipping Module</li>\n			<li>Tweak: Image management</li>\n			<li>Tweak: Failure message for quick contact info</li>\n			<li>Fix: Website admin can\'t add new item to orders in backend</li>\n			<li>Fix: Vendor can\'t trash a product if \"Set products to pending review status after vendors edit them\" option is enabled</li>\n			<li>Fix: Istagram and Gplus icon doesn\'t works in vendor list shortcode</li>\n			<li>Fix: Unable to set download permissions in parent order</li>\n			<li>Fix: array_shift() expect parameter 1 to be array but WP_Error object given after the customer place an order</li>\n			<li>Dev: add yith_wcmv_is_vendor_page hook</li>\n			<li>Dev: add yith_wcmv_is_vendor_order_page hook</li>\n			<li>Dev: add yith_wcmv_is_vendor_order_details_page hook</li>\n        </ul>\n        <h4>Version 1.14.2 - Released on May 08, 2017 </h4>\n        <ul>\n            <li>Fix: Wrong \"new vendor\" notification bubble</li>\n            <li>Fix: Unable to translate \"Vendor detail\" string in new vendor registration email</li>\n            <li>Fix: Website admin can\'t add line item to new order in admin</li>\n            <li>Fix: Product commissions stop to working with WooCommerce 3.0.3 or greather</li>\n            <li>Fix: Wrong id in commissions array</li>\n            <li>Fix: Warning: json_decode() expects parameter 1 to be string in vendor dashboard</li>\n            <li>Fix: Unable to translate address placehoder</li>\n        </ul>\n        <h4>Version 1.14.1 - Released on Apr 24, 2017 </h4>\n        <ul>\n            <li>New: Option to prevent vendor edit order custom fields</li>\n            <li>Tweak: Update plugin core framework</li>\n            <li>Fix: Undefined function yit_get_propr on frontend</li>\n        </ul>\n        <h4>Version 1.14.0 - Released on Apr 19, 2017 </h4>\n        <ul>\n            <li>New: Option to show/hide vendor tab in single product page</li>\n            <li>Fix: Unable to activated PayPal Adaptive Payments add-on</li>\n            <li>Fix: Report abuse title style</li>\n            <li>Fix: added check over wc_shipping_enabled function existance, to avoid Fatal Errors with WC 2.5.x</li>\n            <li>Fix: Select2 doesn\'t show current product filter in commissions page</li>\n            <li>Fix: Select2 doesn\'t show current vendor filter in commissions page</li>\n            <li>Fix: Unable to filter by product in commissions page</li>\n            <li>Fix: Wrong shop order count on vendor dashboard</li>\n            <li>Fix: Removed the subscriptions reports with WooCommerce Subscription</li>\n            <li>Fix: Vendor can\'t add/remove admins with WooCommerce 3.0.x</li>\n            <li>Fix: Can\'t access property directly for $product->id in frontend class</li>\n            <li>Fix: Get formatted legacy deprecated since 2.4 notice</li>\n            <li>Fix: Don\'t show product variation info in vendor suborders</li>\n            <li>Fix: Don\'t show product variation info in vendor emails</li>\n        </ul>\n        <h4>Version 1.13.2 - Released on Apr 06, 2017 </h4>\n        <ul>\n            <li>New: Bubble notification for processing orders and pending commissions in vendor dashboard</li>\n            <li>New: Admin can change label \"VAT/SSN\" in plugin options</li>\n            <li>Update: Languages files</li>\n            <li>Fix: warning for deprecated varation_id on wc 3.0.0</li>\n            <li>Fix: Vendor suborder haven\'t set order total with WooCommerce 2.6</li>\n            <li>Dev: removed yith_wcmv_tax_label_admin hook</li>\n            <li>Dev: removed yith_wcmv_tax_label_frontend hook</li>\n        </ul>\n        <h4>Version 1.13.1 - Released on Mar 29, 2017 </h4>\n        <ul>\n            <li>Tweak: Code refactoring</li>\n            <li>Tweak: Remove deprecated action woocommerce_before_my_account, use the new woocommerce_account_dashboard hook</li>\n            <li>Fix: Vendor can\'t edit quote in version 1.13.0</li>\n            <li>Fix: Vendor can\'t see sales by date report in version 1.13.0</li>\n            <li>Fix: Vendor can add existing content in product editor</li>\n            <li>Fix: Vendor can\'t create percent coupon with WooCommerce 3.0-rc1</li>\n            <li>Fix: Header image size doesn\'t works</li>\n            <li>Fix: Vendor can\'t edit orders without commission</li>\n            <li>Fix: Unable to set a different sidebar for each vendor with YITH 2.0 theme</li>\n            <li>Dev: yith_wcmv_calculate_commission_amount hook</li>\n        </ul>\n        <h4>Version 1.13.0 - Released on Mar 21, 2017 </h4>\n        <ul>\n            <li>Add: Support to WooCommerce 3.0-RC1</li>\n            <li>Add: User switching. Admin can view the vendor dashboard</li>\n            <li>Fix: Report sales by date show blank screen on vendor side</li>\n            <li>Fix: Commissions by vendor report show wrong amount</li>\n            <li>Fix: Vendor can\'t see their order with YITH WooCommerce Deposits and down payments plugin</li>\n            <li>Fix: Wrong size image for vendor logo in vendor list shortcode</li>\n            <li>Fix: Logo and header image uploads in wrong place</li>\n        </ul>\n        <h4>Version 1.12.1 - Released on Mar 03, 2017 </h4>\n        <ul>\n            <li>Tweak: Removed bulk edit line from order details for vendors</li>\n            <li>Tweak: Remove dependency My Account registration -> Auto enable Vendors</li>\n            <li>Tweak: Vendor can\'t edit Cost of goods (with WC COG enabled)</li>\n            <li>Update: po/pot files</li>\n            <li>Fix: Vendor report \"Sales By Date\" show all orders instead of completed, on hold and processing</li>\n            <li>Fix: Vendor admins can\'t edit orders</li>\n            <li>Fix: Vendor can\'t add admins if hasn\'t edit_shop_orders cap</li>\n            <li>Fix: Wrong email \"Your vendor account has been approved\" on new account registration without auto enable option enabled</li>\n            <li>Dev: yith_wcmv_sales_by_date_allowed_order_status hook</li>\n        </ul>\n        <h4>Version 1.12.0 - Released on Feb 14, 2017 </h4>\n        <ul>\n            <li>New: Integration with YITH Booking for WooCommerce</li>\n            <li>New: Add option to set header image size</li>\n            <li>New: Use custom image instead of gravatar for vendor logo</li>\n            <li>New: Option to force to show vendor logo image</li>\n            <li>New: Add new style for vendor store page header</li>\n            <li>New: Option \"Show parent order id instead of vendor suborder id\" for new vendor order email</li>\n            <li>New: Option \"Show parent order id instead of vendor suborder id\" for cancelled vendor order email</li>\n            <li>New: Sort by vendor commissions filter</li>\n            <li>New: Support to WooCommerce cost of goods plugin</li>\n            <li>New: Vendor commission can be calculate include/exclude cost of goods (WooCommerce Cost of goods required)</li>\n            <li>Tweak: image size for logo and header image</li>\n            <li>Tweak: Spam filter in quick info widget</li>\n            <li>Tweak: Prevent duplicated order item meta _parent__commission_included_tax and _parent__commission_included_coupon</li>\n            <li>Tweak: Moved store link style from wp_head to wp_enqueue_scripts</li>\n            <li>Fix: Store link custom style doesn\'t works on shop page</li>\n            <li>Fix: Remove old order item meta _parent__commission_included_tax and _parent__commission_included_coupon</li>\n            <li>Fix: Vendor lost role if the owner entry level is set to subscriber instead of customer</li>\n            <li>Fix: Product bulk edit works only if WordPress admin dashboard language are set to english</li>\n            <li>Fix: Unable to retreive enable selling value for vendor with WPML</li>\n            <li>Dev: yith_wcmv_admin_order_item_headers action</li>\n            <li>Dev: yith_wcmv_checkout_order_processed action</li>\n            <li>Dev: yith_wcmv_get_line_total_amount_for_commission hook</li>\n            <li>Dev: yith_wcmv_new_commission_note hook</li>\n            <li>Dev: yith_wcmv_add_extra_commission_order_item_meta action</li>\n            <li>Dev: yith_wcmv_add_extra_commission_order_item_meta action</li>\n            <li>Dev: yith_wcmv_order_item_meta_no_sync hook</li>\n            <li>Dev: yith_wcmv_order_details_page_commission_message hook</li>\n            <li>Dev: New yith_wcmv_get_email_order_number function</li>\n        </ul>\n        <h4>Version 1.11.3 - Released on Jan 24, 2017 </h4>\n        <ul>\n            <li>Fix: Unable to get enable sales and pending vendor cap</li>\n        </ul>\n        <h4>Version 1.11.2 - Released on Jan 23, 2017 </h4>\n        <ul>\n            <li>New: Quick info widget now works on single product page</li>\n            <li>New: wpml-config.xml file</li>\n            <li>Fix: Unable to translate the \"Vendor Tab\" title with WPML</li>\n            <li>Fix: Unable to set an owner for translated vendor with WPML</li>\n            <li>Fix: Wrong message \"Set an owner\" in dashboard for translated vendor with WPML</li>\n            <li>Fix: Unable to approve translated vendor with WPML</li>\n            <li>Fix: Unable to enable/disable selling for translated vendor with WPML</li>\n            <li>Fix: Missing registration date for translated vendor with WPML</li>\n            <li>Dev: New function yith_wcmv_get_wpml_vendor_id to get the not translated vendor id</li>\n        </ul>\n        <h4>Version 1.11 - Released on Jan 18, 2017 </h4>\n        <ul>\n            <li>New: Order message to inform website admin if the vendor commission have been calculated included or excluded tax and coupon</li>\n            <li>New: Commission note to inform vendor if the commission have been calculated included or excluded tax and coupon</li>\n            <li>Tweak: Updated all pot and po/mo files</li>\n            <li>Tweak: change \"Commission date\" to \"Date\" in commission details page</li>\n            <li>Tweak: Suborder message to inform vendor if the commission have been calculated included or excluded tax and coupon</li>\n            <li>Tweak: PayPal email in commission detail page</li>\n            <li>Fix: Wrong amount refunded for commissions with tax option enabled</li>\n            <li>Fix: Wrong amount refunded for commissions with tax option disabled</li>\n            <li>Fix: Get order currency of a non-object</li>\n            <li>Fix: Wrong store name in suborder metabox if the vendor are deleted</li>\n            <li>Fix: No item total in commission detail page</li>\n            <li>Fix: No tax in vendor sub-orders</li>\n            <li>Fix: No tax in commission details page</li>\n            <li>Fix: Prevent error Call to a member function commissions_to_pay() on a non-object after an order are set to complete</li>\n            <li>Fix: Wrong currency in commission details page with Aaelia</li>\n            <li>Fix: Unable to translate some string in commission details page</li>\n            <li>Dev: _commission_included_tax order meta</li>\n            <li>Dev: _commission_included_coupon order meta</li>\n        </ul>\n        <h4>Version 1.10.1 - Released on Dec 28, 2016 </h4>\n        <ul>\n            <li>Added: New vendor field external website url</li>\n            <li>Added: Support to Aelia Currency Switcher for WooCommerce</li>\n            <li>Fixed: WooCommerce dashboard widget show duplicated sales in month in WooCommerce 2.6.x</li>\n            <li>Fixed: Unable to sort commissions by vendor and by amount</li>\n            <li>Fixed: Unable to sort commissions by Last Edit</li>\n            <li>Fixed: Wrong last edit date in new commission</li>\n            <li>Fixed: Creating default object from empty value in vendor reports</li>\n            <li>Fixed: User with Vendor and Administrator role can\'t access in backed if vendor haven\'t selling capability</li>\n            <li>Fixed: Quick Info widget doesn\'t send email with WordPress 4.7</li>\n            <li>Fixed: Warning undefined title in vendor list widget if Add it by WordPress Customize</li>\n        </ul>\n        <h4>Version 1.10 - Released on Dec 05, 2016 </h4>\n        <ul>\n            <li>Added: Support to WordPress 4.7</li>\n            <li>Fixed: Grammatical error in vendor email</li>\n            <li>Fixed: Wrong amount on Sales By Product and Sales by Category in vendor dashboard</li>\n        </ul>\n        <h4>Version 1.9.18 - Released on Nov 30, 2016 </h4>\n        <ul>\n            <li>Added: Option to prevent vendors to resend order emails</li>\n            <li>Added: Suppot to YITH PayPal Adaptive Payments for WooCommerce</li>\n            <li>Added: create_via order meta for vendor suborder</li>\n            <li>Added: yith_wcmv_send_commission_email_on_manually_update to force commissions email for manual status change</li>\n            <li>Added: yith_wcmv_become_a_vendor_button_label hook to change \"Become a vendor\" button label</li>\n            <li>Added: Support to WooCommerce Points and Rewards plugin. No double points if a customer buy a vendor product</li>\n            <li>Tweak: Commissions table creation</li>\n            <li>Fixed: Vendor can\'t delete their uploaded images</li>\n            <li>Fixed: Remove customer search from orders section in vendor dashboard</li>\n            <li>Fixed: missing tax_id and tax_amount if a customer buy a no taxable products</li>\n            <li>Fixed: no new order email to vendor if order sync option are disabled</li>\n            <li>Fixed: Unable to sort commissions list table</li>\n            <li>Fixed: Suborder lost customer information if privacy option enabled</li>\n            <li>Fixed: Vendor quote lost customer information if privacy option enabled</li>\n            <li>Fixed: Empty Commissions list with version 1.9.17</li>\n        </ul>\n        <h4>Version 1.9.17 - Released on Nov 07, 2016 </h4>\n        <ul>\n            <li>Fixed: Vendor can see all trashed orders</li>\n            <li>Fixed: Quick info widget dosn\'t show customer name and customer email</li>\n        </ul>\n        <h4>Version 1.9.16 - Released on Oct 26, 2016 </h4>\n        <ul>\n            <li>Added: Body class yith_wcmv_user_is_vendor if current logged in user is a vendor</li>\n            <li>Added: Body class yith_wcmv_user_is_vendor if current logged in user is not a vendor</li>\n            <li>Added: yith_wcmv_product_commission_field_args hook</li>\n            <li>Added: Option to remove the \"Register as a vendor\" and login form from \"Become a vendor\" page</li>\n            <li>Added: Enable vendors to add admins</li>\n            <li>Fixed: Unable to filter by attributes with pending vendor profile and YITH WooCommerce Ajax Product Filter plugin</li>\n            <li>Fixed: Wrong processing order count in WordPress menu</li>\n            <li>Fixed: Data range doesn\'t works in \"Commissions by vendor\" report</li>\n            <li>Fixed: Can\'t translate vendor vacation module with multi lingual plugins</li>\n            <li>Fixed: Double vacation message on variable products</li>\n            <li>Fixed: Prevent error on activation for add_cap and WP_Role object</li>\n            <li>Fixed: Website admin can\'t receive copy of quick info email</li>\n            <li>Fixed: Order sync option doesn\'t work</li>\n            <li>Fixed: Vendor order can\'t trigger correct action after order status changed</li>\n            <li>Fixed: Shipping and Delivery event doesn\'t added in to calendar</li>\n            <li>Fixed: Call undefined function get_current_screen() on plugin activation</li>\n            <li>Fixed: Sales by Vendor reports doesn\'t exclude on-hold, cancelled and refunded orders</li>\n        </ul>\n        <h4>Version 1.9.15 - Released on Aug 26, 2016 </h4>\n        <ul>\n            <li>Added: Support to YITH WooCommerce SMS Notifications</li>\n            <li>Added: Support to YITH WooCommerce Bulk Product Editing</li>\n            <li>Added: Resend order email for vendor in order detail page</li>\n            <li>Fixed: Conflict between product limit and other custom post type</li>\n            <li>Fixed: User can\'t add chat macro if user limit are enabled</li>\n        </ul>\n        <h4>Version 1.9.14 - Released on Aug 26, 2016 </h4>\n        <ul>\n            <li>Added: New report \"Commission by vendor\" in WooCommerce -> Reports -> Vendors</li>\n            <li>Fixed: Change text domain from \'yith_wc_product_vendors\' to \'yith-woocommerce-product-vendors\'</li>\n            <li>Fixed: Vendor list shortcodes per_page=-1 arg doesn\'t works</li>\n            <li>Fixed: No shipping address in order from RAQ</li>\n            <li>Fixed: Vendor store header doesn\'t show with filtered url</li>\n            <li>Fixed: Prevent to send SMS for vendr suborder with YITH WooCommerce SMS Notifications</li>\n        </ul>\n        <h4>Version 1.9.13 - Released on Aug 19, 2016 </h4>\n        <ul>\n            <li>Added: Support to Adventure Tours theme<li>\n            <li>Added: Set any product on which a vendor applies a change to “Pending review” status</li>\n            <li>Fixed: Vendor store description with advanced editor doesn\'t save html tags</li>\n            <li>Fixed: Vendor can change assign product to other vendors in bulk edit</li>\n            <li>Fixed: Duplicated email to customer if an order are set to on-hold status</li>\n            <li>Fixed: No shipping address in vendor email</li>\n            <li>Fixed: Vacation icon doesn\'t appears on WooCommerce 2.6</li>\n        </ul>\n        <h4>Version 1.9.12 - Released on July 14, 2016 </h4>\n        <ul>\n            <li>Added: Store description in vendor list shortcode</li>\n            <li>Fixed: Duplicated download permissions with WooCommerce 2.6</li>\n        </ul>\n        <h4>Version 1.9.11 - Released on Jun 24, 2016 </h4>\n        <ul>\n            <li>Fixed: warning on vendor dashboard with WP User Avatar plugin</li>\n            <li>Fixed: Unable to translate Address field placeholder</li>\n            <li>Fixed: When you disabled/enabled the new order email, the vendor new order email will disabled too</li>\n            <li>Fixed: Wrong Google maps API Key in widget Vendor Store Location</li>\n            <li>Fixed: Empty extra fields in vendor suborder with Bakery Theme</li>\n            <li>Fixed: Missing product variations and taxes in vendor suborder after save main order</li>\n        </ul>\n        <h4>Version 1.9.10 - Released on Jun 07, 2016 </h4>\n        <ul>\n            <li>Added: Support to extra order fields</li>\n            <li>Added: Support to YITH WooCommerce Checkout Manager</li>\n            <li>Fixed: Wrong sales report for website admin</li>\n            <li>Fixed: Disable line item edit in vendor details</li>\n            <li>Fixed: Stripe credit card refund issue when an order change status to complete</li>\n        </ul>\n        <h4>Version 1.9.9 - Released on May 25, 2016 </h4>\n        <ul>\n            <li>Fixed: The message \"X vendor shops have no owner set\" is always shown in backend</li>\n            <li>Fixed: Wrong action args in order\'s email</li>\n            <li>Fixed: No vendor products in shop loop</li>\n        </ul>\n        <h4>Version 1.9.8 - Released on May 24, 2016 </h4>\n        <ul>\n            <li>Added: Support to WooCommerce 2.6-beta-2</li>\n            <li>Added: yith_wcmv_tax_label_frontend hook</li>\n            <li>Added: yith_wcmv_tax_label_admin hook</li>\n            <li>Added: Google maps api key support</li>\n            <li>Added: Support to WooCommerce Customer/Order CSV Export</li>\n            <li>Added: Support to WordPress User Frontend</li>\n            <li>Added: Assign vendor to product with Bulk Edit</li>\n            <li>Added: Assign vendor to product with Quick Edit</li>\n            <li>Tweak: Support to WooCommerce 2.6 icon set</li>\n            <li>Fixed: 404 not found error after change the slug of vendor store</li>\n            <li>Fixed: On order complete the customer receive a duplicate email</li>\n            <li>Fixed: Vendor with no owner abort ajax checkout in frontend</li>\n            <li>Fixed: Wrong style in vendor list shortcodes with gravatar image</li>\n            <li>Fixed: Wrong position of page content and \"Vendor list\" shortcode on frontend</li>\n            <li>Fixed: Vendor store page VAT/SSN layout issue</li>\n        </ul>\n        <h4>Version 1.9.7 - Released on Apr 14, 2016 </h4>\n        <ul>\n            <li>Updated: Language files</li>\n        </ul>\n        <h4>Version 1.9.6 - Released on Apr 14, 2016 </h4>\n        <ul>\n            <li>Added: yith_wcmv_before_vendor_header e yith_wcmv_after_vendor_header hooks for vendor store page</li>\n            <li>Added: Media gallery for vendors</li>\n            <li>Added: Vendors to navigation menus</li>\n            <li>Added: New option for order and orderby for vendors list shortcodes</li>\n            <li>Added: Support to YITH WooCommerce Role Based Price Premium</li>\n            <li>Added: Support to YITH WooCommerce Advanced Product Options Premium</li>\n            <li>Added: Support to WP User Avatar plugin</li>\n            <li>Added: yith_wcmv_hide_vendor_profile hook, use this to remove Vendor Details page in vendor dashboard</li>\n            <li>Tweak: Vendor can\'t manage essential grid metabox in edit product</li>\n            <li>Tweak: Widget quick info send the email to owner if no store email was set</li>\n            <li>Fixed: Unable to edit Shop Owner and Shop Admins with WordPress 4.5</li>\n            <li>Fixed: Featured Products management doesn\'t work for vendor</li>\n            <li>Fixed: Warning on order status not found in commissions report</li>\n            <li>Fixed: Vacation module issue on frontend</li>\n            <li>Fixed: Wrong product count in vendor screen</li>\n            <li>Fixed: Wrong shop order counts</li>\n            <li>Fixed: Class YITH_Addons doesn\'t exists in vendor dashboard</li>\n            <li>Fixed: Blank \"become a vendor\" page for not logged in users</li>\n            <li>Fixed: WooCommerce dashboard widget show duplicated sales in month</li>\n            <li>Fixed: Unable to deactivated plugin in WordPress network website</li>\n            <li>Fixed: Wrong order total for vendors (order total is without taxes)</li>\n            <li>Fixed: no email after an order is complete from website admin</li>\n            <li>Removed: Essential grid metabox in add product page</li>\n            <li>Removed: yith_wcmv_show_vendor_profile hook</li>\n        </ul>\n        <h4>Version 1.9.5 - Released on Mar 02, 2016 </h4>\n        <ul>\n            <li>Added: Support to YITH WooCommerce PDF Invoce and Shipping list Premium</li>\n            <li>Added: Support to YITH WooCommerce Request a quote Premium</li>\n            <li>Added: Support to YITH WooCommerce Catalog Mode Premium</li>\n            <li>Updated: All .po/.mo files</li>\n            <li>Fixed: Translation issue in backend</li>\n            <li>Fixed: Wrong tax calculation in vendor order</li>\n            <li>Fixed: Admin can\'t enable vacation module</li>\n            <li>Fixed: Vendor can edit reviews without capability in product details page</li>\n            <li>Fixed: Widget quick info use owner email if no store email was set</li>\n            <li>Fixed: Content issue in Become a Vendor page</li>\n            <li>Fixed: Wrong total sales number with free orders</li>\n            <li>Fixed: Wrong order total count in vendor admin</li>\n            <li>Fixed: Featured products management doesn\'t work in edit product page for vendor</li>\n            <li>Fixed: Privacy option for vendor orders doesn\'t hide email in order list</li>\n        </ul>\n        <h4>Version 1.9.4 - Released on Feb 15, 2016 </h4>\n        <ul>\n            <li>Added: yith_vendor_not_allowed_reports hook for not allowed report for vendor</li>\n            <li>Fixed: Vendor can\'t access to admin area if GeoDirectory plugin is activated</li>\n            <li>Fixed: Report abuse link conflict with enfold theme</li>\n            <li>Fixed: PrettyPhoto js library doesn\'t exists</li>\n            <li>Fixed: Vendor Shop Owner removed after saving vendor data</li>\n            <li>Removed: YITH WooCommerce Mailchimp and Jetpack Dashboard widgets</li>\n        </ul>\n        <h4>Version 1.9.3 - Released on Feb 08, 2016 </h4>\n        <ul>\n            <li>Fixed: Vendor Shop Owner removed after saving of bank account (IBAN/BIC)</li>\n            <li>Fixed: Spinner doesn\'t show in admin</li>\n            <li>Fixed: Skip review capability doesn\'t work in frontend registration</li>\n        </ul>\n        <h4>Version 1.9.2 - Released on Feb 05, 2016 </h4>\n        <ul>\n            <li>Fixed: Duplicate order in WooCommerce -&rsaquo; Reports -&rsaquo; Sales by date for admin</li>\n            <li>Fixed: Unable to translate vendor registration form placeholder</li>\n            <li>Fixed: Order actions doesn\'t work for vendor</li>\n            <li>Fixed: Admin can\'t remove vendor owner</li>\n        </ul>\n        <h4>Version 1.9.1 - Released on Feb 03, 2016 </h4>\n        <ul>\n            <li>Added: Featured products management can override for each vendor</li>\n            <li>Fixed: Customer can\'t register if terms and conditions fields is set to required</li>\n            <li>Fixed: Vendors can\'t save text editor style in store description field</li>\n            <li>Fixed: Warning if not vendor owner was set</li>\n        </ul>\n        <h4>Version 1.9.0 - Released on Feb 02, 2016 </h4>\n        <ul>\n            <li>Added: New socials fields (Vimeo, Instagram, Pinterest, Flickr, Behance, Tripadvisor)</li>\n            <li>Added: Admin can change the Vendor tab name</li>\n            <li>Added: Legal notes fields for vendor</li>\n            <li>Added: Support to WooCommerce 2.5</li>\n            <li>Added: Support to YITH WooCommerce Customize My Account Page Premium</li>\n            <li>Added: Select if you want to show header image or gravatar in vendor list shortcode</li>\n            <li>Added: IBAN/BIC fields in vendor personal information</li>\n            <li>Added: Admin can disable payment information in order details page for vendor</li>\n            <li>Added: Terms and conditions fields for vendor in registration and become a vendor pages</li>\n            <li>Updated: 3rd-party FontAwesome lib</li>\n            <li>Updated: 3rd-party PayPal lib</li>\n            <li>Updated: Language files</li>\n            <li>Fixed: Missing text domain in some strings in text domain</li>\n            <li>Fixed: Duplicate order if the customer pay with external gateway (like PayPal, Stripe, Simplify, ecc.)</li>\n            <li>Fixed: Unable to show become a vendor form in My Account endpoint</li>\n            <li>Fixed: Admin can\'t set vendor owner/admins if Yoast SEO plugin is activate on website</li>\n            <li>Fixed: Warning in WooCommerce Email page (in admin)</li>\n            <li>Fixed: Call to undefined function get_current_screen() in admin</li>\n            <li>Fixed: Wrong data in Sales by date report for vendor</li>\n            <li>Fixed: Missing WooCommerce font for vacation icon</li>\n            <li>Fixed: VAT validation issue in become a vendor page</li>\n            <li>Tweak: Replaced old chosen script to select2</li>\n            <li>Tweak: Become a vendor form</li>\n            <li>Tweak: New vendor registration form</li>\n            <li>Tweak: Add \"Vendor\" label for recipient in WooCommerce -&rsaquo; Settings -&rsaquo; Emails</li>\n            <li>Moved: Vendor\'s VAT/SSN from \"Vendor Settings\" to \"Front page\" in Vendor dashboard</li>\n            <li>Removed: add_select_customer_script() method from admin class</li>\n            <li>Removed: enqueue_ajax_choosen() method from admin class</li>\n            <li>Removed: vendor_admins_chosen() method from admin class</li>\n        </ul>\n        <h4>Version 1.8.4 - Released on Jan 12, 2016 </h4>\n        <ul>\n            <li>Fixed: Product variations in order with latest WooCommerce</li>\n        </ul>\n        <h4>Version 1.8.3 - Released on Jan 07, 2016 </h4>\n        <ul>\n            <li>Added: Advanced text editor for vendor description</li>\n            <li>Fixed: Store header wrapper stylesheet error, no margin bottom</li>\n            <li>Fixed: Vendor table column style</li>\n            <li>Fixed: Vendor with no order can see all shop orders</li>\n            <li>Fixed: yith_vendors not defined in vendor taxonomy page</li>\n            <li>Fixed: User with vendor role but without store can edit products, order, coupons, ecc.</li>\n            <li>Fixed: add to cart button disappears in Nielsen Theme with vacation module enabled</li>\n        </ul>\n        <h4>Version 1.8.2 - Released on Dec 17, 2015 </h4>\n        <ul>\n            <li>Added: Hide customer section in order details page for vendor</li>\n            <li>Added: Calculate commission include tax</li>\n        </ul>\n        <h4>Version 1.8.1 - Released on Dec 16, 2015 </h4>\n        <ul>\n            <li>Fixed: Vendor lost translated product if edit by website admin</li>\n            <li>Fixed: Support to WPML in vendor store page (frontend)</li>\n            <li>Fixed: Can\'t create vendor sidebar in YITH Thmemes with WordPress 4.4</li>\n            <li>Fixed: WooCommerce Report can\'t show correct information</li>\n        </ul>\n        <h4>Version 1.8.0 - Released on Dec 11, 2015 </h4>\n        <ul>\n            <li>Added: Support to WordPress 4.4</li>\n            <li>Added: Disabled vendor logo (gravatar) image in each vendor store page</li>\n            <li>Added: Change vendor logo (gravatar) image size</li>\n            <li>Added: Support to YITH WooCommerce Waiting List (vendor can manage waiting list)</li>\n            <li>Added: Support to YITH WooCommerce Order Tracking (vendor can manage tracking code)</li>\n            <li>Added: Support to YITH WooCommerce Membership (vendor can manage membership plans)</li>\n            <li>Added: Support to YITH WooCommerce Subscription (vendor can manage subscription)</li>\n            <li>Added: Support to YITH WooCommerce Badge Management (vendor can manage product badges)</li>\n            <li>Added: Support to YITH WooCommerce Survey (vendor can manage survey)</li>\n            <li>Added: Support to YITH WooCommerce Coupon Email System (vendor can send coupon by mail)</li>\n            <li>Added: yith_wcmv_vendor_taxonomy_args hook tyo change taxonomy rewrite rules</li>\n            <li>Added: Change vendor store taxonomy rewrite slug option</li>\n            <li>Added: Antispam filter for vendor registration form</li>\n            <li>Added: Antispam filter for becvome a vendor form</li>\n            <li>Tweak: Flush rewrite rules to prevent 404 not found page after plugin update in vendor store page</li>\n            <li>Tweak: Vendor taxonomy menu management</li>\n            <li>Fixed: Vendor can\'t see admin dashboard and vendor rules after plugin update</li>\n            <li>Fixed: Undefined suborder_id when add inline item to parent order</li>\n            <li>Fixed: Admin and Vendor can\'t view trashed orders</li>\n            <li>Fixed: Issue with YITH WooCommerce Gift Card in checkout page</li>\n            <li>Fixed: Lost products after edit vendor slug</li>\n            <li>Fixed: New vendor without user role</li>\n            <li>Fixed: Vendor information validation on become a vendor page</li>\n            <li>Fixed: WPML issue vendor can edit her/his products in other languages</li>\n        </ul>\n        <h4>Version 1.7.3 - Released on Nov 19, 2015 </h4>\n        <ul>\n            <li>Tweak: Performance increase use php construct instanceof instead of is_a function</li>\n            <li>Tweak: Order management (added order version in DB)</li>\n            <li>Fixed: Vendor can\'t add or upload a store image</li>\n            <li>Fixed: Store Name and Gravatar issue</li>\n            <li>Fixed: Can\'t see product variation in vendor order details</li>\n            <li>Fixed: Website admin can\'t assigne products to a specific vendor</li>\n        </ul>\n        <h4>Version 1.7.2 - Released on Nov 12, 2015 </h4>\n        <ul>\n            <li>Updated: Language files</li>\n            <li>Fixed: Shop manager can\'t edit vendors profile</li>\n            <li>Fixed: Customer can\'t register if VAT/SSN fields is set to required</li>\n        </ul>\n        <h4>Version 1.7.1 - Released on Nov 10, 2015 </h4>\n        <ul>\n            <li>Added: Support to YITH Product Size Charts for WooCommerce Premium</li>\n            <li>Added: Support to YITH WooCommerce Name Your Price Premium</li>\n        </ul>\n        <h4>Version 1.7.0 - Released on Oct 29, 2015 </h4>\n        <ul>\n            <li>Added: Refund management</li>\n            <li>Added: New user role \"Vendor\" (Dashboard-&rsaquo;Users)</li>\n            <li>Added: yit_wcmv_plugin_options_capability hook for admin panel capabilities</li>\n            <li>Added: VAT/SSN field in vendor registration</li>\n            <li>Added: yith_wcmv_vendor_capabilities hook</li>\n            <li>Added: Store description in vendor page</li>\n            <li>Updated: Languages file</li>\n            <li>Tweak: User capabilities</li>\n            <li>Tweak: Performance improved with new plugin core 2.0</li>\n            <li>Fixed: Delete user capabilities after deactive or remove plugin</li>\n            <li>Fixed: Fields \"Commission id\" in commission table doesn\'t display correctly</li>\n            <li>Fixed: Unable to create new vendor account in front-end</li>\n            <li>Fixed: Wrong user capabilities after delete vendor account</li>\n            <li>Fixed: Add order link in dashboard menu</li>\n            <li>Fixed: Issue with Date filter in Vendor sales report</li>\n        </ul>\n        <h4>Version 1.6.5 - Released on Oct 16, 2015 </h4>\n        <ul>\n            <li>Updated: Italian translation</li>\n            <li>Fixed: Product amount limit doesn\'t calculate correct vendor products</li>\n        </ul>\n        <h4>Version 1.6.4 - Released on Oct 15, 2015 </h4>\n        <ul>\n            <li>Fixed: Vendor disabled sales after save option</li>\n            <li>Fixed: Become a vendor page doesn\'t show for not logged in users</li>\n        </ul>\n        <h4>Version 1.6.3 - Released on Oct 15, 2015 </h4>\n        <ul>\n            <li>Added: Become a vendor registration form</li>\n            <li>Added: Support to YITH Live Chat Premium</li>\n            <li>Added: Disable user gravatar in vendor\'s store page</li>\n            <li>Tweak: Support to YITH Nielsen theme</li>\n            <li>Tweak: Custom post type capabilities</li>\n            <li>Updated: Language pot file</li>\n            <li>Fixed: Option deps doesn\'t work</li>\n            <li>Fixed: Can\'t translate string localized by esc_attr__ and esc_attr_e function</li>\n            <li>Fixed: Print wrong commission rate value after insert new vendor by admin</li>\n        </ul>\n        <h4>Version 1.6.2 - Released on Oct 08, 2015 </h4>\n        <ul>\n            <li>Added: Auto enable vendor account after registration</li>\n            <li>Added: Seller vacation module</li>\n            <li>Updated: Language pot file</li>\n            <li>Fixed: Order email issue</li>\n            <li>Removed: Old Product -&rsaquo; Vendors admin menu link</li>\n        </ul>\n        <h4>Version 1.6.1 - Released on Sept 30, 2015 </h4>\n        <ul>\n            <li>Updated: Italian translation</li>\n            <li>Updated: pot language file</li>\n            <li>Fixed: checkout abort if no store owner set</li>\n        </ul>\n        <h4>Version 1.6.0 - Released on Sept 29, 2015 </h4>\n        <ul>\n            <li>Added: Order Management</li>\n            <li>Added: Support to YITH Live Chat</li>\n            <li>Added: Support to WordPress 4.3</li>\n            <li>Added: \"Sold by vendor\" in order details page</li>\n            <li>Added: \"Sold by vendor\" in cart details page</li>\n            <li>Added: \"Sold by vendor\" in checkout details page</li>\n            <li>Added: \"Sold by vendor\" in My Account -> View order page</li>\n            <li>Added: yith_wcmv_register_as_vendor_text hook for \"Register as a vendor\" text on frontend</li>\n            <li>Added: yith_wcmv_store_header_class hook for vendor store header wrapper classes</li>\n            <li>Added: yith_wcmv_header_img_class hook for vendor store header image classes</li>\n            <li>Added: New vendor status \"no-owner\" in vendor taxonomy page in admin</li>\n            <li>Added: New \"Vendors\" main menu item</li>\n            <li>Added: yith_wcmv_show_vendor_name_template filter to prevent load vendor name template</li>\n            <li>Added: YITH Essential Kit for WooCommerce #1 support</li>\n            <li>Added: Dashboard notification for products needs to approve</li>\n            <li>Added: New option \"Send a copy to website owner\" in Quick Info widget</li>\n            <li>Updated: Italian translation</li>\n            <li>Updated: pot language file</li>\n            <li>Tweak: Commission rate column in commission table</li>\n            <li>Tweak: Support to WooCommerce 2.4</li>\n            <li>Tweak: WooCommerce option panel with the latest WC Version</li>\n            <li>Tweak: Javascript code optimization</li>\n            <li>Tweak: Commissions list order by descending commission ids</li>\n            <li>Fixed: Prevent to edit other vendor reviews</li>\n            <li>Fixed: Add new post button doesn\'t display</li>\n            <li>Fixed: Unable to add Shop coupon with product amount option enabled</li>\n            <li>Fixed: Vendor don\'t see shop coupon page with product amount option enabled</li>\n            <li>Fixed: Coupon and Reviews option issue after the first installation</li>\n            <li>Fixed: Reviews list not filter comments if vendor have no products</li>\n            <li>Fixed: Recent comment dashboard widget in vendor administrator</li>\n            <li>Fixed: Wrong search in Add/Edit product for Grouped product</li>\n            <li>Fixed: Remove \"Add new\" post types menu from wp-admin bar</li>\n            <li>Fixed: No default value \"per_page\" in yith_wcmv_list shortcodes</li>\n            <li>Fixed: Add vendor image issue in italian language</li>\n            <li>Fixed: Unable to translate \"Edit extra info\" button in admin</li>\n            <li>Fixed: Chart GroupBy parameter doesn\'t exist in Vendor Reports</li>\n            <li>Fixed: Warning on vendor reviews list in admin</li>\n            <li>Fixed: Warning \"cart item key not found\" on checkout page</li>\n            <li>Fixed: Vendors don\'t receive the email order</li>\n            <li>Fixed: Auto sync commission and order status</li>\n            <li>Fixed: Undefined index: hide_from_guests in Quick Info widget</li>\n            <li>Fixed: Vendor description tab translation issue with qTranslateX plugin</li>\n        </ul>\n        <h4>Version 1.5.2</h4>\n        <ul>\n            <li>Fixed: Unable to login in vendor dashboard using particular themes</li>\n        </ul>\n        <h4>Version 1.5.1</h4>\n        <ul>\n            <li>Added: Support to WooCommerce 2.4</li>\n            <li>Added: \"Sold by vendor\" in commission page</li>\n            <li>Tweak: Plugin Core Framework</li>\n            <li>Fixed: Vendor don\'t see product page with product amount enabled</li>\n        </ul>\n        <h4>Version 1.5.0</h4>\n        <ul>\n            <li>Added: New order actions: \"New order\" and \"Cancelled order\" for vendor</li>\n            <li>Added: New order email options in WooCommerce > Settings > Emails > New order (for vendor)</li>\n            <li>Added: Cancelled order email options in WooCommerce > Settings > Emails > New order (for vendor)</li>\n            <li>Added: Minimum value for commission withdrawals</li>\n            <li>Added: Featured products management option</li>\n            <li>Added: Shortcodes for list of vendors</li>\n            <li>Added: Item sold information in single product page</li>\n            <li>Added: Total sales information in vendor page</li>\n            <li>Added: yith_wcmv_header_icons_class hook to change header icons in vendor page</li>\n            <li>Added: YITH WooCommerce Ajax Product Filter Support</li>\n            <li>Added: Italian language file</li>\n            <li>Added: WPML Support</li>\n            <li>Updated: pot language file</li>\n            <li>Fixed: Wrong order date in \"Vendors Sales\" report</li>\n            <li>Fixed: Can\'t locate email templates</li>\n            <li>Fixed: Prevent double instance in singleton class</li>\n            <li>Fixed: Hide store header if vendor account is disabled</li>\n            <li>Fixed: Variations don\'t show commission detail page</li>\n            <li>Fixed: New order email notification</li>\n        </ul>\n        <h4>Version 1.4.4</h4>\n        <ul>\n            <li>Updated: pot language file</li>\n            <li>Fixed: Fatal error in the commision page for deleted orders</li>\n        </ul>\n        <h4>Version 1.4.3</h4>\n        <ul>\n            <li>Fixed: Plugin does not recognize the languages file</li>\n        </ul>\n        <h4>Version 1.4.2</h4>\n        <ul>\n            <li>Fixed: Vendor can see all custom post types</li>\n        </ul>\n        <h4>Version 1.4.1</h4>\n        <ul>\n            <li>Added: Enable/Disable seller capabilities Bulk action</li>\n            <li>Added: Report abuse option</li>\n            <li>Updated: Plugin default language file</li>\n            <li>Fixed: Quick contact info widget text area style</li>\n            <li>Fixed: Vendors bulk action string localizzation</li>\n            <li>Removed: Old taxonomy bulk action hook</li>\n        </ul>\n        <h4>Version 1.4.0</h4>\n        <ul>\n            <li>Added: Vendors can manage customer reviews on their products</li>\n            <li>Added: Vendor can manage coupons for their products</li>\n            <li>Added: Recent Comments dashboard widget</li>\n            <li>Added: Recent Reviews dashboard widget</li>\n            <li>Fixed: Store header image on Firefox and Safari</li>\n            <li>Fixed: Wrong commission link in order page</li>\n        </ul>\n        <h4>Version 1.3.0</h4>\n        <ul>\n            <li>Added: Bulk Action in Vendors table</li>\n            <li>Added: Register a new vendor from front end</li>\n            <li>Added: yith_frontend_vendor_name_prefix hook to change the \"by\" prefix in loop and single product page</li>\n            <li>Added: yith_single_product_vendor_tab_name hook to change the title of \"Vendor\" tab in single product page</li>\n            <li>Added: Customize submit label in quick info widget</li>\n            <li>Added: Option to limit the vendor product amount</li>\n            <li>Added: Option to hide the quick info widget from guests</li>\n            <li>Added: yith_wpv_quick_info_button_class hook for custom css classes to quick info button</li>\n            <li>Added: Option to hide the vendor name in Shop page</li>\n            <li>Added: Option to hide the vendor name in Single product page</li>\n            <li>Added: Option to hide the vendor name in Product category page</li>\n            <li>Updated: Plugin default language file</li>\n            <li>Fixed: Store header on mobile</li>\n            <li>Fixed: Unable to rewrite frontend css on child theme</li>\n            <li>Fixed: Changed \"Product Vendors\" label  to \"Vendor\" in product list table</li>\n            <li>Fixed: Wrong default title in store location and quick info widgets</li>\n            <li>Fixed: Widget Vendor list: option \"Hide this widget on vendor page\" doesn\'t work</li>\n            <li>Fixed: Spelling error in Quick Info widget. Change the label \"Object\" to \"Subject\"</li>\n            <li>Removed: Old sidebar template</li>\n            <li>Removed: Old default.po file</li>\n        </ul>\n        <h4>Version 1.2.0</h4>\n        <ul>\n            <li>Initial release</li>\n        </ul>\n        \n    \";s:7:\"package\";N;s:6:\"plugin\";s:46:\"yith-woocommerce-multi-vendor-premium/init.php\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.2.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.2.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:7:\"default\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";s:7:\"default\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(891, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1513914977;s:15:\"version_checked\";s:5:\"4.8.4\";s:12:\"translations\";a:0:{}}', 'no'),
(892, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"areebvohra@gmail.com\";s:7:\"version\";s:5:\"4.8.4\";s:9:\"timestamp\";i:1513697366;}', 'no'),
(1065, '_transient_timeout_wc_related_42', '1513848607', 'no'),
(1066, '_transient_wc_related_42', 'a:0:{}', 'no'),
(1124, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1513920035', 'no'),
(1125, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:2:\"::\";}s:6:\"events\";a:0:{}}', 'no'),
(1391, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(1400, '_site_transient_timeout_ure_caps_readable', '1513795944', 'no'),
(1401, '_site_transient_ure_caps_readable', '1', 'no'),
(1416, 'woocommerce_version', '3.2.6', 'yes'),
(1417, 'woocommerce_db_version', '3.2.6', 'yes'),
(1425, 'yith_wcmv_setup', '1', 'yes'),
(1426, 'yith_wcmv_version', '1.14.0', 'yes'),
(1427, '_site_transient_timeout_available_translations', '1513806445', 'no'),
(1428, '_site_transient_available_translations', 'a:111:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-09 10:36:40\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-07-29 08:49:40\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-08 13:11:50\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.4/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-12 13:04:42\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-05 09:44:12\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-21 05:42:26\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 08:46:26\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-13 20:49:00\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-03 23:25:51\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-05 15:54:18\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/4.8.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-05 15:55:17\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-09-09 11:53:31\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:72:\"http://downloads.wordpress.org/translation/core/4.8.4/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-09-09 11:51:58\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-17 21:52:40\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-06 02:09:59\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-06 04:53:41\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-06 21:51:20\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-06 08:21:28\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:53:43\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.7/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-09 01:07:24\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-15 23:35:48\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-07-30 16:09:17\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-13 17:00:30\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-01 17:54:52\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-15 14:57:32\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-16 03:17:36\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 16:37:11\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-05 15:31:51\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-06-09 15:50:45\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-28 11:00:29\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.3/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-18 16:10:50\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-07-28 09:14:18\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-05 14:21:50\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-06 16:43:49\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-13 21:13:24\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-12-06 13:22:56\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-24 00:17:00\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-07 15:11:19\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-23 10:52:11\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-23 23:16:21\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-27 05:53:06\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-09 07:51:37\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.3/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-10 10:29:02\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-09 06:06:41\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-22 15:33:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.3/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-10 13:54:32\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-15 19:49:17\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.7/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-09-30 06:25:41\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-17 12:44:38\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-02 21:02:39\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-05 06:45:20\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-15 11:56:12\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-15 11:57:39\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/4.8.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-16 17:21:51\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-25 10:02:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-12-02 15:24:38\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-06 13:10:35\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-12-19 23:09:21\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-12-11 15:10:42\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:68:\"http://downloads.wordpress.org/translation/core/4.8.4/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-12-15 11:10:30\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-05 14:14:27\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-29 12:16:07\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-16 18:45:50\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-07 10:21:58\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-29 20:58:15\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-16 14:19:30\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-07 02:08:56\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.3/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-13 22:07:36\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-11-02 17:05:02\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.3/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-06 09:15:16\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.4/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-15 05:40:58\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-10-03 09:08:47\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.8.3/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-15 21:19:35\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.8.4\";s:7:\"updated\";s:19:\"2017-11-06 00:37:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-09-12 11:35:05\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.8.3/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(1531, 'category_children', 'a:0:{}', 'yes'),
(1557, '_transient_timeout__woocommerce_helper_updates', '1513883089', 'no'),
(1558, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"98d544e60afebf2d4e3fbf223d68077d\";s:7:\"updated\";i:1513839889;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1559, 'wc_bookings_version', '1.10.1', 'yes'),
(1590, '_site_transient_timeout_browser_9ec285cc711c87e45c9244f4f89fc994', '1514445566', 'no'),
(1591, '_site_transient_browser_9ec285cc711c87e45c9244f4f89fc994', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"57.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(1681, '_transient_timeout_yit_panel_sidebar_remote_widgets', '1513931290', 'no'),
(1682, '_transient_yit_panel_sidebar_remote_widgets', 'a:0:{}', 'no'),
(1683, '_transient_timeout_yit_panel_sidebar_remote_widgets_update', '1513931290', 'no'),
(1684, '_transient_yit_panel_sidebar_remote_widgets_update', '1', 'no'),
(1748, 'product_cat_children', 'a:0:{}', 'yes'),
(1850, '_transient_timeout_wc_related_91', '1513960874', 'no'),
(1851, '_transient_wc_related_91', 'a:0:{}', 'no'),
(2127, '_transient_orders-transient-version', '1513876522', 'yes'),
(2140, '_transient_timeout_gform_update_info', '1513962334', 'no'),
(2141, '_transient_gform_update_info', 'a:5:{s:12:\"is_valid_key\";s:1:\"0\";s:15:\"expiration_time\";i:0;s:7:\"version\";s:5:\"1.7.9\";s:3:\"url\";s:0:\"\";s:9:\"offerings\";a:0:{}}', 'no'),
(2212, '_site_transient_timeout_theme_roots', '1513916777', 'no'),
(2213, '_site_transient_theme_roots', 'a:4:{s:9:\"shop-isle\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(2214, '_transient_timeout_wc_report_sales_by_date', '1514005297', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2215, '_transient_wc_report_sales_by_date', 'a:16:{s:32:\"ac886f77290cb4805e8dc7013a4b9419\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2017-12-21 16:44:00\";}}s:32:\"7b6daedfcac0a68640c3e68eef1b6696\";a:0:{}s:32:\"9b3008727a29bdc64723333d99268452\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2017-12-21 16:44:00\";}}s:32:\"637624a084dc93559150a9330069e594\";N;s:32:\"c7ef2d2bfddeb3f4e8f3e5de48324c52\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:3:\"100\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2017-12-21 16:44:00\";}}s:32:\"cebd733092123dbbc3d38ac10e924547\";a:0:{}s:32:\"4703cded6c2885fe7d7143d142949f5d\";a:0:{}s:32:\"9e6af98214bc9be6cf3bc3a2da37797e\";a:0:{}s:32:\"7bc0b76d2c3c0ef4d66af2f517a69087\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2017-12-21 16:44:00\";}}s:32:\"041fc66ac446929007b12126732387af\";a:0:{}s:32:\"2155c7b5fe38b9ac716a32ac4d342afe\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2017-12-21 16:44:00\";}}s:32:\"4addfde237b34498c5e31994ebae32f2\";N;s:32:\"d9ba69d5da50ba6030e5db9394986663\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:3:\"100\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2017-12-21 16:44:00\";}}s:32:\"43323fd684459266b172efc117132028\";a:0:{}s:32:\"4998d3e813e3d55343fb468e7803c485\";a:0:{}s:32:\"8a45cf99f39e59ba91907d1edd758fb8\";a:0:{}}', 'no'),
(2216, '_transient_timeout_wc_admin_report', '1514001389', 'no'),
(2217, '_transient_wc_admin_report', 'a:2:{s:32:\"37a38db7b73de908b7a9691c61adc69f\";a:1:{i:0;O:8:\"stdClass\":2:{s:15:\"sparkline_value\";s:3:\"100\";s:9:\"post_date\";s:19:\"2017-12-21 16:44:00\";}}s:32:\"02e5a0706914b160825e0f0aef944bea\";a:1:{i:0;O:8:\"stdClass\":3:{s:10:\"product_id\";s:2:\"91\";s:15:\"sparkline_value\";s:1:\"1\";s:9:\"post_date\";s:19:\"2017-12-21 16:44:00\";}}}', 'no'),
(2222, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1513958191', 'no'),
(2223, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(2224, '_transient_timeout_GFCache_311d64ed6506ac319c20d5ee33e9ada0', '1513916578', 'no'),
(2225, '_transient_GFCache_311d64ed6506ac319c20d5ee33e9ada0', '1', 'no'),
(2229, '_transient_timeout_wc_related_102', '1514002853', 'no'),
(2230, '_transient_wc_related_102', 'a:1:{i:0;s:2:\"87\";}', 'no'),
(2329, '_transient_timeout_wc_term_counts', '1516511834', 'no'),
(2330, '_transient_wc_term_counts', 'a:4:{i:24;s:1:\"2\";i:17;s:1:\"1\";i:25;s:1:\"1\";i:28;s:1:\"1\";}', 'no'),
(2331, '_transient_timeout_wc_related_87', '1514007963', 'no'),
(2332, '_transient_wc_related_87', 'a:1:{i:0;s:3:\"102\";}', 'no'),
(2370, '_transient_is_multi_author', '0', 'yes'),
(2387, '_transient_timeout_wc_cbp_d9c8fef02ad509b93972da2d216f8eb2', '1516512221', 'no'),
(2388, '_transient_wc_cbp_d9c8fef02ad509b93972da2d216f8eb2', 'a:0:{}', 'no'),
(2433, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:9:\"moderated\";s:1:\"1\";s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:2;s:3:\"all\";i:2;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(2438, '_transient_timeout_wc_products_will_display_23_1513920220', '1516513578', 'no'),
(2439, '_transient_wc_products_will_display_23_1513920220', '1', 'no'),
(2456, '_transient_timeout_GFCache_09f2df8656215062a2fa70061c93b8bd', '1513921956', 'no'),
(2457, '_transient_GFCache_09f2df8656215062a2fa70061c93b8bd', 'a:0:{}', 'no'),
(2458, '_transient_timeout_GFCache_0f7cb8672a8b31abf33b76f7841d03ff', '1513921956', 'no'),
(2459, '_transient_GFCache_0f7cb8672a8b31abf33b76f7841d03ff', 'a:1:{i:0;O:8:\"stdClass\":2:{s:7:\"form_id\";s:1:\"2\";s:10:\"view_count\";s:1:\"3\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_wp_page_template', 'default'),
(4, 4, '_edit_lock', '1513454832:1'),
(5, 7, '_wp_attached_file', '2017/12/home-service-690.jpg'),
(6, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:690;s:6:\"height\";i:390;s:4:\"file\";s:28:\"2017/12/home-service-690.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"home-service-690-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"home-service-690-300x170.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:170;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:28:\"home-service-690-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:28:\"home-service-690-500x390.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:390;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:26:\"home-service-690-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 6, '_wp_trash_meta_status', 'publish'),
(8, 6, '_wp_trash_meta_time', '1513454892'),
(9, 8, '_wp_trash_meta_status', 'publish'),
(10, 8, '_wp_trash_meta_time', '1513454926'),
(11, 9, '_wp_trash_meta_status', 'publish'),
(12, 9, '_wp_trash_meta_time', '1513454959'),
(13, 15, '_wp_attached_file', '2017/12/service-industry-768x384.jpg'),
(14, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:768;s:6:\"height\";i:384;s:4:\"file\";s:36:\"2017/12/service-industry-768x384.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"service-industry-768x384-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"service-industry-768x384-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"service-industry-768x384-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"service-industry-768x384-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"service-industry-768x384-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"service-industry-768x384-555x384.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:36:\"service-industry-768x384-750x384.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:36:\"service-industry-768x384-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:36:\"service-industry-768x384-500x384.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:34:\"service-industry-768x384-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 15, '_wp_attachment_custom_header_last_used_shop-isle', '1513455296'),
(16, 15, '_wp_attachment_is_custom_header', 'shop-isle'),
(17, 14, '_wp_trash_meta_status', 'publish'),
(18, 14, '_wp_trash_meta_time', '1513455296'),
(19, 16, '_menu_item_type', 'post_type'),
(20, 16, '_menu_item_menu_item_parent', '0'),
(21, 16, '_menu_item_object_id', '4'),
(22, 16, '_menu_item_object', 'page'),
(23, 16, '_menu_item_target', ''),
(24, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(25, 16, '_menu_item_xfn', ''),
(26, 16, '_menu_item_url', ''),
(37, 18, '_menu_item_type', 'post_type'),
(38, 18, '_menu_item_menu_item_parent', '0'),
(39, 18, '_menu_item_object_id', '12'),
(40, 18, '_menu_item_object', 'page'),
(41, 18, '_menu_item_target', ''),
(42, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 18, '_menu_item_xfn', ''),
(44, 18, '_menu_item_url', ''),
(55, 20, '_menu_item_type', 'post_type'),
(56, 20, '_menu_item_menu_item_parent', '0'),
(57, 20, '_menu_item_object_id', '13'),
(58, 20, '_menu_item_object', 'page'),
(59, 20, '_menu_item_target', ''),
(60, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(61, 20, '_menu_item_xfn', ''),
(62, 20, '_menu_item_url', ''),
(82, 25, '_wp_trash_meta_status', 'publish'),
(83, 25, '_wp_trash_meta_time', '1513455500'),
(84, 26, '_wp_trash_meta_status', 'publish'),
(85, 26, '_wp_trash_meta_time', '1513455508'),
(86, 23, '_edit_lock', '1513921781:1'),
(87, 23, '_edit_last', '1'),
(88, 23, '_wp_page_template', 'default'),
(89, 23, '_wpb_vc_js_status', 'true'),
(90, 23, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(91, 13, '_edit_lock', '1513455755:1'),
(92, 33, '_wp_trash_meta_status', 'publish'),
(93, 33, '_wp_trash_meta_time', '1513580773'),
(94, 36, '_wp_trash_meta_status', 'publish'),
(95, 36, '_wp_trash_meta_time', '1513580933'),
(96, 38, '_wp_trash_meta_status', 'publish'),
(97, 38, '_wp_trash_meta_time', '1513580962'),
(98, 40, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(99, 40, '_wc_review_count', '0'),
(100, 40, '_wc_rating_count', 'a:0:{}'),
(101, 40, '_wc_average_rating', '0'),
(102, 40, '_edit_lock', '1513581413:2'),
(103, 41, '_wp_attached_file', '2017/12/electrician.png'),
(104, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:23:\"2017/12/electrician.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"electrician-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"yith_vendors_gravatar\";a:4:{s:4:\"file\";s:21:\"electrician-62x62.png\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"electrician-83x103.png\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:21:\"electrician-58x72.png\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 42, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(106, 42, '_wc_review_count', '0'),
(107, 42, '_wc_rating_count', 'a:0:{}'),
(108, 42, '_wc_average_rating', '0'),
(109, 42, '_edit_lock', '1513581850:2'),
(110, 42, '_edit_last', '1'),
(111, 42, '_sku', ''),
(112, 42, '_regular_price', '100'),
(113, 42, '_sale_price', ''),
(114, 42, '_sale_price_dates_from', ''),
(115, 42, '_sale_price_dates_to', ''),
(116, 42, 'total_sales', '0'),
(117, 42, '_tax_status', 'taxable'),
(118, 42, '_tax_class', ''),
(119, 42, '_manage_stock', 'no'),
(120, 42, '_backorders', 'no'),
(121, 42, '_sold_individually', 'no'),
(122, 42, '_weight', ''),
(123, 42, '_length', ''),
(124, 42, '_width', ''),
(125, 42, '_height', ''),
(126, 42, '_upsell_ids', 'a:0:{}'),
(127, 42, '_crosssell_ids', 'a:0:{}'),
(128, 42, '_purchase_note', ''),
(129, 42, '_default_attributes', 'a:0:{}'),
(130, 42, '_virtual', 'yes'),
(131, 42, '_downloadable', 'no'),
(132, 42, '_product_image_gallery', ''),
(133, 42, '_download_limit', '-1'),
(134, 42, '_download_expiry', '-1'),
(135, 42, '_stock', NULL),
(136, 42, '_stock_status', 'instock'),
(137, 42, '_product_version', '3.2.6'),
(138, 42, '_price', '100'),
(139, 43, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(140, 43, '_edit_lock', '1513847331:1'),
(141, 43, '_edit_last', '1'),
(142, 43, '_wp_page_template', 'template-fullwidth.php'),
(143, 43, '_wpb_vc_js_status', 'true'),
(144, 45, '_wp_trash_meta_status', 'publish'),
(145, 45, '_wp_trash_meta_time', '1513581727'),
(146, 46, '_wp_trash_meta_status', 'publish'),
(147, 46, '_wp_trash_meta_time', '1513581803'),
(148, 47, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(149, 48, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(150, 49, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(151, 50, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(152, 50, '_wc_review_count', '0'),
(153, 50, '_wc_rating_count', 'a:0:{}'),
(154, 50, '_wc_average_rating', '0'),
(155, 51, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(156, 52, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(157, 48, '_edit_lock', '1513660669:1'),
(158, 53, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(159, 54, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(160, 55, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(161, 56, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(162, 57, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(163, 56, '_wc_review_count', '0'),
(164, 56, '_wc_rating_count', 'a:0:{}'),
(165, 56, '_wc_average_rating', '0'),
(166, 58, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(167, 57, '_edit_lock', '1513660726:1'),
(168, 59, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(169, 59, '_wc_review_count', '0'),
(170, 59, '_wc_rating_count', 'a:0:{}'),
(171, 59, '_wc_average_rating', '0'),
(172, 61, '_wp_attached_file', '2017/12/WhatsApp-Image-2017-12-20-at-8.02.42-PM.jpeg'),
(173, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:822;s:4:\"file\";s:52:\"2017/12/WhatsApp-Image-2017-12-20-at-8.02.42-PM.jpeg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-300x193.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-768x493.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:493;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-1024x658.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:658;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith_vendors_gravatar\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-62x62.jpeg\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:51:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-83x103.jpeg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-262x325.jpeg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-555x688.jpeg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-750x500.jpeg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-360x235.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-500x500.jpeg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2017-12-20-at-8.02.42-PM-58x72.jpeg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 62, '_wp_attached_file', '2017/12/WhatsApp-Image-2017-12-20-at-8.02.43-PM.jpeg'),
(175, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:822;s:4:\"file\";s:52:\"2017/12/WhatsApp-Image-2017-12-20-at-8.02.43-PM.jpeg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-300x193.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-768x493.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:493;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:53:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-1024x658.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:658;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith_vendors_gravatar\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-62x62.jpeg\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:51:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-83x103.jpeg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-262x325.jpeg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-555x688.jpeg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-750x500.jpeg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-360x235.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:52:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-500x500.jpeg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:50:\"WhatsApp-Image-2017-12-20-at-8.02.43-PM-58x72.jpeg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 60, '_wp_trash_meta_status', 'publish'),
(177, 60, '_wp_trash_meta_time', '1513782349'),
(178, 63, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(179, 63, '_wc_review_count', '0'),
(180, 63, '_wc_rating_count', 'a:0:{}'),
(181, 63, '_wc_average_rating', '0'),
(182, 63, '_edit_lock', '1513796751:4'),
(183, 2, '_wp_trash_meta_status', 'publish'),
(184, 2, '_wp_trash_meta_time', '1513838380'),
(185, 2, '_wp_desired_post_slug', 'sample-page'),
(186, 2, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(187, 24, '_edit_lock', '1513838350:1'),
(188, 24, '_edit_last', '1'),
(189, 24, '_wp_page_template', 'template-fullwidth.php'),
(190, 24, '_wpb_vc_js_status', 'true'),
(191, 24, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(192, 66, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(193, 66, '_edit_last', '1'),
(194, 66, '_wp_page_template', 'template-fullwidth.php'),
(195, 66, '_wpb_vc_js_status', 'true'),
(196, 66, '_edit_lock', '1513839751:1'),
(197, 77, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(198, 77, '_menu_item_type', 'post_type'),
(199, 77, '_menu_item_menu_item_parent', '0'),
(200, 77, '_menu_item_object_id', '66'),
(201, 77, '_menu_item_object', 'page'),
(202, 77, '_menu_item_target', ''),
(203, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(204, 77, '_menu_item_xfn', ''),
(205, 77, '_menu_item_url', ''),
(207, 16, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(208, 20, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(209, 18, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(210, 78, '_wp_attached_file', '2017/12/img_avatar2.png'),
(211, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:499;s:6:\"height\";i:498;s:4:\"file\";s:23:\"2017/12/img_avatar2.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"img_avatar2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"img_avatar2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"yith_vendors_gravatar\";a:4:{s:4:\"file\";s:21:\"img_avatar2-62x62.png\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"img_avatar2-83x103.png\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"img_avatar2-262x325.png\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:23:\"img_avatar2-360x235.png\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:21:\"img_avatar2-58x72.png\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 79, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(213, 79, '_wc_review_count', '0'),
(214, 79, '_wc_rating_count', 'a:0:{}'),
(215, 79, '_wc_average_rating', '0'),
(216, 79, '_edit_lock', '1513842308:7'),
(217, 79, '_edit_last', '7'),
(218, 80, '_wp_attached_file', '2017/12/carpentor-e1513841035695.png'),
(219, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:153;s:6:\"height\";i:153;s:4:\"file\";s:36:\"2017/12/carpentor-e1513841035695.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"carpentor-e1513841035695-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"yith_vendors_gravatar\";a:4:{s:4:\"file\";s:34:\"carpentor-e1513841035695-62x62.png\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"carpentor-e1513841035695-83x103.png\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:34:\"carpentor-e1513841035695-58x72.png\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(220, 80, '_edit_lock', '1513841258:1'),
(221, 80, '_wp_attachment_backup_sizes', 'a:5:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:153;s:6:\"height\";i:153;s:4:\"file\";s:13:\"carpentor.png\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:21:\"carpentor-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"yith_vendors_gravatar-orig\";a:4:{s:4:\"file\";s:19:\"carpentor-62x62.png\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"shop_thumbnail-orig\";a:4:{s:4:\"file\";s:20:\"carpentor-83x103.png\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}s:35:\"shop_isle_cart_item_image_size-orig\";a:4:{s:4:\"file\";s:19:\"carpentor-58x72.png\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(224, 82, '_wp_attached_file', '2017/12/plumber-e1513841230503.png'),
(225, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:153;s:6:\"height\";i:153;s:4:\"file\";s:34:\"2017/12/plumber-e1513841230503.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"plumber-e1513841230503-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"yith_vendors_gravatar\";a:4:{s:4:\"file\";s:32:\"plumber-e1513841230503-62x62.png\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"plumber-e1513841230503-83x103.png\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:32:\"plumber-e1513841230503-58x72.png\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 82, '_edit_lock', '1513841110:1'),
(227, 82, '_wp_attachment_backup_sizes', 'a:5:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:153;s:6:\"height\";i:153;s:4:\"file\";s:11:\"plumber.png\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:19:\"plumber-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"yith_vendors_gravatar-orig\";a:4:{s:4:\"file\";s:17:\"plumber-62x62.png\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"shop_thumbnail-orig\";a:4:{s:4:\"file\";s:18:\"plumber-83x103.png\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}s:35:\"shop_isle_cart_item_image_size-orig\";a:4:{s:4:\"file\";s:17:\"plumber-58x72.png\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(228, 83, '_wp_attached_file', '2017/12/broom-03.jpg'),
(229, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1199;s:6:\"height\";i:1300;s:4:\"file\";s:20:\"2017/12/broom-03.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"broom-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"broom-03-277x300.jpg\";s:5:\"width\";i:277;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"broom-03-768x833.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:833;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"broom-03-944x1024.jpg\";s:5:\"width\";i:944;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith_vendors_gravatar\";a:4:{s:4:\"file\";s:18:\"broom-03-62x62.jpg\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"broom-03-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"broom-03-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"broom-03-555x688.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:20:\"broom-03-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:20:\"broom-03-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:20:\"broom-03-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:18:\"broom-03-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 84, '_wp_attached_file', '2017/12/Commercial-Kitchen_Repair.jpg'),
(231, 84, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:600;s:4:\"file\";s:37:\"2017/12/Commercial-Kitchen_Repair.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"Commercial-Kitchen_Repair-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"Commercial-Kitchen_Repair-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"Commercial-Kitchen_Repair-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith_vendors_gravatar\";a:4:{s:4:\"file\";s:35:\"Commercial-Kitchen_Repair-62x62.jpg\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"Commercial-Kitchen_Repair-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"Commercial-Kitchen_Repair-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"Commercial-Kitchen_Repair-555x600.jpg\";s:5:\"width\";i:555;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:37:\"Commercial-Kitchen_Repair-750x500.jpg\";s:5:\"width\";i:750;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:37:\"Commercial-Kitchen_Repair-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:37:\"Commercial-Kitchen_Repair-500x500.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:35:\"Commercial-Kitchen_Repair-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(232, 85, '_wp_attached_file', '2017/12/doctor-2411135_960_720-e1513847540723.png'),
(233, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:153;s:6:\"height\";i:153;s:4:\"file\";s:49:\"2017/12/doctor-2411135_960_720-e1513847540723.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"doctor-2411135_960_720-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"doctor-2411135_960_720-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"yith_vendors_gravatar\";a:4:{s:4:\"file\";s:32:\"doctor-2411135_960_720-62x62.png\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"doctor-2411135_960_720-83x103.png\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"doctor-2411135_960_720-262x325.png\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"doctor-2411135_960_720-555x688.png\";s:5:\"width\";i:555;s:6:\"height\";i:688;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"shop_isle_blog_image_size\";a:4:{s:4:\"file\";s:34:\"doctor-2411135_960_720-720x500.png\";s:5:\"width\";i:720;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:34:\"doctor-2411135_960_720-360x235.png\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:34:\"doctor-2411135_960_720-500x500.png\";s:5:\"width\";i:500;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:32:\"doctor-2411135_960_720-58x72.png\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(234, 86, '_wp_attached_file', '2017/12/telephone.jpg'),
(235, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:391;s:4:\"file\";s:21:\"2017/12/telephone.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"telephone-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"telephone-300x226.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:226;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith_vendors_gravatar\";a:4:{s:4:\"file\";s:19:\"telephone-62x62.jpg\";s:5:\"width\";i:62;s:6:\"height\";i:62;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"telephone-83x103.jpg\";s:5:\"width\";i:83;s:6:\"height\";i:103;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"telephone-262x325.jpg\";s:5:\"width\";i:262;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:25:\"shop_isle_banner_homepage\";a:4:{s:4:\"file\";s:21:\"telephone-360x235.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:235;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_isle_category_thumbnail\";a:4:{s:4:\"file\";s:21:\"telephone-500x391.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:391;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:30:\"shop_isle_cart_item_image_size\";a:4:{s:4:\"file\";s:19:\"telephone-58x72.jpg\";s:5:\"width\";i:58;s:6:\"height\";i:72;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 87, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(237, 87, '_wc_review_count', '0'),
(238, 87, '_wc_rating_count', 'a:0:{}'),
(239, 87, '_wc_average_rating', '0'),
(240, 87, '_edit_lock', '1513921781:1'),
(241, 87, '_edit_last', '1'),
(242, 87, '_sku', ''),
(243, 87, '_regular_price', '100'),
(244, 87, '_sale_price', ''),
(245, 87, '_sale_price_dates_from', ''),
(246, 87, '_sale_price_dates_to', ''),
(247, 87, 'total_sales', '0'),
(248, 87, '_tax_status', 'taxable'),
(249, 87, '_tax_class', ''),
(250, 87, '_manage_stock', 'no'),
(251, 87, '_backorders', 'no'),
(252, 87, '_sold_individually', 'no'),
(253, 87, '_weight', ''),
(254, 87, '_length', ''),
(255, 87, '_width', ''),
(256, 87, '_height', ''),
(257, 87, '_upsell_ids', 'a:0:{}'),
(258, 87, '_crosssell_ids', 'a:0:{}'),
(259, 87, '_purchase_note', ''),
(260, 87, '_default_attributes', 'a:0:{}'),
(261, 87, '_virtual', 'yes'),
(262, 87, '_downloadable', 'no'),
(263, 87, '_product_image_gallery', ''),
(264, 87, '_download_limit', '-1'),
(265, 87, '_download_expiry', '-1'),
(266, 87, '_stock', NULL),
(267, 87, '_stock_status', 'instock'),
(268, 87, '_product_version', '3.2.6'),
(269, 87, '_price', '100'),
(270, 88, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(271, 88, '_wc_review_count', '0'),
(272, 88, '_wc_rating_count', 'a:0:{}'),
(273, 88, '_wc_average_rating', '0'),
(274, 88, '_edit_lock', '1513845209:7'),
(275, 88, '_edit_last', '7'),
(276, 88, '_wp_trash_meta_status', 'draft'),
(277, 88, '_wp_trash_meta_time', '1513845223'),
(278, 88, '_wp_desired_post_slug', ''),
(279, 89, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(280, 89, '_sku', ''),
(281, 89, '_regular_price', '100'),
(282, 89, '_sale_price', ''),
(283, 89, '_sale_price_dates_from', ''),
(284, 89, '_sale_price_dates_to', ''),
(285, 89, 'total_sales', '0'),
(286, 89, '_tax_status', 'taxable'),
(287, 89, '_tax_class', ''),
(288, 89, '_manage_stock', 'no'),
(289, 89, '_backorders', 'no'),
(290, 89, '_sold_individually', 'no'),
(291, 89, '_weight', ''),
(292, 89, '_length', ''),
(293, 89, '_width', ''),
(294, 89, '_height', ''),
(295, 89, '_upsell_ids', 'a:0:{}'),
(296, 89, '_crosssell_ids', 'a:0:{}'),
(297, 89, '_purchase_note', ''),
(298, 89, '_default_attributes', 'a:0:{}'),
(299, 89, '_virtual', 'yes'),
(300, 89, '_downloadable', 'no'),
(301, 89, '_product_image_gallery', ''),
(302, 89, '_download_limit', '-1'),
(303, 89, '_download_expiry', '-1'),
(304, 89, '_stock', NULL),
(305, 89, '_stock_status', 'instock'),
(306, 89, '_wc_average_rating', '0'),
(307, 89, '_wc_rating_count', 'a:0:{}'),
(308, 89, '_wc_review_count', '0'),
(309, 89, '_downloadable_files', 'a:0:{}'),
(310, 89, '_product_attributes', 'a:0:{}'),
(311, 89, '_product_version', '3.2.6'),
(312, 89, '_price', '100'),
(313, 89, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(314, 89, '_edit_lock', '1513845800:1'),
(315, 89, '_edit_last', '1'),
(316, 90, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(317, 90, '_wc_review_count', '0'),
(318, 90, '_wc_rating_count', 'a:0:{}'),
(319, 90, '_wc_average_rating', '0'),
(320, 91, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(321, 91, '_sku', ''),
(322, 91, '_regular_price', '100'),
(323, 91, '_sale_price', ''),
(324, 91, '_sale_price_dates_from', ''),
(325, 91, '_sale_price_dates_to', ''),
(326, 91, 'total_sales', '2'),
(327, 91, '_tax_status', 'taxable'),
(328, 91, '_tax_class', ''),
(329, 91, '_manage_stock', 'no'),
(330, 91, '_backorders', 'no'),
(331, 91, '_sold_individually', 'no'),
(332, 91, '_weight', ''),
(333, 91, '_length', ''),
(334, 91, '_width', ''),
(335, 91, '_height', ''),
(336, 91, '_upsell_ids', 'a:0:{}'),
(337, 91, '_crosssell_ids', 'a:0:{}'),
(338, 91, '_purchase_note', ''),
(339, 91, '_default_attributes', 'a:0:{}'),
(340, 91, '_virtual', 'yes'),
(341, 91, '_downloadable', 'no'),
(342, 91, '_product_image_gallery', ''),
(343, 91, '_download_limit', '-1'),
(344, 91, '_download_expiry', '-1'),
(345, 91, '_stock', NULL),
(346, 91, '_stock_status', 'instock'),
(347, 91, '_wc_average_rating', '0'),
(348, 91, '_wc_rating_count', 'a:0:{}'),
(349, 91, '_wc_review_count', '0'),
(350, 91, '_downloadable_files', 'a:0:{}'),
(351, 91, '_product_attributes', 'a:0:{}'),
(352, 91, '_product_version', '3.2.6'),
(353, 91, '_price', '100'),
(354, 91, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(355, 91, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(356, 91, '_edit_lock', '1513874833:7'),
(357, 91, '_edit_last', '1'),
(358, 92, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(359, 92, '_wc_review_count', '0'),
(360, 92, '_wc_rating_count', 'a:0:{}'),
(361, 92, '_wc_average_rating', '0'),
(362, 93, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(363, 93, '_wc_review_count', '0'),
(364, 93, '_wc_rating_count', 'a:0:{}'),
(365, 93, '_wc_average_rating', '0'),
(366, 93, '_edit_lock', '1513845660:1'),
(367, 93, '_edit_last', '1'),
(368, 93, '_sku', ''),
(369, 93, '_regular_price', '200'),
(370, 93, '_sale_price', ''),
(371, 93, '_sale_price_dates_from', ''),
(372, 93, '_sale_price_dates_to', ''),
(373, 93, 'total_sales', '0'),
(374, 93, '_tax_status', 'taxable'),
(375, 93, '_tax_class', ''),
(376, 93, '_manage_stock', 'no'),
(377, 93, '_backorders', 'no'),
(378, 93, '_sold_individually', 'no'),
(379, 93, '_weight', ''),
(380, 93, '_length', ''),
(381, 93, '_width', ''),
(382, 93, '_height', ''),
(383, 93, '_upsell_ids', 'a:0:{}'),
(384, 93, '_crosssell_ids', 'a:0:{}'),
(385, 93, '_purchase_note', ''),
(386, 93, '_default_attributes', 'a:0:{}'),
(387, 93, '_virtual', 'yes'),
(388, 93, '_downloadable', 'no'),
(389, 93, '_product_image_gallery', ''),
(390, 93, '_download_limit', '-1'),
(391, 93, '_download_expiry', '-1'),
(392, 93, '_stock', NULL),
(393, 93, '_stock_status', 'instock'),
(394, 93, '_product_version', '3.2.6'),
(395, 93, '_price', '200'),
(396, 94, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(397, 94, '_wc_review_count', '0'),
(398, 94, '_wc_rating_count', 'a:0:{}'),
(399, 94, '_wc_average_rating', '0'),
(400, 94, '_edit_lock', '1513845659:1'),
(401, 94, '_edit_last', '1'),
(402, 94, '_sku', ''),
(403, 94, '_regular_price', '350'),
(404, 94, '_sale_price', ''),
(405, 94, '_sale_price_dates_from', ''),
(406, 94, '_sale_price_dates_to', ''),
(407, 94, 'total_sales', '0'),
(408, 94, '_tax_status', 'taxable'),
(409, 94, '_tax_class', ''),
(410, 94, '_manage_stock', 'no'),
(411, 94, '_backorders', 'no'),
(412, 94, '_sold_individually', 'no'),
(413, 94, '_weight', ''),
(414, 94, '_length', ''),
(415, 94, '_width', ''),
(416, 94, '_height', ''),
(417, 94, '_upsell_ids', 'a:0:{}'),
(418, 94, '_crosssell_ids', 'a:0:{}'),
(419, 94, '_purchase_note', ''),
(420, 94, '_default_attributes', 'a:0:{}'),
(421, 94, '_virtual', 'yes'),
(422, 94, '_downloadable', 'no'),
(423, 94, '_product_image_gallery', ''),
(424, 94, '_download_limit', '-1'),
(425, 94, '_download_expiry', '-1'),
(426, 94, '_stock', NULL),
(427, 94, '_stock_status', 'instock'),
(428, 94, '_product_version', '3.2.6'),
(429, 94, '_price', '350'),
(430, 95, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(431, 95, '_wc_review_count', '0'),
(432, 95, '_wc_rating_count', 'a:0:{}'),
(433, 95, '_wc_average_rating', '0'),
(434, 95, '_edit_lock', '1513847278:6'),
(435, 95, '_edit_last', '1'),
(436, 95, '_sku', ''),
(437, 95, '_regular_price', '500'),
(438, 95, '_sale_price', ''),
(439, 95, '_sale_price_dates_from', ''),
(440, 95, '_sale_price_dates_to', ''),
(441, 95, 'total_sales', '0'),
(442, 95, '_tax_status', 'taxable'),
(443, 95, '_tax_class', ''),
(444, 95, '_manage_stock', 'no'),
(445, 95, '_backorders', 'no'),
(446, 95, '_sold_individually', 'no'),
(447, 95, '_weight', ''),
(448, 95, '_length', ''),
(449, 95, '_width', ''),
(450, 95, '_height', ''),
(451, 95, '_upsell_ids', 'a:0:{}'),
(452, 95, '_crosssell_ids', 'a:0:{}'),
(453, 95, '_purchase_note', ''),
(454, 95, '_default_attributes', 'a:0:{}'),
(455, 95, '_virtual', 'yes'),
(456, 95, '_downloadable', 'no'),
(457, 95, '_product_image_gallery', ''),
(458, 95, '_download_limit', '-1'),
(459, 95, '_download_expiry', '-1'),
(460, 95, '_stock', NULL),
(461, 95, '_stock_status', 'instock'),
(462, 95, '_product_version', '3.2.6'),
(463, 95, '_price', '500'),
(464, 79, '_wp_trash_meta_status', 'draft'),
(465, 79, '_wp_trash_meta_time', '1513845743'),
(466, 79, '_wp_desired_post_slug', ''),
(467, 42, '_wp_trash_meta_status', 'draft'),
(468, 42, '_wp_trash_meta_time', '1513845749'),
(469, 42, '_wp_desired_post_slug', 'plumber'),
(470, 101, '_wp_trash_meta_status', 'publish'),
(471, 101, '_wp_trash_meta_time', '1513846171'),
(472, 102, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(473, 102, '_wc_review_count', '0'),
(474, 102, '_wc_rating_count', 'a:0:{}'),
(475, 102, '_wc_average_rating', '0'),
(476, 102, '_edit_lock', '1513916337:1'),
(477, 102, '_edit_last', '1'),
(478, 102, '_sku', ''),
(479, 102, '_regular_price', '200'),
(480, 102, '_sale_price', ''),
(481, 102, '_sale_price_dates_from', ''),
(482, 102, '_sale_price_dates_to', ''),
(483, 102, 'total_sales', '0'),
(484, 102, '_tax_status', 'taxable'),
(485, 102, '_tax_class', ''),
(486, 102, '_manage_stock', 'no'),
(487, 102, '_backorders', 'no'),
(488, 102, '_sold_individually', 'no'),
(489, 102, '_weight', ''),
(490, 102, '_length', ''),
(491, 102, '_width', ''),
(492, 102, '_height', ''),
(493, 102, '_upsell_ids', 'a:0:{}'),
(494, 102, '_crosssell_ids', 'a:0:{}'),
(495, 102, '_purchase_note', ''),
(496, 102, '_default_attributes', 'a:0:{}'),
(497, 102, '_virtual', 'yes'),
(498, 102, '_downloadable', 'no'),
(499, 102, '_product_image_gallery', ''),
(500, 102, '_download_limit', '-1'),
(501, 102, '_download_expiry', '-1'),
(502, 102, '_stock', NULL),
(503, 102, '_stock_status', 'instock'),
(504, 102, '_product_version', '3.2.6'),
(505, 102, '_price', '200'),
(506, 103, '_wp_trash_meta_status', 'publish'),
(507, 103, '_wp_trash_meta_time', '1513846375'),
(508, 85, '_edit_lock', '1513850462:1'),
(509, 85, '_wp_attachment_backup_sizes', 'a:1:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:26:\"doctor-2411135_960_720.png\";}}'),
(510, 85, '_edit_last', '1'),
(511, 24, '_wp_trash_meta_status', 'publish'),
(512, 24, '_wp_trash_meta_time', '1513868194'),
(513, 24, '_wp_desired_post_slug', 'workers-terms-and-conditions'),
(514, 105, '_order_key', 'wc_order_5a3be4f9c3003'),
(515, 105, '_customer_user', '1'),
(516, 105, '_payment_method', 'cheque'),
(517, 105, '_payment_method_title', 'Check payments'),
(518, 105, '_transaction_id', ''),
(519, 105, '_customer_ip_address', '::1'),
(520, 105, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.108 safari/537.36'),
(521, 105, '_created_via', 'checkout'),
(522, 105, '_date_completed', '1513876521'),
(523, 105, '_completed_date', '2017-12-21 17:15:21'),
(524, 105, '_date_paid', '1513875244'),
(525, 105, '_paid_date', '2017-12-21 16:54:04'),
(526, 105, '_cart_hash', '30e904cd5b741c04f08e500e0d555a57'),
(527, 105, '_billing_first_name', 'areeb'),
(528, 105, '_billing_last_name', 'vohra'),
(529, 105, '_billing_company', ''),
(530, 105, '_billing_address_1', 'Nazimabad'),
(531, 105, '_billing_address_2', ''),
(532, 105, '_billing_city', 'karachi'),
(533, 105, '_billing_state', 'SD'),
(534, 105, '_billing_postcode', '74200'),
(535, 105, '_billing_country', 'PK'),
(536, 105, '_billing_email', 'areebvohra@gmail.com'),
(537, 105, '_billing_phone', '03244114890'),
(538, 105, '_shipping_first_name', ''),
(539, 105, '_shipping_last_name', ''),
(540, 105, '_shipping_company', ''),
(541, 105, '_shipping_address_1', ''),
(542, 105, '_shipping_address_2', ''),
(543, 105, '_shipping_city', ''),
(544, 105, '_shipping_state', ''),
(545, 105, '_shipping_postcode', ''),
(546, 105, '_shipping_country', ''),
(547, 105, '_order_currency', 'PKR'),
(548, 105, '_cart_discount', '0'),
(549, 105, '_cart_discount_tax', '0'),
(550, 105, '_order_shipping', '0'),
(551, 105, '_order_shipping_tax', '0'),
(552, 105, '_order_tax', '0'),
(553, 105, '_order_total', '100.00'),
(554, 105, '_order_version', '3.2.6'),
(555, 105, '_prices_include_tax', 'no'),
(556, 105, '_billing_address_index', 'areeb vohra  Nazimabad  karachi SD 74200 PK areebvohra@gmail.com 03244114890'),
(557, 105, '_shipping_address_index', '        '),
(558, 105, 'has_sub_order', '1'),
(559, 106, '_billing_first_name', 'areeb'),
(560, 106, '_billing_last_name', 'vohra'),
(561, 106, '_billing_company', ''),
(562, 106, '_billing_country', 'PK'),
(563, 106, '_billing_address_1', 'Nazimabad'),
(564, 106, '_billing_address_2', ''),
(565, 106, '_billing_city', 'karachi'),
(566, 106, '_billing_state', 'SD'),
(567, 106, '_billing_postcode', '74200'),
(568, 106, '_billing_phone', '03244114890'),
(569, 106, '_billing_email', 'areebvohra@gmail.com'),
(570, 106, '_shipping_first_name', ''),
(571, 106, '_shipping_last_name', ''),
(572, 106, '_shipping_company', ''),
(573, 106, '_shipping_country', ''),
(574, 106, '_shipping_address_1', ''),
(575, 106, '_shipping_address_2', ''),
(576, 106, '_shipping_city', ''),
(577, 106, '_shipping_state', ''),
(578, 106, '_shipping_postcode', ''),
(579, 106, 'order_comments', ''),
(580, 106, '_payment_method', 'cheque'),
(581, 106, '_payment_method_title', 'Check payments'),
(582, 106, '_order_key', 'order_5a3be4fa136a3'),
(583, 106, '_customer_user', '1'),
(584, 106, '_prices_include_tax', ''),
(585, 106, '_order_currency', 'PKR'),
(586, 106, '_customer_ip_address', '::1'),
(587, 106, '_customer_user_agent', 'mozilla/5.0 (windows nt 6.1; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/63.0.3239.108 safari/537.36'),
(588, 106, '_order_version', '3.2.6'),
(589, 106, '_created_via', 'yith_wcmv_vendor_suborder'),
(590, 106, '_transaction_id', ''),
(591, 106, '_date_completed', '1513876500'),
(592, 106, '_completed_date', '2017-12-21 17:15:00'),
(593, 106, '_date_paid', '1513875378'),
(594, 106, '_paid_date', '2017-12-21 16:56:18'),
(595, 106, '_cart_hash', ''),
(596, 106, '_cart_discount', '0'),
(597, 106, '_cart_discount_tax', '0'),
(598, 106, '_order_shipping', '0'),
(599, 106, '_order_shipping_tax', '0'),
(600, 106, '_order_tax', '0'),
(601, 106, '_order_total', '100.00'),
(602, 106, '_billing_address_index', '          '),
(603, 106, '_shipping_address_index', '        '),
(604, 106, '_commissions_processed', 'yes'),
(605, 105, '_recorded_sales', 'yes'),
(606, 105, '_recorded_coupon_usage_counts', 'yes'),
(607, 105, '_order_stock_reduced', 'yes'),
(608, 106, '_edit_lock', '1513876427:7'),
(609, 105, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(610, 105, '_download_permissions_granted', 'yes'),
(611, 106, '_edit_last', '7'),
(612, 106, '_download_permissions_granted', 'yes'),
(613, 106, '_recorded_sales', 'yes'),
(614, 106, '_recorded_coupon_usage_counts', 'yes'),
(615, 106, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(616, 105, '_edit_lock', '1513876049:1'),
(617, 105, '_edit_last', '1'),
(618, 107, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(619, 107, '_wc_review_count', '0'),
(620, 107, '_wc_rating_count', 'a:0:{}'),
(621, 107, '_wc_average_rating', '0'),
(622, 107, '_edit_lock', '1513878123:8'),
(623, 107, '_edit_last', '8'),
(624, 107, '_sku', ''),
(625, 107, '_regular_price', '455'),
(626, 107, '_sale_price', ''),
(627, 107, '_sale_price_dates_from', ''),
(628, 107, '_sale_price_dates_to', ''),
(629, 107, 'total_sales', '0'),
(630, 107, '_tax_status', 'taxable'),
(631, 107, '_tax_class', ''),
(632, 107, '_manage_stock', 'no'),
(633, 107, '_backorders', 'no'),
(634, 107, '_sold_individually', 'no'),
(635, 107, '_weight', ''),
(636, 107, '_length', ''),
(637, 107, '_width', ''),
(638, 107, '_height', ''),
(639, 107, '_upsell_ids', 'a:0:{}'),
(640, 107, '_crosssell_ids', 'a:0:{}'),
(641, 107, '_purchase_note', ''),
(642, 107, '_default_attributes', 'a:0:{}'),
(643, 107, '_virtual', 'yes'),
(644, 107, '_downloadable', 'no'),
(645, 107, '_product_image_gallery', ''),
(646, 107, '_download_limit', '-1'),
(647, 107, '_download_expiry', '-1'),
(648, 107, '_stock', NULL),
(649, 107, '_stock_status', 'outofstock'),
(650, 107, '_product_version', '3.2.6'),
(651, 107, '_price', '455'),
(652, 108, '_vc_post_settings', 'a:1:{s:10:\"vc_grid_id\";a:0:{}}'),
(653, 108, '_wc_review_count', '0'),
(654, 108, '_wc_rating_count', 'a:0:{}'),
(655, 108, '_wc_average_rating', '0'),
(656, 108, '_edit_lock', '1513877630:8'),
(657, 109, '_wp_trash_meta_status', 'publish'),
(658, 109, '_wp_trash_meta_time', '1513877281'),
(659, 102, '_gravity_form_data', 'a:15:{s:2:\"id\";s:1:\"2\";s:13:\"display_title\";b:0;s:19:\"display_description\";b:0;s:25:\"disable_woocommerce_price\";s:2:\"no\";s:12:\"price_before\";s:0:\"\";s:11:\"price_after\";s:0:\"\";s:20:\"disable_calculations\";s:2:\"no\";s:22:\"disable_label_subtotal\";s:3:\"yes\";s:21:\"disable_label_options\";s:3:\"yes\";s:19:\"disable_label_total\";s:3:\"yes\";s:14:\"disable_anchor\";s:2:\"no\";s:14:\"label_subtotal\";s:8:\"Subtotal\";s:13:\"label_options\";s:7:\"Options\";s:11:\"label_total\";s:5:\"Total\";s:8:\"use_ajax\";s:2:\"no\";}'),
(660, 87, '_gravity_form_data', 'a:15:{s:2:\"id\";s:1:\"2\";s:13:\"display_title\";b:0;s:19:\"display_description\";b:0;s:25:\"disable_woocommerce_price\";s:2:\"no\";s:12:\"price_before\";s:0:\"\";s:11:\"price_after\";s:0:\"\";s:20:\"disable_calculations\";s:2:\"no\";s:22:\"disable_label_subtotal\";s:3:\"yes\";s:21:\"disable_label_options\";s:3:\"yes\";s:19:\"disable_label_total\";s:2:\"no\";s:14:\"disable_anchor\";s:2:\"no\";s:14:\"label_subtotal\";s:8:\"Subtotal\";s:13:\"label_options\";s:7:\"Options\";s:11:\"label_total\";s:5:\"Total\";s:8:\"use_ajax\";s:2:\"no\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-16 20:04:05', '2017-12-16 20:04:05', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-12-16 20:04:05', '2017-12-16 20:04:05', '', 0, 'http://localhost/FixMyHome/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-16 20:04:05', '2017-12-16 20:04:05', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/FixMyHome/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2017-12-21 06:39:40', '2017-12-21 06:39:40', '', 0, 'http://localhost/FixMyHome/?page_id=2', 0, 'page', '', 0),
(3, 1, '2017-12-16 20:04:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-16 20:04:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?p=3', 0, 'post', '', 0),
(4, 1, '2017-12-16 20:05:25', '2017-12-16 20:05:25', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-12-16 20:05:25', '2017-12-16 20:05:25', '', 0, 'http://localhost/FixMyHome/?page_id=4', 0, 'page', '', 0),
(5, 1, '2017-12-16 20:05:25', '2017-12-16 20:05:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-12-16 20:05:25', '2017-12-16 20:05:25', '', 4, 'http://localhost/FixMyHome/2017/12/16/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-12-16 20:08:12', '2017-12-16 20:08:12', '{\n    \"shop-isle::shop_isle_socials\": {\n        \"value\": \"[{\\\"icon_value\\\":\\\"social_facebook\\\",\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_socials\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"icon_value\\\":\\\"social_twitter\\\",\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_socials\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"icon_value\\\":\\\"social_dribbble\\\",\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_socials\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"icon_value\\\":\\\"social_skype\\\",\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_socials\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_big_title_image\": {\n        \"value\": \"http://localhost/FixMyHome/wp-content/uploads/2017/12/home-service-690.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_big_title_title\": {\n        \"value\": \"fix my home\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_big_title_subtitle\": {\n        \"value\": \"we fix your home\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_big_title_button_label\": {\n        \"value\": \"services\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_banners_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_slider_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_slider_single_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '36a09e83-ef1e-48f2-92e9-c1b4f4b32825', '', '', '2017-12-16 20:08:12', '2017-12-16 20:08:12', '', 0, 'http://localhost/FixMyHome/?p=6', 0, 'customize_changeset', '', 0),
(7, 1, '2017-12-16 20:07:03', '2017-12-16 20:07:03', '', 'home-service-690', '', 'inherit', 'open', 'closed', '', 'home-service-690', '', '', '2017-12-16 20:07:03', '2017-12-16 20:07:03', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/home-service-690.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2017-12-16 20:08:46', '2017-12-16 20:08:46', '{\n    \"shop-isle::shop_isle_banners_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'db04e4de-d3ee-41fd-8087-77b36652dbaa', '', '', '2017-12-16 20:08:46', '2017-12-16 20:08:46', '', 0, 'http://localhost/FixMyHome/2017/12/16/db04e4de-d3ee-41fd-8087-77b36652dbaa/', 0, 'customize_changeset', '', 0),
(9, 1, '2017-12-16 20:09:19', '2017-12-16 20:09:19', '{\n    \"shop-isle::shop_isle_products_hide\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_video_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9154ca7e-3384-4f7b-a239-0821b01e1448', '', '', '2017-12-16 20:09:19', '2017-12-16 20:09:19', '', 0, 'http://localhost/FixMyHome/2017/12/16/9154ca7e-3384-4f7b-a239-0821b01e1448/', 0, 'customize_changeset', '', 0),
(10, 1, '2017-12-16 20:12:35', '2017-12-16 20:12:35', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-12-16 20:12:35', '2017-12-16 20:12:35', '', 0, 'http://localhost/FixMyHome/shop/', 0, 'page', '', 0),
(11, 1, '2017-12-16 20:12:35', '2017-12-16 20:12:35', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-12-16 20:12:35', '2017-12-16 20:12:35', '', 0, 'http://localhost/FixMyHome/cart/', 0, 'page', '', 0),
(12, 1, '2017-12-16 20:12:35', '2017-12-16 20:12:35', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-12-16 20:12:35', '2017-12-16 20:12:35', '', 0, 'http://localhost/FixMyHome/checkout/', 0, 'page', '', 0),
(13, 1, '2017-12-16 20:12:35', '2017-12-16 20:12:35', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-12-16 20:12:35', '2017-12-16 20:12:35', '', 0, 'http://localhost/FixMyHome/my-account/', 0, 'page', '', 0),
(14, 1, '2017-12-16 20:14:56', '2017-12-16 20:14:56', '{\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::header_image\": {\n        \"value\": \"http://localhost/FixMyHome/wp-content/uploads/2017/12/service-industry-768x384.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/FixMyHome/wp-content/uploads/2017/12/service-industry-768x384.jpg\",\n            \"thumbnail_url\": \"http://localhost/FixMyHome/wp-content/uploads/2017/12/service-industry-768x384.jpg\",\n            \"timestamp\": 1513455291882,\n            \"attachment_id\": 15,\n            \"width\": 768,\n            \"height\": 384\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '35a6233c-d5fd-45ff-bdfa-a58299d46b6a', '', '', '2017-12-16 20:14:56', '2017-12-16 20:14:56', '', 0, 'http://localhost/FixMyHome/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2017-12-16 20:14:37', '2017-12-16 20:14:37', '', 'service-industry-768x384', '', 'inherit', 'open', 'closed', '', 'service-industry-768x384', '', '', '2017-12-16 20:14:37', '2017-12-16 20:14:37', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/service-industry-768x384.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2017-12-16 20:15:26', '2017-12-16 20:15:26', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2017-12-21 07:06:47', '2017-12-21 07:06:47', '', 0, 'http://localhost/FixMyHome/?p=16', 1, 'nav_menu_item', '', 0),
(18, 1, '2017-12-16 20:15:26', '2017-12-16 20:15:26', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2017-12-21 07:06:47', '2017-12-21 07:06:47', '', 0, 'http://localhost/FixMyHome/?p=18', 3, 'nav_menu_item', '', 0),
(20, 1, '2017-12-16 20:15:26', '2017-12-16 20:15:26', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2017-12-21 07:06:47', '2017-12-21 07:06:47', '', 0, 'http://localhost/FixMyHome/?p=20', 2, 'nav_menu_item', '', 0),
(23, 1, '2017-12-16 20:17:43', '2017-12-16 20:17:43', '[vc_row][vc_column width=\"2/3\"][vc_column_text]\r\n<h3>Fill the form below to register as a Worker</h3>\r\n[/vc_column_text][vc_column_text][yith_wcmv_become_a_vendor][/vc_column_text][/vc_column][vc_column width=\"1/3\"][/vc_column][/vc_row][vc_row][vc_column][/vc_column][/vc_row]', 'Become a worker', '', 'publish', 'closed', 'closed', '', 'become-a-worker', '', '', '2017-12-22 05:16:59', '2017-12-22 05:16:59', '', 0, 'http://localhost/FixMyHome/become-a-vendor/', 0, 'page', '', 0),
(24, 1, '2017-12-16 20:17:43', '2017-12-16 20:17:43', '', 'Terms and Conditions for Workers', '', 'trash', 'closed', 'closed', '', 'workers-terms-and-conditions__trashed', '', '', '2017-12-21 14:56:34', '2017-12-21 14:56:34', '', 0, 'http://localhost/FixMyHome/vendors-terms-and-conditions/', 0, 'page', '', 0),
(25, 1, '2017-12-16 20:18:20', '2017-12-16 20:18:20', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd6609d7c-6964-4e22-981e-d4af08a54540', '', '', '2017-12-16 20:18:20', '2017-12-16 20:18:20', '', 0, 'http://localhost/FixMyHome/2017/12/16/d6609d7c-6964-4e22-981e-d4af08a54540/', 0, 'customize_changeset', '', 0),
(26, 1, '2017-12-16 20:18:28', '2017-12-16 20:18:28', '{\n    \"blogname\": {\n        \"value\": \"Fix My Home\",\n        \"type\": \"option\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6e5f46ba-f248-478c-bd15-74f89744f9ef', '', '', '2017-12-16 20:18:28', '2017-12-16 20:18:28', '', 0, 'http://localhost/FixMyHome/2017/12/16/6e5f46ba-f248-478c-bd15-74f89744f9ef/', 0, 'customize_changeset', '', 0),
(27, 1, '2017-12-16 20:22:49', '2017-12-16 20:22:49', '[yith_wcmv_become_a_vendor]', 'Become a worker', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-12-16 20:22:49', '2017-12-16 20:22:49', '', 23, 'http://localhost/FixMyHome/2017/12/16/23-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-12-16 20:23:11', '2017-12-16 20:23:11', '[vc_row][vc_column width=\"1/3\"][/vc_column][vc_column width=\"1/3\"][vc_column_text][yith_wcmv_become_a_vendor][/vc_column_text][/vc_column][vc_column width=\"1/3\"][/vc_column][/vc_row]', 'Become a worker', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-12-16 20:23:11', '2017-12-16 20:23:11', '', 23, 'http://localhost/FixMyHome/2017/12/16/23-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-12-16 20:23:44', '2017-12-16 20:23:44', '[vc_row][vc_column width=\"1/3\"][/vc_column][vc_column width=\"2/3\"][vc_column_text][yith_wcmv_become_a_vendor][/vc_column_text][/vc_column][/vc_row]', 'Become a worker', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-12-16 20:23:44', '2017-12-16 20:23:44', '', 23, 'http://localhost/FixMyHome/2017/12/16/23-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-12-16 20:23:55', '2017-12-16 20:23:55', '[vc_row][vc_column width=\"2/3\"][vc_column_text][yith_wcmv_become_a_vendor][/vc_column_text][/vc_column][vc_column width=\"1/3\"][/vc_column][/vc_row]', 'Become a worker', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-12-16 20:23:55', '2017-12-16 20:23:55', '', 23, 'http://localhost/FixMyHome/2017/12/16/23-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2017-12-18 07:06:13', '2017-12-18 07:06:13', '{\n    \"custom_css[shop-isle]\": {\n        \"value\": \"/*\\nYou can add your own CSS here.\\n\\nClick the help icon above to learn more.\\n*/\\n\\n\\n.btn.btn-border-w {\\n    border: 1px solid rgba(255, 255, 255, 0.75);\\n    color: black;\\n    background: white;\\n}\\n\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '11d78585-3e39-4fa8-a1c1-e94bb6681b01', '', '', '2017-12-18 07:06:13', '2017-12-18 07:06:13', '', 0, 'http://localhost/FixMyHome/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2017-12-18 07:06:13', '2017-12-18 07:06:13', '/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n\n\n.btn.btn-border-w {\n    color: black;\n    background: white;\n}\n\n.btn.btn-border-w:hover{\n 	border: 1px solid rgba(255,255,255,0.75);\n    color: white;\n    background: transparent;\n}', 'shop-isle', '', 'publish', 'closed', 'closed', '', 'shop-isle', '', '', '2017-12-18 07:09:22', '2017-12-18 07:09:22', '', 0, 'http://localhost/FixMyHome/2017/12/18/shop-isle/', 0, 'custom_css', '', 0),
(35, 1, '2017-12-18 07:06:13', '2017-12-18 07:06:13', '/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n\n\n.btn.btn-border-w {\n    border: 1px solid rgba(255, 255, 255, 0.75);\n    color: black;\n    background: white;\n}\n\n', 'shop-isle', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2017-12-18 07:06:13', '2017-12-18 07:06:13', '', 34, 'http://localhost/FixMyHome/2017/12/18/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-12-18 07:08:53', '2017-12-18 07:08:53', '{\n    \"custom_css[shop-isle]\": {\n        \"value\": \"/*\\nYou can add your own CSS here.\\n\\nClick the help icon above to learn more.\\n*/\\n\\n\\n.btn.btn-border-w {\\n    color: black;\\n    background: white;\\n}\\n\\n.btn.btn-border-w:hover{\\n \\tborder: 1px solid rgba(255,255,255,0.75);\\n    border-color: transparent;\\n    color: white;\\n    background: transparent;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6407ca8a-58dd-4bd8-8f54-ec344205bdbd', '', '', '2017-12-18 07:08:53', '2017-12-18 07:08:53', '', 0, 'http://localhost/FixMyHome/?p=36', 0, 'customize_changeset', '', 0),
(37, 1, '2017-12-18 07:08:53', '2017-12-18 07:08:53', '/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n\n\n.btn.btn-border-w {\n    color: black;\n    background: white;\n}\n\n.btn.btn-border-w:hover{\n 	border: 1px solid rgba(255,255,255,0.75);\n    border-color: transparent;\n    color: white;\n    background: transparent;\n}', 'shop-isle', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2017-12-18 07:08:53', '2017-12-18 07:08:53', '', 34, 'http://localhost/FixMyHome/2017/12/18/34-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-12-18 07:09:22', '2017-12-18 07:09:22', '{\n    \"custom_css[shop-isle]\": {\n        \"value\": \"/*\\nYou can add your own CSS here.\\n\\nClick the help icon above to learn more.\\n*/\\n\\n\\n.btn.btn-border-w {\\n    color: black;\\n    background: white;\\n}\\n\\n.btn.btn-border-w:hover{\\n \\tborder: 1px solid rgba(255,255,255,0.75);\\n    color: white;\\n    background: transparent;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2130bea9-c7b0-412e-a4ad-27b4fad6fe39', '', '', '2017-12-18 07:09:22', '2017-12-18 07:09:22', '', 0, 'http://localhost/FixMyHome/2017/12/18/2130bea9-c7b0-412e-a4ad-27b4fad6fe39/', 0, 'customize_changeset', '', 0),
(39, 1, '2017-12-18 07:09:22', '2017-12-18 07:09:22', '/*\nYou can add your own CSS here.\n\nClick the help icon above to learn more.\n*/\n\n\n.btn.btn-border-w {\n    color: black;\n    background: white;\n}\n\n.btn.btn-border-w:hover{\n 	border: 1px solid rgba(255,255,255,0.75);\n    color: white;\n    background: transparent;\n}', 'shop-isle', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2017-12-18 07:09:22', '2017-12-18 07:09:22', '', 34, 'http://localhost/FixMyHome/2017/12/18/34-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2017-12-18 07:14:45', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-18 07:14:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=product&p=40', 0, 'product', '', 0),
(41, 1, '2017-12-18 07:15:25', '2017-12-18 07:15:25', '', 'electrician', '', 'inherit', 'open', 'closed', '', 'electrician', '', '', '2017-12-18 07:15:25', '2017-12-18 07:15:25', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/electrician.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2017-12-18 07:18:01', '2017-12-18 07:18:01', '', 'Plumber', '', 'trash', 'open', 'closed', '', 'plumber__trashed', '', '', '2017-12-21 08:42:29', '2017-12-21 08:42:29', '', 0, 'http://localhost/FixMyHome/?post_type=product&#038;p=42', 0, 'product', '', 0),
(43, 1, '2017-12-18 07:20:44', '2017-12-18 07:20:44', '[vc_row][vc_column][product_categories orderby=\"\" order=\"ASC\" columns=\"4\" ids=\"17, 24, 25, 28, 26, 27, 29\"][/vc_column][/vc_row]', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2017-12-21 08:47:57', '2017-12-21 08:47:57', '', 0, 'http://localhost/FixMyHome/?page_id=43', 0, 'page', '', 0),
(44, 1, '2017-12-18 07:20:44', '2017-12-18 07:20:44', '[vc_row][vc_column][product_categories orderby=\"\" order=\"\" columns=\"4\" ids=\"17\"][/vc_column][/vc_row]', 'Services', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-12-18 07:20:44', '2017-12-18 07:20:44', '', 43, 'http://localhost/FixMyHome/2017/12/18/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2017-12-18 07:22:07', '2017-12-18 07:22:07', '{\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_title\": {\n        \"value\": \"Services\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_shortcode\": {\n        \"value\": \"[product_categories orderby=\\\"\\\" order=\\\"\\\" columns=\\\"4\\\" ids=\\\"17\\\"]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ebe9d98a-661b-4d82-9d5b-3d0e84d2bb49', '', '', '2017-12-18 07:22:07', '2017-12-18 07:22:07', '', 0, 'http://localhost/FixMyHome/?p=45', 0, 'customize_changeset', '', 0),
(46, 1, '2017-12-18 07:23:23', '2017-12-18 07:23:23', '{\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_big_title_button_link\": {\n        \"value\": \"http://localhost/FixMyHome/services/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0d231e9a-9dc4-4e20-981d-1507a80aeac5', '', '', '2017-12-18 07:23:23', '2017-12-18 07:23:23', '', 0, 'http://localhost/FixMyHome/?p=46', 0, 'customize_changeset', '', 0),
(47, 1, '2017-12-19 05:17:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-19 05:17:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?p=47', 0, 'post', '', 0),
(48, 1, '2017-12-19 05:17:45', '0000-00-00 00:00:00', '', 'Order &ndash; December 19, 2017 @ 05:17 AM', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-19 05:17:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=shop_order&p=48', 0, 'shop_order', '', 0),
(49, 1, '2017-12-19 05:17:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-19 05:17:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=shop_webhook&p=49', 0, 'shop_webhook', '', 0),
(50, 1, '2017-12-19 05:17:45', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-19 05:17:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=product&p=50', 0, 'product', '', 0),
(51, 1, '2017-12-19 05:17:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-19 05:17:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?page_id=51', 0, 'page', '', 0),
(52, 1, '2017-12-19 05:17:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-19 05:17:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=vc_grid_item&p=52', 0, 'vc_grid_item', '', 0),
(53, 1, '2017-12-19 05:18:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-19 05:18:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?p=53', 0, 'post', '', 0),
(54, 1, '2017-12-19 05:18:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-19 05:18:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?page_id=54', 0, 'page', '', 0),
(55, 1, '2017-12-19 05:18:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-19 05:18:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=shop_webhook&p=55', 0, 'shop_webhook', '', 0),
(56, 1, '2017-12-19 05:18:43', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-19 05:18:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=product&p=56', 0, 'product', '', 0),
(57, 1, '2017-12-19 05:18:43', '0000-00-00 00:00:00', '', 'Order &ndash; December 19, 2017 @ 05:18 AM', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-19 05:18:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=shop_order&p=57', 0, 'shop_order', '', 0),
(58, 1, '2017-12-19 05:18:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-12-19 05:18:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=vc_grid_item&p=58', 0, 'vc_grid_item', '', 0),
(59, 1, '2017-12-19 06:01:29', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-19 06:01:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=product&p=59', 0, 'product', '', 0),
(60, 1, '2017-12-20 15:05:49', '2017-12-20 15:05:49', '{\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_big_title_image\": {\n        \"value\": \"http://localhost/FixMyHome/wp-content/uploads/2017/12/WhatsApp-Image-2017-12-20-at-8.02.42-PM.jpeg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e0a0f87f-9cad-4b6c-b45a-8027b3a541c2', '', '', '2017-12-20 15:05:49', '2017-12-20 15:05:49', '', 0, 'http://localhost/FixMyHome/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2017-12-20 15:05:30', '2017-12-20 15:05:30', '', 'WhatsApp Image 2017-12-20 at 8.02.42 PM', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2017-12-20-at-8-02-42-pm', '', '', '2017-12-20 15:05:30', '2017-12-20 15:05:30', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/WhatsApp-Image-2017-12-20-at-8.02.42-PM.jpeg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2017-12-20 15:05:32', '2017-12-20 15:05:32', '', 'WhatsApp Image 2017-12-20 at 8.02.43 PM', '', 'inherit', 'open', 'closed', '', 'whatsapp-image-2017-12-20-at-8-02-43-pm', '', '', '2017-12-20 15:05:32', '2017-12-20 15:05:32', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/WhatsApp-Image-2017-12-20-at-8.02.43-PM.jpeg', 0, 'attachment', 'image/jpeg', 0),
(63, 4, '2017-12-20 19:05:34', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-20 19:05:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=product&p=63', 0, 'product', '', 0),
(64, 1, '2017-12-21 06:39:40', '2017-12-21 06:39:40', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/FixMyHome/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-12-21 06:39:40', '2017-12-21 06:39:40', '', 2, 'http://localhost/FixMyHome/2017/12/21/2-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2017-12-21 06:40:34', '2017-12-21 06:40:34', '', 'Terms and Conditions for Workers', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-12-21 06:40:34', '2017-12-21 06:40:34', '', 24, 'http://localhost/FixMyHome/2017/12/21/24-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-12-21 06:41:51', '2017-12-21 06:41:51', '[vc_row][vc_column width=\"1/6\"][/vc_column][vc_column width=\"2/3\"][vc_column_text]\r\n<h3>Looking to get in contact ?</h3>\r\n<h4>Fill the form below</h4>\r\n[/vc_column_text][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row][vc_row][vc_column width=\"1/6\"][/vc_column][vc_column width=\"2/3\"][gravityform id=\"1\" title=\"false\" description=\"false\" ajax=\"true\"][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row]', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-12-21 06:55:41', '2017-12-21 06:55:41', '', 0, 'http://localhost/FixMyHome/?page_id=66', 0, 'page', '', 0),
(67, 1, '2017-12-21 06:41:51', '2017-12-21 06:41:51', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-12-21 06:41:51', '2017-12-21 06:41:51', '', 66, 'http://localhost/FixMyHome/2017/12/21/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-12-21 06:55:36', '2017-12-21 06:55:36', '[vc_row][vc_column width=\"1/6\"][/vc_column][vc_column width=\"2/3\"][vc_column_text]\n<h3>Looking to get in contact ?</h3>\n<h5>Fill the form below</h5>\n[/vc_column_text][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row][vc_row][vc_column width=\"1/6\"][/vc_column][vc_column width=\"2/3\"][gravityform id=\"1\" title=\"false\" description=\"false\" ajax=\"true\"][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '66-autosave-v1', '', '', '2017-12-21 06:55:36', '2017-12-21 06:55:36', '', 66, 'http://localhost/FixMyHome/2017/12/21/66-autosave-v1/', 0, 'revision', '', 0),
(69, 1, '2017-12-21 06:48:25', '2017-12-21 06:48:25', '[vc_row][vc_column][vc_custom_heading source=\"post_title\" font_container=\"tag:h2|text_align:center\"][/vc_column][/vc_row]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-12-21 06:48:25', '2017-12-21 06:48:25', '', 66, 'http://localhost/FixMyHome/2017/12/21/66-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-12-21 06:48:49', '2017-12-21 06:48:49', '[vc_row][vc_column][/vc_column][/vc_row]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-12-21 06:48:49', '2017-12-21 06:48:49', '', 66, 'http://localhost/FixMyHome/2017/12/21/66-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2017-12-21 06:49:38', '2017-12-21 06:49:38', '[vc_row][vc_column width=\"5/6\"][gravityform id=\"1\" title=\"false\" description=\"false\" ajax=\"false\"][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-12-21 06:49:38', '2017-12-21 06:49:38', '', 66, 'http://localhost/FixMyHome/2017/12/21/66-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-12-21 06:49:59', '2017-12-21 06:49:59', '[vc_row][vc_column width=\"5/6\"][gravityform id=\"1\" title=\"false\" description=\"false\" ajax=\"true\"][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-12-21 06:49:59', '2017-12-21 06:49:59', '', 66, 'http://localhost/FixMyHome/2017/12/21/66-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2017-12-21 06:50:41', '2017-12-21 06:50:41', '[vc_row][vc_column width=\"1/6\"][/vc_column][vc_column width=\"2/3\"][gravityform id=\"1\" title=\"false\" description=\"false\" ajax=\"true\"][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-12-21 06:50:41', '2017-12-21 06:50:41', '', 66, 'http://localhost/FixMyHome/2017/12/21/66-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-12-21 06:54:17', '2017-12-21 06:54:17', '[vc_row][vc_column][vc_column_text]\r\n<h3>Looking to get in contact ?</h3>\r\nFill the form below[/vc_column_text][/vc_column][/vc_row][vc_row][vc_column width=\"1/6\"][/vc_column][vc_column width=\"2/3\"][gravityform id=\"1\" title=\"false\" description=\"false\" ajax=\"true\"][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-12-21 06:54:17', '2017-12-21 06:54:17', '', 66, 'http://localhost/FixMyHome/2017/12/21/66-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-12-21 06:54:33', '2017-12-21 06:54:33', '[vc_row][vc_column width=\"1/6\"][/vc_column][vc_column width=\"2/3\"][vc_column_text]\r\n<h3>Looking to get in contact ?</h3>\r\nFill the form below[/vc_column_text][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row][vc_row][vc_column width=\"1/6\"][/vc_column][vc_column width=\"2/3\"][gravityform id=\"1\" title=\"false\" description=\"false\" ajax=\"true\"][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-12-21 06:54:33', '2017-12-21 06:54:33', '', 66, 'http://localhost/FixMyHome/2017/12/21/66-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-12-21 06:55:41', '2017-12-21 06:55:41', '[vc_row][vc_column width=\"1/6\"][/vc_column][vc_column width=\"2/3\"][vc_column_text]\r\n<h3>Looking to get in contact ?</h3>\r\n<h4>Fill the form below</h4>\r\n[/vc_column_text][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row][vc_row][vc_column width=\"1/6\"][/vc_column][vc_column width=\"2/3\"][gravityform id=\"1\" title=\"false\" description=\"false\" ajax=\"true\"][/vc_column][vc_column width=\"1/6\"][/vc_column][/vc_row]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-12-21 06:55:41', '2017-12-21 06:55:41', '', 66, 'http://localhost/FixMyHome/2017/12/21/66-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2017-12-21 07:06:47', '2017-12-21 07:06:47', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2017-12-21 07:06:47', '2017-12-21 07:06:47', '', 0, 'http://localhost/FixMyHome/?p=77', 4, 'nav_menu_item', '', 0),
(78, 1, '2017-12-21 07:13:16', '2017-12-21 07:13:16', '', 'img_avatar2', '', 'inherit', 'open', 'closed', '', 'img_avatar2', '', '', '2017-12-21 07:13:16', '2017-12-21 07:13:16', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/img_avatar2.png', 0, 'attachment', 'image/png', 0),
(79, 7, '2017-12-21 07:22:50', '2017-12-21 07:22:50', '', 'Hire Carpenter', '', 'trash', 'open', 'closed', '', '__trashed-2', '', '', '2017-12-21 08:42:23', '2017-12-21 08:42:23', '', 0, 'http://localhost/FixMyHome/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2017-12-21 07:23:37', '2017-12-21 07:23:37', '', 'carpentor', '', 'inherit', 'open', 'closed', '', 'carpentor', '', '', '2017-12-21 07:23:37', '2017-12-21 07:23:37', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/carpentor.png', 0, 'attachment', 'image/png', 0),
(82, 1, '2017-12-21 07:27:04', '2017-12-21 07:27:04', '', 'plumber', '', 'inherit', 'open', 'closed', '', 'plumber-2', '', '', '2017-12-21 07:27:04', '2017-12-21 07:27:04', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/plumber.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2017-12-21 07:35:34', '2017-12-21 07:35:34', '', 'broom-03', '', 'inherit', 'open', 'closed', '', 'broom-03', '', '', '2017-12-21 07:35:34', '2017-12-21 07:35:34', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/broom-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2017-12-21 07:39:18', '2017-12-21 07:39:18', '', 'Commercial-Kitchen_Repair', '', 'inherit', 'open', 'closed', '', 'commercial-kitchen_repair', '', '', '2017-12-21 07:39:18', '2017-12-21 07:39:18', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/Commercial-Kitchen_Repair.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2017-12-21 07:40:30', '2017-12-21 07:40:30', '', 'doctor-2411135_960_720', '', 'inherit', 'open', 'closed', '', 'doctor-2411135_960_720', '', '', '2017-12-21 09:13:25', '2017-12-21 09:13:25', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/doctor-2411135_960_720.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2017-12-21 07:44:45', '2017-12-21 07:44:45', '', 'telephone', '', 'inherit', 'open', 'closed', '', 'telephone', '', '', '2017-12-21 07:44:45', '2017-12-21 07:44:45', '', 0, 'http://localhost/FixMyHome/wp-content/uploads/2017/12/telephone.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 7, '2017-12-21 08:43:20', '2017-12-21 08:43:20', '', 'Ali Carpenter', '', 'publish', 'open', 'closed', '', 'ali-carpenter', '', '', '2017-12-22 05:04:44', '2017-12-22 05:04:44', '', 0, 'http://localhost/FixMyHome/?post_type=product&#038;p=87', 0, 'product', '', 0),
(88, 7, '2017-12-21 08:33:29', '2017-12-21 08:33:29', '', 'Ali Electrician', '', 'trash', 'open', 'closed', '', '__trashed', '', '', '2017-12-21 08:33:43', '2017-12-21 08:33:43', '', 0, 'http://localhost/FixMyHome/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 7, '2017-12-21 08:34:08', '2017-12-21 08:34:08', '', 'Ali Electrician', '', 'publish', 'open', 'closed', '', 'ali-electrician', '', '', '2017-12-21 08:43:17', '2017-12-21 08:43:17', '', 0, 'http://localhost/FixMyHome/?post_type=product&#038;p=89', 0, 'product', '', 0),
(90, 7, '2017-12-21 08:34:37', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-21 08:34:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=product&p=90', 0, 'product', '', 0),
(91, 7, '2017-12-21 08:35:46', '2017-12-21 08:35:46', '', 'Ali Plumber', '', 'publish', 'open', 'closed', '', 'ali-plumber', '', '', '2017-12-21 08:43:15', '2017-12-21 08:43:15', '', 0, 'http://localhost/FixMyHome/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 7, '2017-12-21 08:36:19', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-21 08:36:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=product&p=92', 0, 'product', '', 0),
(93, 5, '2017-12-21 08:43:13', '2017-12-21 08:43:13', '', 'Taha Line Man', '', 'publish', 'open', 'closed', '', 'taha-line-man', '', '', '2017-12-21 08:43:13', '2017-12-21 08:43:13', '', 0, 'http://localhost/FixMyHome/?post_type=product&#038;p=93', 0, 'product', '', 0),
(94, 5, '2017-12-21 08:43:11', '2017-12-21 08:43:11', '', 'Taha Kitchen Man', '', 'publish', 'open', 'closed', '', 'taha-kitchen-man', '', '', '2017-12-21 08:43:11', '2017-12-21 08:43:11', '', 0, 'http://localhost/FixMyHome/?post_type=product&#038;p=94', 0, 'product', '', 0),
(95, 6, '2017-12-21 08:43:07', '2017-12-21 08:43:07', '', 'Moiz Doctor', '', 'publish', 'open', 'closed', '', 'moiz-doctor', '', '', '2017-12-21 08:49:53', '2017-12-21 08:49:53', '', 0, 'http://localhost/FixMyHome/?post_type=product&#038;p=95', 0, 'product', '', 0),
(96, 1, '2017-12-21 08:45:44', '2017-12-21 08:45:44', '[vc_row][vc_column][product_categories orderby=\"\" order=\"\" columns=\"4\" ids=\"17, 24, 25, 28, 26\"][/vc_column][/vc_row]', 'Services', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-12-21 08:45:44', '2017-12-21 08:45:44', '', 43, 'http://localhost/FixMyHome/2017/12/21/43-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2017-12-21 08:46:57', '2017-12-21 08:46:57', '[vc_row][vc_column][product_categories orderby=\"\" order=\"\" columns=\"4\" ids=\"17, 24, 25, 28, 26, 27, 29\"][/vc_column][/vc_row]', 'Services', '', 'inherit', 'closed', 'closed', '', '43-autosave-v1', '', '', '2017-12-21 08:46:57', '2017-12-21 08:46:57', '', 43, 'http://localhost/FixMyHome/2017/12/21/43-autosave-v1/', 0, 'revision', '', 0),
(98, 1, '2017-12-21 08:46:59', '2017-12-21 08:46:59', '[vc_row][vc_column][product_categories orderby=\"\" order=\"\" columns=\"4\" ids=\"17, 24, 25, 28, 26, 27, 29\"][/vc_column][/vc_row]', 'Services', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-12-21 08:46:59', '2017-12-21 08:46:59', '', 43, 'http://localhost/FixMyHome/2017/12/21/43-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2017-12-21 08:47:42', '2017-12-21 08:47:42', '[vc_row][vc_column][product_categories orderby=\"\" order=\"DESC\" columns=\"4\" ids=\"17, 24, 25, 28, 26, 27, 29\"][/vc_column][/vc_row]', 'Services', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-12-21 08:47:42', '2017-12-21 08:47:42', '', 43, 'http://localhost/FixMyHome/2017/12/21/43-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-12-21 08:47:57', '2017-12-21 08:47:57', '[vc_row][vc_column][product_categories orderby=\"\" order=\"ASC\" columns=\"4\" ids=\"17, 24, 25, 28, 26, 27, 29\"][/vc_column][/vc_row]', 'Services', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2017-12-21 08:47:57', '2017-12-21 08:47:57', '', 43, 'http://localhost/FixMyHome/2017/12/21/43-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(101, 1, '2017-12-21 08:49:31', '2017-12-21 08:49:31', '{\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_shortcode\": {\n        \"value\": \"[product_categories orderby=\\\"\\\" order=\\\"ASC\\\" columns=\\\"4\\\" ids=\\\"17, 24, 25, 28\\\"]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '19f74bc6-911c-479a-bcf9-30fb3fe41f73', '', '', '2017-12-21 08:49:31', '2017-12-21 08:49:31', '', 0, 'http://localhost/FixMyHome/?p=101', 0, 'customize_changeset', '', 0),
(102, 1, '2017-12-21 08:50:48', '2017-12-21 08:50:48', '', 'Taha Carpenter', '', 'publish', 'open', 'closed', '', 'taha-carpenter', '', '', '2017-12-22 04:02:42', '2017-12-22 04:02:42', '', 0, 'http://localhost/FixMyHome/?post_type=product&#038;p=102', 0, 'product', '', 0),
(103, 1, '2017-12-21 08:52:55', '2017-12-21 08:52:55', '{\n    \"shop-isle::shop_isle_products_hide\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_title\": {\n        \"value\": \"Exclusive Products\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_shortcode\": {\n        \"value\": \"[product_categories orderby=\\\"\\\" order=\\\"ASC\\\" columns=\\\"4\\\" ids=\\\"17, 24, 25, 28\\\"]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_slider_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_slider_single_hide\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_slider_subtitle\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_slider_category\": {\n        \"value\": \"-\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a0199a43-919c-4bed-96f6-a9e6081f9659', '', '', '2017-12-21 08:52:55', '2017-12-21 08:52:55', '', 0, 'http://localhost/FixMyHome/?p=103', 0, 'customize_changeset', '', 0),
(104, 1, '2017-12-21 15:14:10', '0000-00-00 00:00:00', '{\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '4ecc2c10-859a-4e58-9ff7-cd6d4cd83e68', '', '', '2017-12-21 15:14:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?p=104', 0, 'customize_changeset', '', 0),
(105, 1, '2017-12-21 16:44:00', '2017-12-21 16:44:00', '', 'Order &ndash; December 21, 2017 @ 04:44 PM', '', 'wc-completed', 'closed', 'closed', 'order_5a3be4f9c3003', 'order-dec-21-2017-0444-pm', '', '', '2017-12-21 17:15:21', '2017-12-21 17:15:21', '', 0, 'http://localhost/FixMyHome/?post_type=shop_order&#038;p=105', 0, 'shop_order', '', 5),
(106, 7, '2017-12-21 16:44:00', '2017-12-21 16:44:00', '', 'Order &ndash; December 21, 2017 @ 04:44 PM', '', 'wc-completed', 'closed', 'closed', 'order_5a3be4f9ece53', 'order-dec-21-2017-0444-pm-2', '', '', '2017-12-21 17:15:00', '2017-12-21 17:15:00', '', 105, 'http://localhost/FixMyHome/?post_type=shop_order&#038;p=106', 0, 'shop_order', '', 3),
(107, 8, '2017-12-21 17:25:49', '2017-12-21 17:25:49', '', 'pasha worker', '', 'publish', 'open', 'closed', '', 'pasha-worker', '', '', '2017-12-21 17:38:54', '2017-12-21 17:38:54', '', 0, 'http://localhost/FixMyHome/?post_type=product&#038;p=107', 0, 'product', '', 0),
(108, 8, '2017-12-21 17:26:47', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2017-12-21 17:26:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/FixMyHome/?post_type=product&p=108', 0, 'product', '', 0),
(109, 1, '2017-12-21 17:28:01', '2017-12-21 17:28:01', '{\n    \"shop-isle::shop_isle_banners\": {\n        \"value\": \"[{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner1.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner2.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"},{\\\"text\\\":\\\"undefined\\\",\\\"link\\\":\\\"#\\\",\\\"label\\\":\\\"undefined\\\",\\\"image_url\\\":\\\"http://localhost/FixMyHome/wp-content/themes/shop-isle/assets/images/banner3.jpg\\\",\\\"title\\\":\\\"undefined\\\",\\\"subtext\\\":\\\"undefined\\\",\\\"social_repeater\\\":\\\"undefined\\\",\\\"id\\\":\\\"\\\\n\\\\t\\\\t\\\\t\\\\t\\\\t\\\\tshop_isle_banners\\\",\\\"shortcode\\\":\\\"undefined\\\",\\\"description\\\":\\\"undefined\\\"}]\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    },\n    \"shop-isle::shop_isle_products_title\": {\n        \"value\": \"Exclusive Services\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd832043b-8cef-4509-a590-9d4647290303', '', '', '2017-12-21 17:28:01', '2017-12-21 17:28:01', '', 0, 'http://localhost/FixMyHome/2017/12/21/d832043b-8cef-4509-a590-9d4647290303/', 0, 'customize_changeset', '', 0),
(110, 1, '2017-12-22 05:16:09', '2017-12-22 05:16:09', '[vc_row][vc_column width=\"2/3\"][vc_column_text]\n\nI am text block. Click edit button to change this text. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut elit tellus, luctus nec ullamcorper mattis, pulvinar dapibus leo.\n\n[/vc_column_text][vc_column_text][yith_wcmv_become_a_vendor][/vc_column_text][/vc_column][vc_column width=\"1/3\"][/vc_column][/vc_row][vc_row][vc_column][/vc_column][/vc_row]', 'Become a worker', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2017-12-22 05:16:09', '2017-12-22 05:16:09', '', 23, 'http://localhost/FixMyHome/2017/12/22/23-autosave-v1/', 0, 'revision', '', 0),
(111, 1, '2017-12-22 05:16:59', '2017-12-22 05:16:59', '[vc_row][vc_column width=\"2/3\"][vc_column_text]\r\n<h3>Fill the form below to register as a Worker</h3>\r\n[/vc_column_text][vc_column_text][yith_wcmv_become_a_vendor][/vc_column_text][/vc_column][vc_column width=\"1/3\"][/vc_column][/vc_row][vc_row][vc_column][/vc_column][/vc_row]', 'Become a worker', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-12-22 05:16:59', '2017-12-22 05:16:59', '', 23, 'http://localhost/FixMyHome/2017/12/22/23-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form`
--

CREATE TABLE `wp_rg_form` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rg_form`
--

INSERT INTO `wp_rg_form` (`id`, `title`, `date_created`, `is_active`, `is_trash`) VALUES
(1, 'contact us', '2017-12-21 06:45:42', 1, 0),
(2, 'product details', '2017-12-22 03:57:34', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_meta`
--

CREATE TABLE `wp_rg_form_meta` (
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `display_meta` longtext COLLATE utf8mb4_unicode_ci,
  `entries_grid_meta` longtext COLLATE utf8mb4_unicode_ci,
  `confirmations` longtext COLLATE utf8mb4_unicode_ci,
  `notifications` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rg_form_meta`
--

INSERT INTO `wp_rg_form_meta` (`form_id`, `display_meta`, `entries_grid_meta`, `confirmations`, `notifications`) VALUES
(1, '{\"title\":\"contact us\",\"description\":\"\",\"labelPlacement\":\"top_label\",\"descriptionPlacement\":\"below\",\"button\":{\"type\":\"text\",\"text\":\"Submit\",\"imageUrl\":\"\"},\"fields\":[{\"type\":\"name\",\"id\":1,\"label\":\"Name\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"\",\"nameFormat\":\"advanced\",\"inputs\":[{\"id\":\"1.2\",\"label\":\"Prefix\",\"name\":\"\",\"choices\":[{\"text\":\"Mr.\",\"value\":\"Mr.\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Mrs.\",\"value\":\"Mrs.\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Miss\",\"value\":\"Miss\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Ms.\",\"value\":\"Ms.\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Dr.\",\"value\":\"Dr.\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Prof.\",\"value\":\"Prof.\",\"isSelected\":false,\"price\":\"\"},{\"text\":\"Rev.\",\"value\":\"Rev.\",\"isSelected\":false,\"price\":\"\"}],\"isHidden\":true,\"inputType\":\"radio\"},{\"id\":\"1.3\",\"label\":\"First\",\"name\":\"\"},{\"id\":\"1.4\",\"label\":\"Middle\",\"name\":\"\",\"isHidden\":true},{\"id\":\"1.6\",\"label\":\"Last\",\"name\":\"\"},{\"id\":\"1.8\",\"label\":\"Suffix\",\"name\":\"\",\"isHidden\":true}],\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"visibility\":\"visible\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"displayOnly\":\"\"},{\"type\":\"email\",\"id\":2,\"label\":\"Email\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"large\",\"errorMessage\":\"\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"visibility\":\"visible\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"emailConfirmEnabled\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1,\"displayOnly\":\"\"},{\"type\":\"textarea\",\"id\":3,\"label\":\"Message\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"medium\",\"errorMessage\":\"\",\"inputs\":null,\"formId\":1,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"visibility\":\"visible\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"form_id\":\"\",\"useRichTextEditor\":false,\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"pageNumber\":1,\"displayOnly\":\"\"}],\"version\":\"2.2.5.8\",\"id\":1,\"useCurrentUserAsAuthor\":true,\"postContentTemplateEnabled\":false,\"postTitleTemplateEnabled\":false,\"postTitleTemplate\":\"\",\"postContentTemplate\":\"\",\"lastPageButton\":null,\"pagination\":null,\"firstPageCssClass\":null}', NULL, '{\"5a3b589615a89\":{\"id\":\"5a3b589615a89\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"message\",\"message\":\"Thanks for contacting us! We will get in touch with you shortly.\",\"url\":\"\",\"pageId\":\"\",\"queryString\":\"\"}}', '{\"5a3b589613d3d\":{\"id\":\"5a3b589613d3d\",\"to\":\"{admin_email}\",\"name\":\"Admin Notification\",\"event\":\"form_submission\",\"toType\":\"email\",\"subject\":\"New submission from {form_title}\",\"message\":\"{all_fields}\"}}'),
(2, '{\"title\":\"product details\",\"description\":\"\",\"labelPlacement\":\"top_label\",\"descriptionPlacement\":\"below\",\"button\":{\"type\":\"text\",\"text\":\"Submit\",\"imageUrl\":\"\"},\"fields\":[{\"type\":\"time\",\"id\":1,\"label\":\"Time\",\"adminLabel\":\"\",\"isRequired\":false,\"size\":\"medium\",\"errorMessage\":\"\",\"inputs\":[{\"id\":\"1.1\",\"label\":\"HH\",\"name\":\"\"},{\"id\":\"1.2\",\"label\":\"MM\",\"name\":\"\"},{\"id\":\"1.3\",\"label\":\"AM\\/PM\",\"name\":\"\"}],\"formId\":2,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"visibility\":\"\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"timeFormat\":\"12\",\"productField\":\"\",\"pageNumber\":1},{\"type\":\"date\",\"id\":2,\"label\":\"Date\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"medium\",\"errorMessage\":\"\",\"inputs\":null,\"dateType\":\"datepicker\",\"calendarIconType\":\"calendar\",\"formId\":2,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"\",\"cssClass\":\"\",\"inputName\":\"\",\"visibility\":\"visible\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"calendarIconUrl\":\"\",\"dateFormat\":\"\",\"productField\":\"\",\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"useRichTextEditor\":false,\"pageNumber\":1},{\"type\":\"textarea\",\"id\":3,\"label\":\"Description\",\"adminLabel\":\"\",\"isRequired\":true,\"size\":\"small\",\"errorMessage\":\"\",\"inputs\":null,\"formId\":2,\"description\":\"\",\"allowsPrepopulate\":false,\"inputMask\":false,\"inputMaskValue\":\"\",\"inputType\":\"\",\"labelPlacement\":\"\",\"descriptionPlacement\":\"\",\"subLabelPlacement\":\"\",\"placeholder\":\"Give short description of your problem\",\"cssClass\":\"\",\"inputName\":\"\",\"visibility\":\"visible\",\"noDuplicates\":false,\"defaultValue\":\"\",\"choices\":\"\",\"conditionalLogic\":\"\",\"productField\":\"\",\"form_id\":\"\",\"useRichTextEditor\":false,\"multipleFiles\":false,\"maxFiles\":\"\",\"calculationFormula\":\"\",\"calculationRounding\":\"\",\"enableCalculation\":\"\",\"disableQuantity\":false,\"displayAllCategories\":false,\"pageNumber\":1}],\"version\":\"2.2.5.8\",\"id\":2,\"useCurrentUserAsAuthor\":true,\"postContentTemplateEnabled\":false,\"postTitleTemplateEnabled\":false,\"postTitleTemplate\":\"\",\"postContentTemplate\":\"\",\"lastPageButton\":null,\"pagination\":null,\"firstPageCssClass\":null}', NULL, '{\"5a3c82ae093f4\":{\"id\":\"5a3c82ae093f4\",\"name\":\"Default Confirmation\",\"isDefault\":true,\"type\":\"message\",\"message\":\"Thanks for contacting us! We will get in touch with you shortly.\",\"url\":\"\",\"pageId\":\"\",\"queryString\":\"\"}}', '{\"5a3c82ae093f4\":{\"id\":\"5a3c82ae093f4\",\"to\":\"{admin_email}\",\"name\":\"Admin Notification\",\"event\":\"form_submission\",\"toType\":\"email\",\"subject\":\"New submission from {form_title}\",\"message\":\"{all_fields}\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_view`
--

CREATE TABLE `wp_rg_form_view` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` mediumint(8) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_rg_form_view`
--

INSERT INTO `wp_rg_form_view` (`id`, `form_id`, `date_created`, `ip`, `count`) VALUES
(1, 2, '2017-12-22 05:04:48', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_incomplete_submissions`
--

CREATE TABLE `wp_rg_incomplete_submissions` (
  `uuid` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `submission` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead`
--

CREATE TABLE `wp_rg_lead` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `payment_method` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail`
--

CREATE TABLE `wp_rg_lead_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL,
  `field_number` float NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail_long`
--

CREATE TABLE `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_meta`
--

CREATE TABLE `wp_rg_lead_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `form_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lead_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_notes`
--

CREATE TABLE `wp_rg_lead_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `lead_id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `note_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(11, 17, 'order', '0'),
(12, 17, 'display_type', ''),
(13, 17, 'thumbnail_id', '82'),
(14, 17, 'product_count_product_cat', '1'),
(25, 19, 'owner', '4'),
(26, 19, 'location', 'karachi'),
(27, 19, 'telephone', '03152143469'),
(28, 19, 'store_email', 'faizyqz@gmail.com'),
(29, 19, 'registration_date', '2017-12-20 18:44:40'),
(30, 19, 'registration_date_gmt', '2017-12-20 18:44:40'),
(31, 19, 'enable_selling', 'yes'),
(32, 19, 'vat', '42101----------'),
(34, 19, 'skip_review', 'no'),
(35, 21, 'owner', '5'),
(36, 21, 'location', 'karachi'),
(37, 21, 'telephone', '03151234567'),
(38, 21, 'store_email', 'taha_muchada@hotmail.com'),
(39, 21, 'registration_date', '2017-12-21 07:10:34'),
(40, 21, 'registration_date_gmt', '2017-12-21 07:10:34'),
(41, 21, 'enable_selling', 'yes'),
(42, 21, 'vat', '42101----------'),
(44, 21, 'skip_review', 'no'),
(45, 22, 'owner', '6'),
(46, 22, 'location', 'Nazimabad'),
(47, 22, 'telephone', '03151234567'),
(48, 22, 'store_email', 'abdulmoiz@gmail.com'),
(49, 22, 'registration_date', '2017-12-21 07:11:30'),
(50, 22, 'registration_date_gmt', '2017-12-21 07:11:30'),
(51, 22, 'enable_selling', 'yes'),
(52, 22, 'vat', '42101----------'),
(54, 22, 'skip_review', 'no'),
(55, 19, 'header_image', ''),
(56, 19, 'avatar', '78'),
(57, 19, 'legal_notes', ''),
(58, 19, 'website', ''),
(59, 19, 'socials', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:6:\"google\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:5:\"vimeo\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:7:\"behance\";s:0:\"\";s:11:\"tripadvisor\";s:0:\"\";}'),
(60, 19, 'paypal_email', ''),
(61, 19, 'bank_account', ''),
(62, 19, 'commission', '20'),
(63, 19, 'featured_products', 'no'),
(64, 22, 'header_image', ''),
(65, 22, 'avatar', '78'),
(66, 22, 'legal_notes', ''),
(67, 22, 'website', ''),
(68, 22, 'socials', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:6:\"google\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:5:\"vimeo\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:7:\"behance\";s:0:\"\";s:11:\"tripadvisor\";s:0:\"\";}'),
(69, 22, 'paypal_email', ''),
(70, 22, 'bank_account', ''),
(71, 22, 'commission', '20'),
(72, 22, 'featured_products', 'no'),
(73, 21, 'header_image', ''),
(74, 21, 'avatar', '78'),
(75, 21, 'legal_notes', ''),
(76, 21, 'website', ''),
(77, 21, 'socials', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:6:\"google\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:5:\"vimeo\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:7:\"behance\";s:0:\"\";s:11:\"tripadvisor\";s:0:\"\";}'),
(78, 21, 'paypal_email', ''),
(79, 21, 'bank_account', ''),
(80, 21, 'commission', '20'),
(81, 21, 'featured_products', 'no'),
(82, 23, 'owner', '7'),
(83, 23, 'location', 'karachi'),
(84, 23, 'telephone', '03152143469'),
(85, 23, 'store_email', 'alikhan@gmail.com'),
(86, 23, 'registration_date', '2017-12-21 07:15:46'),
(87, 23, 'registration_date_gmt', '2017-12-21 07:15:46'),
(88, 23, 'enable_selling', 'yes'),
(89, 23, 'vat', '42101----------'),
(91, 23, 'skip_review', 'no'),
(92, 23, 'header_image', ''),
(93, 23, 'avatar', '78'),
(94, 23, 'legal_notes', ''),
(95, 23, 'website', ''),
(96, 23, 'socials', 'a:11:{s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:6:\"google\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:5:\"vimeo\";s:0:\"\";s:9:\"instagram\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:7:\"behance\";s:0:\"\";s:11:\"tripadvisor\";s:0:\"\";}'),
(97, 23, 'paypal_email', ''),
(98, 23, 'bank_account', ''),
(99, 23, 'commission', '20'),
(100, 23, 'featured_products', 'no'),
(101, 24, 'order', '0'),
(102, 24, 'display_type', ''),
(103, 24, 'thumbnail_id', '80'),
(104, 25, 'order', '0'),
(105, 25, 'display_type', ''),
(106, 25, 'thumbnail_id', '41'),
(107, 26, 'order', '0'),
(108, 26, 'display_type', ''),
(109, 26, 'thumbnail_id', '83'),
(110, 27, 'order', '0'),
(111, 27, 'display_type', ''),
(112, 27, 'thumbnail_id', '84'),
(113, 28, 'order', '0'),
(114, 28, 'display_type', ''),
(115, 28, 'thumbnail_id', '85'),
(116, 29, 'order', '0'),
(117, 29, 'display_type', ''),
(118, 29, 'thumbnail_id', '86'),
(119, 24, 'product_count_product_cat', '2'),
(120, 25, 'product_count_product_cat', '1'),
(121, 29, 'product_count_product_cat', '2'),
(122, 27, 'product_count_product_cat', '1'),
(123, 28, 'product_count_product_cat', '1'),
(124, 30, 'owner', '8'),
(125, 30, 'location', 'karachi'),
(126, 30, 'telephone', '03152143469'),
(127, 30, 'store_email', 'pasha@gmail.com'),
(128, 30, 'registration_date', '2017-12-21 17:18:14'),
(129, 30, 'registration_date_gmt', '2017-12-21 17:18:14'),
(130, 30, 'enable_selling', 'yes'),
(131, 30, 'vat', '42101----------'),
(133, 30, 'skip_review', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Menu 1', 'menu-1', 0),
(17, 'Plumbers', 'plumbers', 0),
(19, 'Faizan worker', 'faizan-worker', 0),
(20, 'booking', 'booking', 0),
(21, 'taha worker', 'taha-worker', 0),
(22, 'moiz worker', 'moiz-worker', 0),
(23, 'ali worker', 'ali-worker', 0),
(24, 'Carpenter', 'carpenter', 0),
(25, 'Electrician', 'electrician', 0),
(26, 'Sweeper', 'sweeper', 0),
(27, 'Kitcher Repairs', 'kitcher-repairs', 0),
(28, 'Doctor', 'doctor', 0),
(29, 'Line Man (PTCL)', 'line-man-ptcl', 0),
(30, 'pasha worker', 'pasha-worker', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 15, 0),
(18, 15, 0),
(20, 15, 0),
(42, 2, 0),
(42, 17, 0),
(63, 19, 0),
(77, 15, 0),
(79, 23, 0),
(87, 2, 0),
(87, 23, 0),
(87, 24, 0),
(88, 23, 0),
(89, 2, 0),
(89, 23, 0),
(89, 25, 0),
(90, 23, 0),
(91, 2, 0),
(91, 17, 0),
(91, 23, 0),
(92, 23, 0),
(93, 2, 0),
(93, 21, 0),
(93, 29, 0),
(94, 2, 0),
(94, 21, 0),
(94, 27, 0),
(95, 2, 0),
(95, 22, 0),
(95, 28, 0),
(102, 2, 0),
(102, 21, 0),
(102, 24, 0),
(107, 2, 0),
(107, 9, 0),
(107, 29, 0),
(107, 30, 0),
(108, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 8),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 1),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'nav_menu', '', 0, 4),
(17, 17, 'product_cat', '', 0, 1),
(19, 19, 'yith_shop_vendor', '', 0, 1),
(20, 20, 'product_type', '', 0, 0),
(21, 21, 'yith_shop_vendor', '', 0, 3),
(22, 22, 'yith_shop_vendor', '', 0, 1),
(23, 23, 'yith_shop_vendor', '', 0, 7),
(24, 24, 'product_cat', '', 0, 2),
(25, 25, 'product_cat', '', 0, 1),
(26, 26, 'product_cat', '', 0, 0),
(27, 27, 'product_cat', '', 0, 1),
(28, 28, 'product_cat', '', 0, 1),
(29, 29, 'product_cat', '', 0, 2),
(30, 30, 'yith_shop_vendor', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'areeb'),
(3, 1, 'last_name', 'vohra'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'vc_pointers_backend_editor'),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:7:{s:64:\"3cd226bda07fc08e8c8571de55301498065b38d16af85b0d0ef799133ac4d98e\";a:4:{s:10:\"expiration\";i:1513965930;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36\";s:5:\"login\";i:1513793130;}s:64:\"904c52b17f060b5039b7f8810ab916a9207170a8634f6b7c5a114900db17ec00\";a:4:{s:10:\"expiration\";i:1513966099;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36\";s:5:\"login\";i:1513793299;}s:64:\"ac8ca805b3f64f50d0b26083d2e04f3de9bb35990d81b966262ab9d95191b131\";a:4:{s:10:\"expiration\";i:1513971005;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36\";s:5:\"login\";i:1513798205;}s:64:\"7d64084385385dfa1bc43101e51945d8aed3b9afdd64e28c4b73028e8e69fc04\";a:4:{s:10:\"expiration\";i:1514040706;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36\";s:5:\"login\";i:1513867906;}s:64:\"43f91174a11fae88d2b4c6cbc6be0e9e53afea3ebd22a5c091e878e4bff5e211\";a:4:{s:10:\"expiration\";i:1514047137;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36\";s:5:\"login\";i:1513874337;}s:64:\"2b51531c7507d726165949a0b87c960949195ba299f433df7f150bd012922b3d\";a:4:{s:10:\"expiration\";i:1514087788;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36\";s:5:\"login\";i:1513914988;}s:64:\"590ec5c876415cbafd857a77936e3fe380258fa34983a0f874b2b3ebdfbabdae\";a:4:{s:10:\"expiration\";i:1514091696;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.108 Safari/537.36\";s:5:\"login\";i:1513918896;}}'),
(16, 1, 'wp_user-settings', 'template_window_vcUIPanelWidth=1280&template_window_vcUIPanelLeft=151px&template_window_vcUIPanelTop=74px&editor=tinymce&edit_element_vcUIPanelWidth=650&edit_element_vcUIPanelLeft=791px&edit_element_vcUIPanelTop=74px&libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1513839253'),
(18, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(39, 1, 'meta-box-order_vc_grid_item', 'a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:27:\"wpb_visual_composer,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(40, 1, 'screen_layout_vc_grid_item', '2'),
(59, 4, 'nickname', 'faizyqz'),
(60, 4, 'first_name', ''),
(61, 4, 'last_name', ''),
(62, 4, 'description', ''),
(63, 4, 'rich_editing', 'true'),
(64, 4, 'comment_shortcuts', 'false'),
(65, 4, 'admin_color', 'fresh'),
(66, 4, 'use_ssl', '0'),
(67, 4, 'show_admin_bar_front', 'true'),
(68, 4, 'locale', ''),
(69, 4, 'wp_capabilities', 'a:1:{s:11:\"yith_vendor\";b:1;}'),
(70, 4, 'wp_user_level', '0'),
(71, 4, 'user_hearaboutus', 'worker'),
(73, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(74, 4, 'yith_product_vendor_owner', '19'),
(76, 4, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(77, 1, 'gform_recent_forms', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"1\";}'),
(78, 1, 'nav_menu_recently_edited', '15'),
(79, 5, 'nickname', 'Taha'),
(80, 5, 'first_name', ''),
(81, 5, 'last_name', ''),
(82, 5, 'description', ''),
(83, 5, 'rich_editing', 'true'),
(84, 5, 'comment_shortcuts', 'false'),
(85, 5, 'admin_color', 'fresh'),
(86, 5, 'use_ssl', '0'),
(87, 5, 'show_admin_bar_front', 'true'),
(88, 5, 'locale', ''),
(89, 5, 'wp_capabilities', 'a:1:{s:11:\"yith_vendor\";b:1;}'),
(90, 5, 'wp_user_level', '0'),
(91, 5, 'user_hearaboutus', 'worker'),
(93, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(94, 6, 'nickname', 'moiz'),
(95, 6, 'first_name', ''),
(96, 6, 'last_name', ''),
(97, 6, 'description', ''),
(98, 6, 'rich_editing', 'true'),
(99, 6, 'comment_shortcuts', 'false'),
(100, 6, 'admin_color', 'fresh'),
(101, 6, 'use_ssl', '0'),
(102, 6, 'show_admin_bar_front', 'true'),
(103, 6, 'locale', ''),
(104, 6, 'wp_capabilities', 'a:1:{s:11:\"yith_vendor\";b:1;}'),
(105, 6, 'wp_user_level', '0'),
(106, 6, 'user_hearaboutus', 'worker'),
(108, 6, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(110, 5, 'yith_product_vendor_owner', '21'),
(113, 6, 'yith_product_vendor_owner', '22'),
(117, 6, 'yith_product_vendor', '22'),
(118, 5, 'yith_product_vendor', '21'),
(119, 4, 'yith_product_vendor', '19'),
(120, 7, 'nickname', 'ali'),
(121, 7, 'first_name', ''),
(122, 7, 'last_name', ''),
(123, 7, 'description', ''),
(124, 7, 'rich_editing', 'true'),
(125, 7, 'comment_shortcuts', 'false'),
(126, 7, 'admin_color', 'fresh'),
(127, 7, 'use_ssl', '0'),
(128, 7, 'show_admin_bar_front', 'true'),
(129, 7, 'locale', ''),
(130, 7, 'wp_capabilities', 'a:1:{s:11:\"yith_vendor\";b:1;}'),
(131, 7, 'wp_user_level', '0'),
(132, 7, 'user_hearaboutus', 'worker'),
(134, 7, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(135, 7, 'yith_product_vendor_owner', '23'),
(137, 7, 'yith_product_vendor', '23'),
(139, 7, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(141, 6, 'session_tokens', 'a:1:{s:64:\"31d9b7ceb6839d8b2b5bad85613a6bd1b815b6986671add53620adb9c0056065\";a:4:{s:10:\"expiration\";i:1514018349;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1513845549;}}'),
(142, 1, 'last_update', '1513876522'),
(143, 1, 'billing_first_name', 'areeb'),
(144, 1, 'billing_last_name', 'vohra'),
(145, 1, 'billing_address_1', 'Nazimabad'),
(146, 1, 'billing_city', 'karachi'),
(147, 1, 'billing_state', 'SD'),
(148, 1, 'billing_postcode', '74200'),
(149, 1, 'billing_country', 'PK'),
(150, 1, 'billing_email', 'areebvohra@gmail.com'),
(151, 1, 'billing_phone', '03244114890'),
(152, 1, 'shipping_method', ''),
(154, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(156, 7, 'closedpostboxes_shop_order', 'a:0:{}'),
(157, 7, 'metaboxhidden_shop_order', 'a:0:{}'),
(158, 1, 'paying_customer', '1'),
(159, 7, '_vendor_commission_credit', '20'),
(160, 8, 'nickname', 'pasha'),
(161, 8, 'first_name', ''),
(162, 8, 'last_name', ''),
(163, 8, 'description', ''),
(164, 8, 'rich_editing', 'true'),
(165, 8, 'comment_shortcuts', 'false'),
(166, 8, 'admin_color', 'fresh'),
(167, 8, 'use_ssl', '0'),
(168, 8, 'show_admin_bar_front', 'true'),
(169, 8, 'locale', ''),
(170, 8, 'wp_capabilities', 'a:1:{s:11:\"yith_vendor\";b:1;}'),
(171, 8, 'wp_user_level', '0'),
(172, 8, 'user_hearaboutus', 'worker'),
(174, 8, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(175, 8, 'yith_product_vendor_owner', '30'),
(176, 8, 'yith_product_vendor', '30'),
(177, 8, 'community-events-location', 'a:1:{s:2:\"ip\";s:2:\"::\";}'),
(178, 9, 'nickname', 'abbas'),
(179, 9, 'first_name', ''),
(180, 9, 'last_name', ''),
(181, 9, 'description', ''),
(182, 9, 'rich_editing', 'true'),
(183, 9, 'comment_shortcuts', 'false'),
(184, 9, 'admin_color', 'fresh'),
(185, 9, 'use_ssl', '0'),
(186, 9, 'show_admin_bar_front', 'true'),
(187, 9, 'locale', ''),
(188, 9, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(189, 9, 'wp_user_level', '0'),
(190, 9, 'user_hearaboutus', 'customer'),
(191, 9, 'session_tokens', 'a:1:{s:64:\"fe4b7d0a771abc57dfdad976c122069b84d2d7a4ba6a82f5794b7569bce2a5d9\";a:4:{s:10:\"expiration\";i:1515129050;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:77:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:57.0) Gecko/20100101 Firefox/57.0\";s:5:\"login\";i:1513919450;}}'),
(192, 9, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bs2tCuEp7o4fhsGn4PWtQWRW2WuoFF.', 'admin', 'areebvohra@gmail.com', '', '2017-12-16 20:04:05', '', 0, 'admin'),
(4, 'faizyqz', '$P$BmN4oVCTJxv7zJ5i4iCsgmo/K64OJd/', 'faizyqz', 'faizyqz@gmail.com', '', '2017-12-20 18:44:05', '', 0, 'faizyqz'),
(5, 'Taha', '$P$B.e8v8pKBJ/AL9BGIWMOgBM7KJ1FwT.', 'taha', 'taha_muchada@hotmail.com', '', '2017-12-21 07:07:20', '', 0, 'Taha'),
(6, 'moiz', '$P$BdvdAS6ltA8c6dh7QpJJR1s6S96x9m0', 'moiz', 'abdulmoiz@gmail.com', '', '2017-12-21 07:08:10', '', 0, 'moiz'),
(7, 'ali', '$P$BJs6QPBgbqxancA8NnlTM00TTTEka3/', 'ali', 'alikhan@gmail.com', '', '2017-12-21 07:15:15', '', 0, 'ali'),
(8, 'pasha', '$P$BS0Y1kJQeZQ7YV77VsBerHDZIbPM2v1', 'pasha', 'pasha@gmail.com', '', '2017-12-21 17:17:42', '', 0, 'pasha'),
(9, 'abbas', '$P$BM/V/Rv/B2ns3ud4p5LQTDfCNZmSOs.', 'abbas', 'abas@gmail.com', '', '2017-12-22 05:10:49', '', 0, 'abbas');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_booking_relationships`
--

CREATE TABLE `wp_wc_booking_relationships` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `resource_id` bigint(20) UNSIGNED NOT NULL,
  `sort_order` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '91'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '100'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '100'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '91'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '1'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '100'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '100'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 2, '_parent_line_item_id', '1'),
(20, 2, '_commission_id', '1'),
(21, 1, '_commission_included_tax', 'no'),
(22, 1, '_commission_included_coupon', 'no'),
(23, 2, '_commission_included_tax', 'no'),
(24, 2, '_commission_included_coupon', 'no'),
(25, 1, '_child__commission_id', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Ali Plumber', 'line_item', 105),
(2, 'Ali Plumber', 'line_item', 106);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(86, '1', 'a:10:{s:8:\"customer\";s:726:\"a:25:{s:2:\"id\";i:1;s:8:\"postcode\";s:5:\"74200\";s:4:\"city\";s:7:\"karachi\";s:9:\"address_1\";s:9:\"Nazimabad\";s:7:\"address\";s:9:\"Nazimabad\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:5:\"areeb\";s:9:\"last_name\";s:5:\"vohra\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:11:\"03244114890\";s:5:\"email\";s:20:\"areebvohra@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:6:\"cheque\";s:22:\"order_awaiting_payment\";N;}', 1514047274),
(26, '21279e9801b9c1859cec9fc21d605688', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:653:\"a:25:{s:2:\"id\";i:0;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1513968245),
(25, '3', 'a:8:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:671:\"a:25:{s:2:\"id\";i:3;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:17:\"faizyqz@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1513968132),
(87, '3e86aee52862be2b80deb638efdb5f60', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:653:\"a:25:{s:2:\"id\";i:0;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1514092249),
(35, '4', 'a:1:{s:8:\"customer\";s:671:\"a:25:{s:2:\"id\";i:4;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:17:\"faizyqz@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1514012816),
(56, '5', 'a:1:{s:8:\"customer\";s:678:\"a:25:{s:2:\"id\";i:5;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:24:\"taha_muchada@hotmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1514018335),
(36, '5c37b46208a354b3c9b21fbc3439bf05', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:653:\"a:25:{s:2:\"id\";i:0;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1514012840),
(57, '6', 'a:7:{s:8:\"customer\";s:673:\"a:25:{s:2:\"id\";i:6;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:19:\"abdulmoiz@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";}', 1514018350),
(77, '7', 'a:1:{s:8:\"customer\";s:671:\"a:25:{s:2:\"id\";i:7;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:17:\"alikhan@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1514049427),
(85, '8', 'a:1:{s:8:\"customer\";s:669:\"a:25:{s:2:\"id\";i:8;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:15:\"pasha@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1514090521),
(89, '9', 'a:8:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:668:\"a:25:{s:2:\"id\";i:9;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:14:\"abas@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1514092252),
(40, 'aef9a87a99eb637d35c529a4be4dffb7', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:653:\"a:25:{s:2:\"id\";i:0;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1514012890),
(48, 'c07a504368ea348932688b0057c84c22', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:653:\"a:25:{s:2:\"id\";i:0;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1514013314),
(78, 'cf0a5a194215d6916dc11e3b8acf19c3', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:653:\"a:25:{s:2:\"id\";i:0;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1514049462),
(21, 'f31b0ebbd3a547ae500e6e3b9cc67cb7', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:653:\"a:25:{s:2:\"id\";i:0;s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"SD\";s:7:\"country\";s:2:\"PK\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"SD\";s:16:\"shipping_country\";s:2:\"PK\";s:13:\"is_vat_exempt\";b:0;s:19:\"calculated_shipping\";b:0;s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1513967903);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Pakistan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'PK', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_vendors_commissions`
--

CREATE TABLE `wp_yith_vendors_commissions` (
  `ID` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `line_item_id` bigint(20) NOT NULL,
  `rate` decimal(5,4) NOT NULL,
  `amount` double(15,4) NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_edit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_edit_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yith_vendors_commissions`
--

INSERT INTO `wp_yith_vendors_commissions` (`ID`, `order_id`, `user_id`, `vendor_id`, `line_item_id`, `rate`, `amount`, `status`, `last_edit`, `last_edit_gmt`) VALUES
(1, 106, 7, 23, 2, '0.2000', 20.0000, 'unpaid', '2017-12-21 17:15:02', '2017-12-21 17:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_vendors_commissions_notes`
--

CREATE TABLE `wp_yith_vendors_commissions_notes` (
  `ID` bigint(20) NOT NULL,
  `commission_id` bigint(20) NOT NULL,
  `note_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yith_vendors_commissions_notes`
--

INSERT INTO `wp_yith_vendors_commissions_notes` (`ID`, `commission_id`, `note_date`, `description`) VALUES
(1, 1, '2017-12-21 16:44:43', 'Vendor commission have been calculated:<br>* tax <em>excluded</em><br>* coupon <em>excluded</em>'),
(2, 1, '2017-12-21 17:15:02', 'Commission status changed from Pending to Unpaid.');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_vendors_payments`
--

CREATE TABLE `wp_yith_vendors_payments` (
  `ID` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount` double(15,4) NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `payment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_vendors_payments_relathionship`
--

CREATE TABLE `wp_yith_vendors_payments_relathionship` (
  `ID` bigint(20) NOT NULL,
  `payment_id` bigint(20) NOT NULL,
  `commission_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_datalist`
--
ALTER TABLE `wp_datalist`
  ADD PRIMARY KEY (`url`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_rg_form`
--
ALTER TABLE `wp_rg_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_rg_form_meta`
--
ALTER TABLE `wp_rg_form_meta`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `wp_rg_form_view`
--
ALTER TABLE `wp_rg_form_view`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_rg_incomplete_submissions`
--
ALTER TABLE `wp_rg_incomplete_submissions`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `wp_rg_lead`
--
ALTER TABLE `wp_rg_lead`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wp_rg_lead_detail`
--
ALTER TABLE `wp_rg_lead_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_field_number` (`lead_id`,`field_number`),
  ADD KEY `lead_field_value` (`value`(191));

--
-- Indexes for table `wp_rg_lead_detail_long`
--
ALTER TABLE `wp_rg_lead_detail_long`
  ADD PRIMARY KEY (`lead_detail_id`);

--
-- Indexes for table `wp_rg_lead_meta`
--
ALTER TABLE `wp_rg_lead_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `form_id_meta_key` (`form_id`,`meta_key`(191));

--
-- Indexes for table `wp_rg_lead_notes`
--
ALTER TABLE `wp_rg_lead_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `lead_user_key` (`lead_id`,`user_id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_booking_relationships`
--
ALTER TABLE `wp_wc_booking_relationships`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `resource_id` (`resource_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yith_vendors_commissions`
--
ALTER TABLE `wp_yith_vendors_commissions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_yith_vendors_commissions_notes`
--
ALTER TABLE `wp_yith_vendors_commissions_notes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_yith_vendors_payments`
--
ALTER TABLE `wp_yith_vendors_payments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_yith_vendors_payments_relathionship`
--
ALTER TABLE `wp_yith_vendors_payments_relathionship`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2460;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=661;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `wp_rg_form`
--
ALTER TABLE `wp_rg_form`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_rg_form_view`
--
ALTER TABLE `wp_rg_form_view`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_rg_lead`
--
ALTER TABLE `wp_rg_lead`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_lead_detail`
--
ALTER TABLE `wp_rg_lead_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_lead_meta`
--
ALTER TABLE `wp_rg_lead_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_rg_lead_notes`
--
ALTER TABLE `wp_rg_lead_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_wc_booking_relationships`
--
ALTER TABLE `wp_wc_booking_relationships`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yith_vendors_commissions`
--
ALTER TABLE `wp_yith_vendors_commissions`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yith_vendors_commissions_notes`
--
ALTER TABLE `wp_yith_vendors_commissions_notes`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_yith_vendors_payments`
--
ALTER TABLE `wp_yith_vendors_payments`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yith_vendors_payments_relathionship`
--
ALTER TABLE `wp_yith_vendors_payments_relathionship`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
