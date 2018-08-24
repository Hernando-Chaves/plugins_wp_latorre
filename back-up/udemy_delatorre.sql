-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2018 a las 15:05:35
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `udemy_delatorre`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delatorre_commentmeta`
--

CREATE TABLE `delatorre_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delatorre_comments`
--

CREATE TABLE `delatorre_comments` (
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
-- Volcado de datos para la tabla `delatorre_comments`
--

INSERT INTO `delatorre_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-18 15:49:58', '2018-07-18 15:49:58', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delatorre_links`
--

CREATE TABLE `delatorre_links` (
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
-- Estructura de tabla para la tabla `delatorre_options`
--

CREATE TABLE `delatorre_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `delatorre_options`
--

INSERT INTO `delatorre_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/udemy_deLaTorre', 'yes'),
(2, 'home', 'http://localhost/udemy_deLaTorre', 'yes'),
(3, 'blogname', 'Udemy De La Torre', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@io.io', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:204:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:10:\"previas/?$\";s:26:\"index.php?post_type=previa\";s:40:\"previas/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=previa&feed=$matches[1]\";s:35:\"previas/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=previa&feed=$matches[1]\";s:27:\"previas/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=previa&paged=$matches[1]\";s:13:\"evaluacion/?$\";s:30:\"index.php?post_type=evaluacion\";s:43:\"evaluacion/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=evaluacion&feed=$matches[1]\";s:38:\"evaluacion/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=evaluacion&feed=$matches[1]\";s:30:\"evaluacion/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=evaluacion&paged=$matches[1]\";s:11:\"practica/?$\";s:28:\"index.php?post_type=practica\";s:41:\"practica/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=practica&feed=$matches[1]\";s:36:\"practica/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=practica&feed=$matches[1]\";s:28:\"practica/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=practica&paged=$matches[1]\";s:7:\"quiz/?$\";s:24:\"index.php?post_type=quiz\";s:37:\"quiz/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=quiz&feed=$matches[1]\";s:32:\"quiz/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=quiz&feed=$matches[1]\";s:24:\"quiz/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=quiz&paged=$matches[1]\";s:11:\"examenes/?$\";s:28:\"index.php?post_type=examenes\";s:41:\"examenes/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=examenes&feed=$matches[1]\";s:36:\"examenes/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=examenes&feed=$matches[1]\";s:28:\"examenes/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=examenes&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"previas/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"previas/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"previas/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"previas/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"previas/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"previas/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"previas/([^/]+)/embed/?$\";s:39:\"index.php?previa=$matches[1]&embed=true\";s:28:\"previas/([^/]+)/trackback/?$\";s:33:\"index.php?previa=$matches[1]&tb=1\";s:48:\"previas/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?previa=$matches[1]&feed=$matches[2]\";s:43:\"previas/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?previa=$matches[1]&feed=$matches[2]\";s:36:\"previas/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?previa=$matches[1]&paged=$matches[2]\";s:43:\"previas/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?previa=$matches[1]&cpage=$matches[2]\";s:32:\"previas/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?previa=$matches[1]&page=$matches[2]\";s:24:\"previas/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"previas/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"previas/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"previas/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"previas/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"previas/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"evaluacion/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"evaluacion/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"evaluacion/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"evaluacion/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"evaluacion/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"evaluacion/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"evaluacion/([^/]+)/embed/?$\";s:43:\"index.php?evaluacion=$matches[1]&embed=true\";s:31:\"evaluacion/([^/]+)/trackback/?$\";s:37:\"index.php?evaluacion=$matches[1]&tb=1\";s:51:\"evaluacion/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?evaluacion=$matches[1]&feed=$matches[2]\";s:46:\"evaluacion/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?evaluacion=$matches[1]&feed=$matches[2]\";s:39:\"evaluacion/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?evaluacion=$matches[1]&paged=$matches[2]\";s:46:\"evaluacion/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?evaluacion=$matches[1]&cpage=$matches[2]\";s:35:\"evaluacion/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?evaluacion=$matches[1]&page=$matches[2]\";s:27:\"evaluacion/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"evaluacion/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"evaluacion/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"evaluacion/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"evaluacion/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"evaluacion/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"practica/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"practica/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"practica/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"practica/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"practica/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"practica/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"practica/([^/]+)/embed/?$\";s:41:\"index.php?practica=$matches[1]&embed=true\";s:29:\"practica/([^/]+)/trackback/?$\";s:35:\"index.php?practica=$matches[1]&tb=1\";s:49:\"practica/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?practica=$matches[1]&feed=$matches[2]\";s:44:\"practica/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?practica=$matches[1]&feed=$matches[2]\";s:37:\"practica/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?practica=$matches[1]&paged=$matches[2]\";s:44:\"practica/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?practica=$matches[1]&cpage=$matches[2]\";s:33:\"practica/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?practica=$matches[1]&page=$matches[2]\";s:25:\"practica/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"practica/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"practica/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"practica/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"practica/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"practica/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"quiz/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"quiz/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"quiz/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"quiz/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"quiz/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"quiz/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"quiz/([^/]+)/embed/?$\";s:37:\"index.php?quiz=$matches[1]&embed=true\";s:25:\"quiz/([^/]+)/trackback/?$\";s:31:\"index.php?quiz=$matches[1]&tb=1\";s:45:\"quiz/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?quiz=$matches[1]&feed=$matches[2]\";s:40:\"quiz/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?quiz=$matches[1]&feed=$matches[2]\";s:33:\"quiz/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?quiz=$matches[1]&paged=$matches[2]\";s:40:\"quiz/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?quiz=$matches[1]&cpage=$matches[2]\";s:29:\"quiz/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?quiz=$matches[1]&page=$matches[2]\";s:21:\"quiz/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"quiz/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"quiz/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"quiz/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"quiz/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"quiz/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"examenes/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"examenes/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"examenes/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"examenes/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"examenes/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"examenes/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"examenes/([^/]+)/embed/?$\";s:41:\"index.php?examenes=$matches[1]&embed=true\";s:29:\"examenes/([^/]+)/trackback/?$\";s:35:\"index.php?examenes=$matches[1]&tb=1\";s:49:\"examenes/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?examenes=$matches[1]&feed=$matches[2]\";s:44:\"examenes/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?examenes=$matches[1]&feed=$matches[2]\";s:37:\"examenes/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?examenes=$matches[1]&paged=$matches[2]\";s:44:\"examenes/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?examenes=$matches[1]&cpage=$matches[2]\";s:33:\"examenes/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?examenes=$matches[1]&page=$matches[2]\";s:25:\"examenes/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"examenes/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"examenes/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"examenes/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"examenes/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"examenes/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:39:\"evaluacion-examen/evaluacion-examen.php\";i:1;s:25:\"evaluacion/evaluacion.php\";i:2;s:26:\"practica_solo/practica.php\";i:3;s:35:\"quizbook-examen/quizbook-examen.php\";i:4;s:21:\"quizbook/quizbook.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
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
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'delatorre_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:105:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:19:\"delete_other_quizes\";b:1;s:17:\"edit_evaluaciones\";b:1;s:19:\"delete_evaluaciones\";b:1;s:14:\"edit_practicas\";b:1;s:11:\"edit_quizes\";b:1;s:14:\"publish_quizes\";b:1;s:21:\"edit_published_quizes\";b:1;s:18:\"edit_others_quizes\";b:1;s:20:\"delete_others_quizes\";b:1;s:19:\"read_private_quizes\";b:1;s:19:\"edit_private_quizes\";b:1;s:13:\"delete_quizes\";b:1;s:23:\"delete_published_quizes\";b:1;s:21:\"delete_private_quizes\";b:1;s:12:\"edit_previas\";b:1;s:15:\"publish_previas\";b:1;s:18:\"edit_other_previas\";b:1;s:22:\"edit_published_previas\";b:1;s:20:\"publish_evaluaciones\";b:1;s:24:\"edit_others_evaluaciones\";b:1;s:27:\"edit_published_evaluaciones\";b:1;s:25:\"read_private_evaluaciones\";b:1;s:25:\"edit_private_evaluaciones\";b:1;s:27:\"delete_private_evaluaciones\";b:1;s:29:\"delete_published_evaluaciones\";b:1;s:26:\"delete_others_evaluaciones\";b:1;s:20:\"read_private_previas\";b:1;s:20:\"edit_private_previas\";b:1;s:19:\"edit_others_previas\";b:1;s:14:\"delete_previas\";b:1;s:21:\"delete_others_previas\";b:1;s:22:\"delete_private_previas\";b:1;s:24:\"delete_published_previas\";b:1;s:20:\"edit_others_examenes\";b:1;s:4:\"read\";b:1;s:13:\"edit_examenes\";b:1;s:16:\"publish_examenes\";b:1;s:23:\"edit_published_examenes\";b:1;s:21:\"read_private_examenes\";b:1;s:19:\"edit_other_examenes\";b:1;s:21:\"edit_private_examenes\";b:1;s:15:\"delete_examenes\";b:1;s:22:\"delete_others_examenes\";b:1;s:23:\"delete_private_examenes\";b:1;s:25:\"delete_published_examenes\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:78:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:19:\"delete_other_quizes\";b:1;s:17:\"edit_evaluaciones\";b:1;s:19:\"delete_evaluaciones\";b:1;s:14:\"edit_practicas\";b:1;s:11:\"edit_quizes\";b:1;s:14:\"publish_quizes\";b:1;s:21:\"edit_published_quizes\";b:1;s:18:\"edit_others_quizes\";b:1;s:20:\"delete_others_quizes\";b:1;s:19:\"read_private_quizes\";b:1;s:19:\"edit_private_quizes\";b:1;s:13:\"delete_quizes\";b:1;s:23:\"delete_published_quizes\";b:1;s:21:\"delete_private_quizes\";b:1;s:12:\"edit_previas\";b:1;s:15:\"publish_previas\";b:1;s:18:\"edit_other_previas\";b:1;s:22:\"edit_published_previas\";b:1;s:20:\"publish_evaluaciones\";b:1;s:24:\"edit_others_evaluaciones\";b:1;s:27:\"edit_published_evaluaciones\";b:1;s:25:\"read_private_evaluaciones\";b:1;s:25:\"edit_private_evaluaciones\";b:1;s:27:\"delete_private_evaluaciones\";b:1;s:29:\"delete_published_evaluaciones\";b:1;s:26:\"delete_others_evaluaciones\";b:1;s:20:\"read_private_previas\";b:1;s:20:\"edit_private_previas\";b:1;s:19:\"edit_others_previas\";b:1;s:14:\"delete_previas\";b:1;s:21:\"delete_others_previas\";b:1;s:22:\"delete_private_previas\";b:1;s:24:\"delete_published_previas\";b:1;s:20:\"edit_others_examenes\";b:1;s:4:\"read\";b:1;s:13:\"edit_examenes\";b:1;s:16:\"publish_examenes\";b:1;s:23:\"edit_published_examenes\";b:1;s:21:\"read_private_examenes\";b:1;s:19:\"edit_other_examenes\";b:1;s:21:\"edit_private_examenes\";b:1;s:15:\"delete_examenes\";b:1;s:22:\"delete_others_examenes\";b:1;s:23:\"delete_private_examenes\";b:1;s:25:\"delete_published_examenes\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:4:\"quiz\";a:2:{s:4:\"name\";s:8:\"Quizbook\";s:12:\"capabilities\";a:4:{s:4:\"read\";b:1;s:11:\"edit_quizes\";b:1;s:14:\"publish_quizes\";b:1;s:21:\"edit_published_quizes\";b:1;}}s:9:\"practica2\";a:2:{s:4:\"name\";s:10:\"Practica 2\";s:12:\"capabilities\";a:0:{}}s:8:\"quizbook\";a:2:{s:4:\"name\";s:8:\"Quizbook\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:11:\"edit_quizes\";b:1;s:14:\"publish_quizes\";b:1;s:21:\"edit_published_quizes\";b:1;s:18:\"edit_others_quizes\";b:1;s:20:\"delete_others_quizes\";b:1;s:13:\"edit_examenes\";b:1;s:16:\"publish_examenes\";b:1;s:19:\"edit_other_examenes\";b:1;s:23:\"edit_published_examenes\";b:1;s:20:\"edit_others_examenes\";b:1;}}s:10:\"evaluacion\";a:2:{s:4:\"name\";s:10:\"Evaluacion\";s:12:\"capabilities\";a:9:{s:4:\"read\";b:1;s:17:\"edit_evaluaciones\";b:1;s:20:\"publish_evaluaciones\";b:1;s:24:\"edit_others_evaluaciones\";b:1;s:27:\"edit_published_evaluaciones\";b:1;s:12:\"edit_previas\";b:1;s:15:\"publish_previas\";b:1;s:18:\"edit_other_previas\";b:1;s:22:\"edit_published_previas\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'es_CO', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1535118626;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1535125800;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1535125801;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1535125849;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535194809;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(125, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:10:\"info@io.io\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533291939;}', 'no'),
(136, 'can_compress_scripts', '1', 'no'),
(149, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1535105844;s:7:\"checked\";a:6:{s:13:\"goth/goth.php\";s:5:\"1.0.0\";s:25:\"evaluacion/evaluacion.php\";s:0:\"\";s:39:\"evaluacion-examen/evaluacion-examen.php\";s:0:\"\";s:26:\"practica_solo/practica.php\";s:0:\"\";s:21:\"quizbook/quizbook.php\";s:5:\"1.0.0\";s:35:\"quizbook-examen/quizbook-examen.php\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no'),
(165, 'recently_activated', 'a:0:{}', 'yes'),
(241, 'category_children', 'a:0:{}', 'yes'),
(323, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_CO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1535105831;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(480, '_site_transient_timeout_browser_a54eb83090ed984332f4eca22d3ec5e4', '1535539482', 'no'),
(481, '_site_transient_browser_a54eb83090ed984332f4eca22d3ec5e4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(498, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1535105857;s:7:\"checked\";a:1:{s:15:\"twentyseventeen\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(512, '_site_transient_timeout_theme_roots', '1535107657', 'no'),
(513, '_site_transient_theme_roots', 'a:1:{s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no'),
(514, '_transient_timeout_dash_v2_8ed47f02370e4304b3fb8352267b4572', '1535149113', 'no'),
(515, '_transient_dash_v2_8ed47f02370e4304b3fb8352267b4572', '<div class=\"rss-widget\"><p><strong>Error RSS:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10000 milliseconds</p></div><div class=\"rss-widget\"><p><strong>Error RSS:</strong> WP HTTP Error: cURL error 28: Connection timed out after 10000 milliseconds</p></div>', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delatorre_postmeta`
--

CREATE TABLE `delatorre_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `delatorre_postmeta`
--

INSERT INTO `delatorre_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(3, 31, '_edit_last', '1'),
(4, 31, '_edit_lock', '1533909247:1'),
(57, 39, '_edit_last', '1'),
(60, 39, '_edit_lock', '1532690892:1'),
(89, 41, '_edit_last', '1'),
(90, 41, '_edit_lock', '1532690314:1'),
(98, 39, '_wp_old_slug', '39'),
(116, 42, '_edit_lock', '1533906512:1'),
(117, 42, '_edit_last', '1'),
(124, 43, '_edit_lock', '1532961439:3'),
(125, 43, '_edit_last', '3'),
(145, 59, '_edit_last', '1'),
(147, 59, '_edit_lock', '1534162271:1'),
(152, 61, '_edit_lock', '1535020783:1'),
(153, 61, '_edit_last', '1'),
(154, 64, '_edit_lock', '1533218061:1'),
(155, 64, '_edit_last', '1'),
(156, 66, '_edit_lock', '1534159556:1'),
(157, 66, '_edit_last', '1'),
(163, 67, '_edit_lock', '1534338653:1'),
(164, 67, '_edit_last', '1'),
(165, 67, '_oembed_ceb751f8a0c113afdbf99756172516bd', '{{unknown}}'),
(196, 73, '_edit_lock', '1533906458:1'),
(197, 73, '_edit_last', '1'),
(204, 74, '_edit_lock', '1533906406:1'),
(205, 74, '_edit_last', '1'),
(212, 75, '_edit_lock', '1533906331:1'),
(213, 75, '_edit_last', '1'),
(220, 76, '_edit_lock', '1533906253:1'),
(221, 76, '_edit_last', '1'),
(228, 82, '_edit_lock', '1533218553:1'),
(229, 82, '_edit_last', '1'),
(235, 84, '_edit_lock', '1534159794:1'),
(236, 84, '_edit_last', '1'),
(242, 85, '_edit_lock', '1534159637:1'),
(243, 85, '_edit_last', '1'),
(249, 86, '_edit_lock', '1534159593:1'),
(250, 86, '_edit_last', '1'),
(256, 87, '_edit_lock', '1534159572:1'),
(257, 87, '_edit_last', '1'),
(265, 91, '_wp_trash_meta_status', 'publish'),
(266, 91, '_wp_trash_meta_time', '1533292184'),
(267, 2, '_wp_trash_meta_status', 'publish'),
(268, 2, '_wp_trash_meta_time', '1533296795'),
(269, 2, '_wp_desired_post_slug', 'pagina-ejemplo'),
(270, 64, '_wp_trash_meta_status', 'publish'),
(271, 64, '_wp_trash_meta_time', '1533298244'),
(272, 64, '_wp_desired_post_slug', 'solo'),
(273, 76, '_wp_old_slug', 'data-science'),
(274, 76, 'bwc_respuesta_a', 'Rojo'),
(275, 76, 'bwc_respuesta_b', 'Azul'),
(276, 76, 'bwc_respuesta_c', 'Verde'),
(277, 76, 'bwc_respuesta_d', 'Amarillo'),
(278, 76, 'bwc_respuesta_e', 'Gris'),
(279, 76, 'quizbook_correcta', 'bwc_correcta:b'),
(280, 75, 'bwc_respuesta_a', 'Mexico'),
(281, 75, 'bwc_respuesta_b', 'Argentina'),
(282, 75, 'bwc_respuesta_c', 'Perú'),
(283, 75, 'bwc_respuesta_d', 'Colombia'),
(284, 75, 'bwc_respuesta_e', 'Ecuador'),
(285, 75, 'quizbook_correcta', 'bwc_correcta:d'),
(286, 74, 'bwc_respuesta_a', 'Java'),
(287, 74, 'bwc_respuesta_b', 'Angular'),
(288, 74, 'bwc_respuesta_c', 'Java Script'),
(289, 74, 'bwc_respuesta_d', 'Laravel'),
(290, 74, 'bwc_respuesta_e', 'PHP'),
(291, 74, 'quizbook_correcta', 'bwc_correcta:e'),
(292, 73, 'bwc_respuesta_a', 'isset'),
(293, 73, 'bwc_respuesta_b', 'get_post_meta'),
(294, 73, 'bwc_respuesta_c', 'explode'),
(295, 73, 'bwc_respuesta_d', 'strlower'),
(296, 73, 'bwc_respuesta_e', 'lowercase'),
(297, 73, 'quizbook_correcta', 'bwc_correcta:b'),
(298, 42, 'bwc_respuesta_a', 'May'),
(299, 42, 'bwc_respuesta_b', 'Julio'),
(300, 42, 'bwc_respuesta_c', 'Diciembre'),
(301, 42, 'bwc_respuesta_d', 'Abril'),
(302, 42, 'bwc_respuesta_e', 'Enero'),
(303, 42, 'quizbook_correcta', 'bwc_correcta:d'),
(304, 31, 'bwc_respuesta_a', 'Laravel'),
(305, 31, 'bwc_respuesta_b', 'Vue js'),
(306, 31, 'bwc_respuesta_c', 'Angular'),
(307, 31, 'bwc_respuesta_d', 'Bootstrap'),
(308, 31, 'bwc_respuesta_e', 'React'),
(309, 31, 'quizbook_correcta', 'bwc_correcta:a'),
(340, 87, 'rt_eval_a', 'Rock'),
(341, 87, 'rt_eval_b', 'Salsa'),
(342, 87, 'rt_eval_c', 'Merengue'),
(343, 87, 'rt_eval_d', 'Vallenato'),
(344, 86, 'rt_eval_a', 'Paris'),
(345, 86, 'rt_eval_b', 'Lima'),
(346, 86, 'rt_eval_c', 'Bogotá'),
(347, 86, 'rt_eval_d', 'Managua'),
(348, 66, 'rt_eval_a', 'Frances'),
(349, 66, 'rt_eval_b', 'Catalán'),
(350, 66, 'rt_eval_c', 'Ingles'),
(351, 66, 'rt_eval_d', 'Español'),
(352, 66, 'eva_correcta', 'rt_correcta:d'),
(353, 87, 'eva_correcta', 'rt_correcta:a'),
(354, 86, 'eva_correcta', 'rt_correcta:c'),
(355, 85, 'rt_eval_a', 'Cali'),
(356, 85, 'rt_eval_b', 'La Mesa'),
(357, 85, 'rt_eval_c', 'Girardot'),
(358, 85, 'rt_eval_d', 'Tulua'),
(359, 85, 'eva_correcta', 'rt_correcta:b'),
(360, 84, 'rt_eval_a', 'Perro'),
(361, 84, 'rt_eval_b', 'Paloma'),
(362, 84, 'rt_eval_c', 'Leon'),
(363, 84, 'rt_eval_d', 'Pez'),
(364, 84, 'eva_correcta', 'rt_correcta:d'),
(365, 59, 'rt_eval_a', 'Tennis'),
(366, 59, 'rt_eval_b', 'Baloncesto'),
(367, 59, 'rt_eval_c', 'Motociclismo'),
(368, 59, 'rt_eval_d', 'Futbol'),
(369, 59, 'eva_correcta', 'rt_correcta:d'),
(370, 98, '_edit_lock', '1534510001:2'),
(371, 99, '_edit_lock', '1534850060:1'),
(372, 100, '_edit_lock', '1534852315:1'),
(373, 101, '_edit_lock', '1534852434:1'),
(374, 102, '_edit_lock', '1534853237:1'),
(375, 103, '_edit_lock', '1534853563:1'),
(376, 104, '_edit_lock', '1534853582:1'),
(377, 107, '_edit_lock', '1534854093:1'),
(378, 108, '_edit_lock', '1534854141:1'),
(379, 109, '_edit_lock', '1534854236:1'),
(380, 110, '_edit_lock', '1534854255:1'),
(381, 111, '_edit_lock', '1534854352:1'),
(382, 112, '_edit_lock', '1534854612:1'),
(383, 113, '_edit_lock', '1534854678:1'),
(384, 115, '_edit_lock', '1534854955:1'),
(385, 116, '_edit_lock', '1534855055:1'),
(386, 117, '_edit_lock', '1534855143:1'),
(387, 118, '_edit_lock', '1534855401:1'),
(388, 119, '_edit_lock', '1534855483:1'),
(389, 120, '_edit_lock', '1534855501:1'),
(390, 121, '_edit_lock', '1534855584:1'),
(391, 122, '_edit_lock', '1534855617:1'),
(392, 124, '_edit_lock', '1534855725:1'),
(393, 127, '_edit_lock', '1534855753:1'),
(394, 128, '_edit_lock', '1534855874:1'),
(395, 131, '_edit_lock', '1534858275:1'),
(396, 132, '_edit_lock', '1534858318:1'),
(397, 134, '_edit_lock', '1534858376:1'),
(398, 135, '_edit_lock', '1534934949:1'),
(399, 136, '_edit_lock', '1534935141:1'),
(400, 137, '_edit_lock', '1534935394:1'),
(401, 138, '_edit_lock', '1534935410:1'),
(402, 139, '_edit_lock', '1534935656:1'),
(403, 140, '_edit_lock', '1534940843:1'),
(404, 141, '_edit_lock', '1534936989:1'),
(405, 142, '_edit_lock', '1534937007:1'),
(406, 144, '_edit_lock', '1534937205:1'),
(407, 146, '_edit_lock', '1534937315:1'),
(408, 147, '_edit_lock', '1534937419:1'),
(409, 148, '_edit_lock', '1534937475:1'),
(410, 149, '_edit_lock', '1534937750:1'),
(411, 150, '_edit_lock', '1534938651:1'),
(412, 151, '_edit_lock', '1534938669:1'),
(413, 153, '_edit_lock', '1534938698:1'),
(414, 154, '_edit_lock', '1534938880:1'),
(415, 156, '_edit_lock', '1534938936:1'),
(416, 158, '_edit_lock', '1534939029:1'),
(417, 159, '_edit_lock', '1534939105:1'),
(418, 160, '_edit_lock', '1534939125:1'),
(419, 161, '_edit_lock', '1534939196:1'),
(420, 164, '_edit_lock', '1534940754:1'),
(421, 166, '_edit_lock', '1534940775:1'),
(422, 168, '_edit_lock', '1534942734:1'),
(423, 169, '_edit_lock', '1534940926:1'),
(424, 170, '_edit_lock', '1535021805:1'),
(425, 170, '_edit_last', '1'),
(426, 1, '_edit_lock', '1534940935:1'),
(427, 171, '_edit_last', '1'),
(428, 171, '_edit_lock', '1535020813:1'),
(429, 171, '_wp_trash_meta_status', 'publish'),
(430, 171, '_wp_trash_meta_time', '1535020961'),
(431, 171, '_wp_desired_post_slug', '171'),
(432, 172, '_edit_lock', '1535021504:1'),
(433, 172, '_edit_last', '1'),
(434, 173, '_edit_lock', '1535106399:1'),
(435, 173, '_edit_last', '1'),
(436, 175, '_edit_lock', '1535115851:1'),
(437, 175, '_edit_last', '1'),
(438, 175, 'examen_select', 's:32:\"a:2:{i:0;s:2:\"76\";i:1;s:2:\"75\";}\";'),
(439, 176, '_edit_lock', '1535115199:1'),
(440, 176, '_edit_last', '1'),
(441, 178, '_edit_lock', '1535115620:1'),
(442, 179, '_edit_lock', '1535115919:1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delatorre_posts`
--

CREATE TABLE `delatorre_posts` (
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
-- Volcado de datos para la tabla `delatorre_posts`
--

INSERT INTO `delatorre_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-18 15:49:58', '2018-07-18 15:49:58', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2018-07-18 15:49:58', '2018-07-18 15:49:58', '', 0, 'http://localhost/udemy_deLaTorre/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-18 15:49:58', '2018-07-18 15:49:58', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así: <blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote> … o algo así: <blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote> Si eres nuevo en WordPress deberías ir a <a href=\"http://localhost/udemy_deLaTorre/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-ejemplo__trashed', '', '', '2018-08-03 11:46:35', '2018-08-03 11:46:35', '', 0, 'http://localhost/udemy_deLaTorre/?page_id=2', 0, 'page', '', 0),
(31, 1, '2018-07-25 14:37:42', '2018-07-25 14:37:42', 'Descripción de la pregunta ¿ Cual es el lenguaje usado en wordpress ?', 'Framework PHP', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-08-10 13:11:42', '2018-08-10 13:11:42', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=quiz&#038;p=31', 0, 'quiz', '', 0),
(32, 1, '2018-07-25 14:52:15', '2018-07-25 14:52:15', '', '¿ Cual es el lenguaje usado en wordpress ?', '', 'inherit', 'closed', 'closed', '', '31-autosave-v1', '', '', '2018-07-25 14:52:15', '2018-07-25 14:52:15', '', 31, 'http://localhost/udemy_deLaTorre/2018/07/25/31-autosave-v1/', 0, 'revision', '', 0),
(39, 1, '2018-07-26 10:55:58', '2018-07-26 10:55:58', '', 'Colores', '', 'publish', 'closed', 'closed', '', 'colores', '', '', '2018-07-27 11:28:11', '2018-07-27 11:28:11', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=test&#038;p=39', 0, 'test', '', 0),
(41, 1, '2018-07-26 11:46:45', '2018-07-26 11:46:45', '', 'Servicios Ofrecidos', '', 'publish', 'closed', 'closed', '', 'servicios-ofrecidos', '', '', '2018-07-27 11:19:10', '2018-07-27 11:19:10', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=solo&#038;p=41', 0, 'solo', '', 0),
(42, 2, '2018-07-30 13:59:33', '2018-07-30 13:59:33', '', 'Mes Nacimiento', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2018-08-10 13:10:52', '2018-08-10 13:10:52', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=quiz&#038;p=42', 0, 'quiz', '', 0),
(43, 3, '2018-07-30 14:39:38', '2018-07-30 14:39:38', '', 'test solo', '', 'publish', 'closed', 'closed', '', 'test-solo', '', '', '2018-07-30 14:39:38', '2018-07-30 14:39:38', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=solo&#038;p=43', 0, 'solo', '', 0),
(59, 1, '2018-07-31 10:57:58', '2018-07-31 10:57:58', 'Tu color preferido es:', 'Deporte', '', 'publish', 'closed', 'closed', '', '59', '', '', '2018-08-13 11:33:06', '2018-08-13 11:33:06', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=evaluacion&#038;p=59', 0, 'evaluacion', '', 0),
(61, 1, '2018-07-31 14:07:34', '2018-07-31 14:07:34', '[quizbook2 preguntas=\"5\" orden=\"rand\"]', 'Quizbook', '', 'publish', 'closed', 'closed', '', 'examen', '', '', '2018-08-10 13:56:44', '2018-08-10 13:56:44', '', 0, 'http://localhost/udemy_deLaTorre/?page_id=61', 0, 'page', '', 0),
(62, 1, '2018-07-31 14:07:34', '2018-07-31 14:07:34', '[quizbook]', 'Examen', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-07-31 14:07:34', '2018-07-31 14:07:34', '', 61, 'http://localhost/udemy_deLaTorre/2018/07/31/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-08-01 13:35:04', '2018-08-01 13:35:04', '[quizbook2]', 'Examen', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-08-01 13:35:04', '2018-08-01 13:35:04', '', 61, 'http://localhost/udemy_deLaTorre/2018/08/01/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-08-02 10:41:43', '2018-08-02 10:41:43', '[solo numero=\"3\" orden=\"rand\"]', 'Solo', '', 'trash', 'closed', 'closed', '', 'solo__trashed', '', '', '2018-08-03 12:10:44', '2018-08-03 12:10:44', '', 0, 'http://localhost/udemy_deLaTorre/?page_id=64', 0, 'page', '', 0),
(65, 1, '2018-08-02 10:41:43', '2018-08-02 10:41:43', '[solo]', 'Solo', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-08-02 10:41:43', '2018-08-02 10:41:43', '', 64, 'http://localhost/udemy_deLaTorre/2018/08/02/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-08-02 11:23:36', '2018-08-02 11:23:36', 'Cual materia te gusta más:', 'Idioma Colombia', '', 'publish', 'closed', 'closed', '', 'materias', '', '', '2018-08-13 11:28:04', '2018-08-13 11:28:04', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=evaluacion&#038;p=66', 0, 'evaluacion', '', 0),
(67, 1, '2018-08-02 11:24:19', '2018-08-02 11:24:19', '[evaluacion numero=\"5\" orden=\"rand\"]', 'Test Evaluacion', '', 'publish', 'closed', 'closed', '', 'test-evaluacion', '', '', '2018-08-15 12:40:49', '2018-08-15 12:40:49', '', 0, 'http://localhost/udemy_deLaTorre/?page_id=67', 0, 'page', '', 0),
(68, 1, '2018-08-02 11:24:19', '2018-08-02 11:24:19', '[evaluacion]', 'Evaluacion', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-08-02 11:24:19', '2018-08-02 11:24:19', '', 67, 'http://localhost/udemy_deLaTorre/2018/08/02/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-08-02 11:43:08', '2018-08-02 11:43:08', '', 'Evaluacion', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-08-02 11:43:08', '2018-08-02 11:43:08', '', 67, 'http://localhost/udemy_deLaTorre/2018/08/02/67-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-08-02 11:49:44', '2018-08-02 11:49:44', '', 'Test Evaluacion', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-08-02 11:49:44', '2018-08-02 11:49:44', '', 67, 'http://localhost/udemy_deLaTorre/2018/08/02/67-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-08-02 11:50:08', '2018-08-02 11:50:08', '[evaluacion]', 'Test Evaluacion', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-08-02 11:50:08', '2018-08-02 11:50:08', '', 67, 'http://localhost/udemy_deLaTorre/2018/08/02/67-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-08-02 12:01:08', '2018-08-02 12:01:08', 'Tu color preferido es:', 'Características', '', 'inherit', 'closed', 'closed', '', '59-autosave-v1', '', '', '2018-08-02 12:01:08', '2018-08-02 12:01:08', '', 59, 'http://localhost/udemy_deLaTorre/2018/08/02/59-autosave-v1/', 0, 'revision', '', 0),
(73, 1, '2018-08-02 12:43:27', '2018-08-02 12:43:27', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Funcion wordpress para obtener los campos prsonalizados', '', 'publish', 'closed', 'closed', '', 'funcion-wordpress-para-obtener-los-campos-prsonalizados', '', '', '2018-08-10 13:09:59', '2018-08-10 13:09:59', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=quiz&#038;p=73', 0, 'quiz', '', 0),
(74, 1, '2018-08-02 12:44:37', '2018-08-02 12:44:37', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Lenguajes de Wordpress', '', 'publish', 'closed', 'closed', '', 'lenguajes-de-programacion', '', '', '2018-08-10 13:09:06', '2018-08-10 13:09:06', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=quiz&#038;p=74', 0, 'quiz', '', 0),
(75, 1, '2018-08-02 12:45:45', '2018-08-02 12:45:45', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Nuestro País', '', 'publish', 'closed', 'closed', '', 'tecnicas-de-dibujo', '', '', '2018-08-10 13:07:29', '2018-08-10 13:07:29', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=quiz&#038;p=75', 0, 'quiz', '', 0),
(76, 1, '2018-08-02 12:46:43', '2018-08-02 12:46:43', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Color Millos', '', 'publish', 'closed', 'closed', '', 'color-millos', '', '', '2018-08-10 13:06:06', '2018-08-10 13:06:06', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=quiz&#038;p=76', 0, 'quiz', '', 0),
(77, 1, '2018-08-02 12:47:34', '2018-08-02 12:47:34', '[quizbook preguntas=\"3\" orden=\"rand\"]', 'Examen', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-08-02 12:47:34', '2018-08-02 12:47:34', '', 61, 'http://localhost/udemy_deLaTorre/2018/08/02/61-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2018-08-02 12:51:32', '2018-08-02 12:51:32', '[quizbook]', 'Examen', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-08-02 12:51:32', '2018-08-02 12:51:32', '', 61, 'http://localhost/udemy_deLaTorre/2018/08/02/61-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-08-02 12:52:58', '2018-08-02 12:52:58', '[quizbook2 preguntas=\"3\" orden=\"rand\"]', 'Examen', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-08-02 12:52:58', '2018-08-02 12:52:58', '', 61, 'http://localhost/udemy_deLaTorre/2018/08/02/61-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-08-02 13:56:38', '2018-08-02 13:56:38', '[solo numero=\"3\" orden=\"rand\"]', 'Solo', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2018-08-02 13:56:38', '2018-08-02 13:56:38', '', 64, 'http://localhost/udemy_deLaTorre/2018/08/02/64-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2018-08-02 14:00:32', '0000-00-00 00:00:00', 'Phasellus gravida semper nisi. Etiam sollicitudin, ipsum eu pulvinar rutrum, tellus ipsum laoreet sapien, quis venenatis ante odio sit amet eros. Nulla consequat massa quis enim.', 'Colores', '', 'pending', 'closed', 'closed', '', '', '', '', '2018-08-02 14:00:32', '2018-08-02 14:00:32', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=practica&#038;p=82', 0, 'practica', '', 0),
(83, 1, '2018-08-02 14:09:17', '2018-08-02 14:09:17', '[evaluacion numero=\"3\" orden=\"rand\"]', 'Test Evaluacion', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-08-02 14:09:17', '2018-08-02 14:09:17', '', 67, 'http://localhost/udemy_deLaTorre/2018/08/02/67-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-08-02 14:10:20', '2018-08-02 14:10:20', 'Etiam imperdiet imperdiet orci. Vivamus euismod mauris. Vestibulum fringilla pede sit amet augue.', 'Animal Acuatico', '', 'publish', 'closed', 'closed', '', 'animales', '', '', '2018-08-13 11:32:07', '2018-08-13 11:32:07', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=evaluacion&#038;p=84', 0, 'evaluacion', '', 0),
(85, 1, '2018-08-02 14:11:02', '2018-08-02 14:11:02', 'Etiam imperdiet imperdiet orci. Vivamus euismod mauris. Vestibulum fringilla pede sit amet augue.', 'Lugar Nacimiento', '', 'publish', 'closed', 'closed', '', 'lugares', '', '', '2018-08-13 11:29:37', '2018-08-13 11:29:37', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=evaluacion&#038;p=85', 0, 'evaluacion', '', 0),
(86, 1, '2018-08-02 14:11:39', '2018-08-02 14:11:39', 'Etiam imperdiet imperdiet orci. Vivamus euismod mauris. Vestibulum fringilla pede sit amet augue.', 'Ciudad Colombiana', '', 'publish', 'closed', 'closed', '', 'ciudades', '', '', '2018-08-13 11:28:50', '2018-08-13 11:28:50', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=evaluacion&#038;p=86', 0, 'evaluacion', '', 0),
(87, 1, '2018-08-02 14:12:18', '2018-08-02 14:12:18', 'Etiam imperdiet imperdiet orci. Vivamus euismod mauris. Vestibulum fringilla pede sit amet augue.', 'Musica favorita', '', 'publish', 'closed', 'closed', '', 'nombres', '', '', '2018-08-13 11:28:30', '2018-08-13 11:28:30', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=evaluacion&#038;p=87', 0, 'evaluacion', '', 0),
(90, 1, '2018-08-02 14:56:39', '2018-08-02 14:56:39', '[quizbook2 preguntas=\"3\" orden=\"rand\"]', 'Quizbook', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-08-02 14:56:39', '2018-08-02 14:56:39', '', 61, 'http://localhost/udemy_deLaTorre/2018/08/02/61-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-08-03 10:29:44', '2018-08-03 10:29:44', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-03 10:29:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bfa2e15e-bfec-4809-9d45-3eb822eacac1', '', '', '2018-08-03 10:29:44', '2018-08-03 10:29:44', '', 0, 'http://localhost/udemy_deLaTorre/2018/08/03/bfa2e15e-bfec-4809-9d45-3eb822eacac1/', 0, 'customize_changeset', '', 0),
(92, 1, '2018-08-03 11:46:35', '2018-08-03 11:46:35', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Sobre mí para presentarse a los potenciales visitantes. Podría ser algo así: <blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote> … o algo así: <blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote> Si eres nuevo en WordPress deberías ir a <a href=\"http://localhost/udemy_deLaTorre/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-03 11:46:35', '2018-08-03 11:46:35', '', 2, 'http://localhost/udemy_deLaTorre/2018/08/03/2-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-08-10 13:09:00', '2018-08-10 13:09:00', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Lenguajes de Wordpress', '', 'inherit', 'closed', 'closed', '', '74-autosave-v1', '', '', '2018-08-10 13:09:00', '2018-08-10 13:09:00', '', 74, 'http://localhost/udemy_deLaTorre/2018/08/10/74-autosave-v1/', 0, 'revision', '', 0),
(94, 1, '2018-08-10 13:56:44', '2018-08-10 13:56:44', '[quizbook2 preguntas=\"5\" orden=\"rand\"]', 'Quizbook', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2018-08-10 13:56:44', '2018-08-10 13:56:44', '', 61, 'http://localhost/udemy_deLaTorre/2018/08/10/61-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-08-10 14:27:52', '2018-08-10 14:27:52', 'Etiam imperdiet imperdiet orci. Vivamus euismod mauris. Vestibulum fringilla pede sit amet augue.', 'Función Wordpress para Obtener campos personaliozados', '', 'inherit', 'closed', 'closed', '', '87-autosave-v1', '', '', '2018-08-10 14:27:52', '2018-08-10 14:27:52', '', 87, 'http://localhost/udemy_deLaTorre/2018/08/10/87-autosave-v1/', 0, 'revision', '', 0),
(97, 1, '2018-08-15 12:40:49', '2018-08-15 12:40:49', '[evaluacion numero=\"5\" orden=\"rand\"]', 'Test Evaluacion', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-08-15 12:40:49', '2018-08-15 12:40:49', '', 67, 'http://localhost/udemy_deLaTorre/2018/08/15/67-revision-v1/', 0, 'revision', '', 0),
(98, 2, '2018-08-17 11:35:51', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-17 11:35:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=98', 0, 'examenes', '', 0),
(99, 1, '2018-08-21 11:02:53', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 11:02:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=99', 0, 'examenes', '', 0),
(100, 1, '2018-08-21 11:14:22', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 11:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=100', 0, 'examenes', '', 0),
(101, 1, '2018-08-21 11:51:55', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 11:51:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=101', 0, 'examenes', '', 0),
(102, 1, '2018-08-21 11:53:57', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 11:53:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=102', 0, 'examenes', '', 0),
(103, 1, '2018-08-21 12:07:18', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:07:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=103', 0, 'examenes', '', 0),
(104, 1, '2018-08-21 12:12:44', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:12:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=104', 0, 'examenes', '', 0),
(105, 1, '2018-08-21 12:13:01', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:13:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=105', 0, 'examenes', '', 0),
(106, 1, '2018-08-21 12:13:24', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:13:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=106', 0, 'examenes', '', 0),
(107, 1, '2018-08-21 12:13:31', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:13:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=107', 0, 'examenes', '', 0),
(108, 1, '2018-08-21 12:21:34', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:21:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=108', 0, 'examenes', '', 0),
(109, 1, '2018-08-21 12:22:34', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:22:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=109', 0, 'examenes', '', 0),
(110, 1, '2018-08-21 12:23:57', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:23:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=110', 0, 'examenes', '', 0),
(111, 1, '2018-08-21 12:24:32', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:24:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=111', 0, 'examenes', '', 0),
(112, 1, '2018-08-21 12:25:53', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:25:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=112', 0, 'examenes', '', 0),
(113, 1, '2018-08-21 12:30:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:30:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=113', 0, 'examenes', '', 0),
(114, 1, '2018-08-21 12:31:20', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:31:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=114', 0, 'examenes', '', 0),
(115, 1, '2018-08-21 12:31:22', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:31:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=115', 0, 'examenes', '', 0),
(116, 1, '2018-08-21 12:36:00', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:36:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=116', 0, 'examenes', '', 0),
(117, 1, '2018-08-21 12:37:46', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:37:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=117', 0, 'previa', '', 0),
(118, 1, '2018-08-21 12:39:04', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:39:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=118', 0, 'previa', '', 0),
(119, 1, '2018-08-21 12:43:27', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:43:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=119', 0, 'previa', '', 0),
(120, 1, '2018-08-21 12:44:44', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:44:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=120', 0, 'previa', '', 0),
(121, 1, '2018-08-21 12:45:11', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:45:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=121', 0, 'previa', '', 0),
(122, 1, '2018-08-21 12:46:25', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:46:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=122', 0, 'previa', '', 0),
(123, 1, '2018-08-21 12:46:58', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:46:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=123', 0, 'previa', '', 0),
(124, 1, '2018-08-21 12:46:58', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:46:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=124', 0, 'previa', '', 0),
(125, 1, '2018-08-21 12:48:48', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:48:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=125', 0, 'previa', '', 0),
(126, 1, '2018-08-21 12:48:48', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:48:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=126', 0, 'previa', '', 0),
(127, 1, '2018-08-21 12:48:56', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:48:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=127', 0, 'previa', '', 0),
(128, 1, '2018-08-21 12:49:22', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:49:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=128', 0, 'previa', '', 0),
(129, 1, '2018-08-21 12:51:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:51:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=129', 0, 'previa', '', 0),
(130, 1, '2018-08-21 12:51:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:51:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=130', 0, 'previa', '', 0),
(131, 1, '2018-08-21 12:51:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 12:51:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=131', 0, 'previa', '', 0),
(132, 1, '2018-08-21 13:31:25', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 13:31:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=132', 0, 'previa', '', 0),
(133, 1, '2018-08-21 13:32:04', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 13:32:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=evaluacion&p=133', 0, 'evaluacion', '', 0),
(134, 1, '2018-08-21 13:32:24', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-21 13:32:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=134', 0, 'previa', '', 0),
(135, 1, '2018-08-22 10:45:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:45:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=135', 0, 'examenes', '', 0),
(136, 1, '2018-08-22 10:49:14', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:49:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=136', 0, 'previa', '', 0),
(137, 1, '2018-08-22 10:52:23', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:52:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=137', 0, 'previa', '', 0),
(138, 1, '2018-08-22 10:56:33', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:56:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=138', 0, 'previa', '', 0),
(139, 1, '2018-08-22 10:56:51', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 10:56:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=139', 0, 'previa', '', 0),
(140, 1, '2018-08-22 11:00:05', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:00:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=140', 0, 'examenes', '', 0),
(141, 1, '2018-08-22 11:00:57', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:00:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=141', 0, 'previa', '', 0),
(142, 1, '2018-08-22 11:23:10', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:23:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=142', 0, 'previa', '', 0),
(143, 1, '2018-08-22 11:25:58', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:25:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=143', 0, 'previa', '', 0),
(144, 1, '2018-08-22 11:26:10', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:26:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=144', 0, 'previa', '', 0),
(145, 1, '2018-08-22 11:26:47', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:26:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=145', 0, 'previa', '', 0),
(146, 1, '2018-08-22 11:26:47', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:26:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=146', 0, 'previa', '', 0),
(147, 1, '2018-08-22 11:28:37', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:28:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=147', 0, 'previa', '', 0),
(148, 1, '2018-08-22 11:30:25', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:30:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=148', 0, 'previa', '', 0),
(149, 1, '2018-08-22 11:31:16', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:31:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=149', 0, 'previa', '', 0),
(150, 1, '2018-08-22 11:35:50', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:35:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=150', 0, 'previa', '', 0),
(151, 1, '2018-08-22 11:50:52', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:50:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=151', 0, 'previa', '', 0),
(152, 1, '2018-08-22 11:51:22', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:51:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=152', 0, 'previa', '', 0),
(153, 1, '2018-08-22 11:51:22', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:51:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=153', 0, 'previa', '', 0),
(154, 1, '2018-08-22 11:52:44', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:52:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=154', 0, 'previa', '', 0),
(155, 1, '2018-08-22 11:54:42', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:54:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=155', 0, 'previa', '', 0),
(156, 1, '2018-08-22 11:54:43', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:54:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=156', 0, 'previa', '', 0),
(157, 1, '2018-08-22 11:55:38', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:55:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=157', 0, 'previa', '', 0),
(158, 1, '2018-08-22 11:55:38', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:55:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=158', 0, 'previa', '', 0),
(159, 1, '2018-08-22 11:57:09', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:57:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=159', 0, 'previa', '', 0),
(160, 1, '2018-08-22 11:58:26', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:58:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=160', 0, 'previa', '', 0),
(161, 1, '2018-08-22 11:58:58', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:58:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=161', 0, 'previa', '', 0),
(162, 1, '2018-08-22 11:59:55', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:59:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=162', 0, 'previa', '', 0),
(163, 1, '2018-08-22 11:59:56', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 11:59:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=163', 0, 'previa', '', 0),
(164, 1, '2018-08-22 12:00:15', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 12:00:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=164', 0, 'previa', '', 0),
(165, 1, '2018-08-22 12:25:57', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 12:25:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=165', 0, 'previa', '', 0),
(166, 1, '2018-08-22 12:25:58', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 12:25:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=166', 0, 'previa', '', 0),
(167, 1, '2018-08-22 12:26:37', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 12:26:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=167', 0, 'previa', '', 0),
(168, 1, '2018-08-22 12:26:38', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 12:26:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&p=168', 0, 'previa', '', 0),
(169, 1, '2018-08-22 12:27:24', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-22 12:27:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=169', 0, 'examenes', '', 0),
(170, 1, '2018-08-22 12:29:19', '2018-08-22 12:29:19', '', 'Examen 01', '', 'publish', 'closed', 'closed', '', '170', '', '', '2018-08-22 12:54:08', '2018-08-22 12:54:08', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&#038;p=170', 0, 'examenes', '', 0),
(171, 1, '2018-08-23 10:42:20', '2018-08-23 10:42:20', '', '', '', 'trash', 'closed', 'closed', '', '171__trashed', '', '', '2018-08-23 10:42:41', '2018-08-23 10:42:41', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&#038;p=171', 0, 'examenes', '', 0),
(172, 1, '2018-08-23 10:46:48', '2018-08-23 10:46:48', '', 'Previa 1', '', 'publish', 'closed', 'closed', '', 'previa-1', '', '', '2018-08-23 10:46:48', '2018-08-23 10:46:48', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=previa&#038;p=172', 0, 'previa', '', 0),
(173, 1, '2018-08-23 11:00:57', '2018-08-23 11:00:57', '', 'Examen 2', '', 'publish', 'closed', 'closed', '', 'examen-2', '', '', '2018-08-23 11:00:57', '2018-08-23 11:00:57', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&#038;p=173', 0, 'examenes', '', 0),
(174, 1, '2018-08-24 10:17:45', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-24 10:17:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?p=174', 0, 'post', '', 0),
(175, 1, '2018-08-24 10:29:16', '2018-08-24 10:29:16', '', 'Examen 3', '', 'publish', 'closed', 'closed', '', 'examen-3', '', '', '2018-08-24 12:56:06', '2018-08-24 12:56:06', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&#038;p=175', 0, 'examenes', '', 0),
(176, 1, '2018-08-24 12:55:13', '2018-08-24 12:55:13', '[quizbook_examen preguntas=\'\' orden=\'\' id=\'175\']', 'Examen shortcode', '', 'publish', 'closed', 'closed', '', 'examen-shortcode', '', '', '2018-08-24 12:55:13', '2018-08-24 12:55:13', '', 0, 'http://localhost/udemy_deLaTorre/?page_id=176', 0, 'page', '', 0),
(177, 1, '2018-08-24 12:55:13', '2018-08-24 12:55:13', '[quizbook_examen preguntas=\'\' orden=\'\' id=\'175\']', 'Examen shortcode', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2018-08-24 12:55:13', '2018-08-24 12:55:13', '', 176, 'http://localhost/udemy_deLaTorre/2018/08/24/176-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2018-08-24 12:57:31', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-24 12:57:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=178', 0, 'examenes', '', 0),
(179, 1, '2018-08-24 13:00:33', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-24 13:00:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/udemy_deLaTorre/?post_type=examenes&p=179', 0, 'examenes', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delatorre_termmeta`
--

CREATE TABLE `delatorre_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delatorre_terms`
--

CREATE TABLE `delatorre_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `delatorre_terms`
--

INSERT INTO `delatorre_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delatorre_term_relationships`
--

CREATE TABLE `delatorre_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `delatorre_term_relationships`
--

INSERT INTO `delatorre_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delatorre_term_taxonomy`
--

CREATE TABLE `delatorre_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `delatorre_term_taxonomy`
--

INSERT INTO `delatorre_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delatorre_usermeta`
--

CREATE TABLE `delatorre_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `delatorre_usermeta`
--

INSERT INTO `delatorre_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'blessmen_deLaTorre'),
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
(12, 1, 'delatorre_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'delatorre_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"2fa67ce4a6dbb85406d59baf42d8d7eb66f2d062d1879a4be3bab3bd293d5801\";a:4:{s:10:\"expiration\";i:1535107479;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1534934679;}s:64:\"0acdeefca6fd4f42a374ba5c0273d379eb290fa0c1cd328ef6ab72f2f7d29ac9\";a:4:{s:10:\"expiration\";i:1535193712;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1535020912;}s:64:\"02341ea2dfca84758ecad5a1792a6589d353ebf621bb0d24ef6bbdd3a0a30757\";a:4:{s:10:\"expiration\";i:1535278652;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1535105852;}}'),
(17, 1, 'delatorre_dashboard_quick_press_last_post_id', '174'),
(18, 1, 'closedpostboxes_test', 'a:0:{}'),
(19, 1, 'metaboxhidden_test', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(20, 2, 'nickname', 'quiz'),
(21, 2, 'first_name', 'Hernando'),
(22, 2, 'last_name', 'Suarez'),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'delatorre_capabilities', 'a:1:{s:8:\"quizbook\";b:1;}'),
(32, 2, 'delatorre_user_level', '0'),
(33, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(50, 4, 'nickname', 'test'),
(51, 4, 'first_name', 'test'),
(52, 4, 'last_name', 'Suarez'),
(53, 4, 'description', ''),
(54, 4, 'rich_editing', 'true'),
(55, 4, 'syntax_highlighting', 'true'),
(56, 4, 'comment_shortcuts', 'false'),
(57, 4, 'admin_color', 'fresh'),
(58, 4, 'use_ssl', '0'),
(59, 4, 'show_admin_bar_front', 'true'),
(60, 4, 'locale', ''),
(61, 4, 'delatorre_capabilities', 'a:1:{s:4:\"test\";b:1;}'),
(62, 4, 'delatorre_user_level', '0'),
(63, 4, 'dismissed_wp_pointers', 'wp496_privacy'),
(64, 4, 'session_tokens', 'a:1:{s:64:\"cf3ff2f83c9549bc908d1ecbf3277b063b5c78afd58687faf77e1d61bd30350c\";a:4:{s:10:\"expiration\";i:1533135497;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1532962697;}}'),
(65, 5, 'nickname', 'evaluacion'),
(66, 5, 'first_name', 'Hernando'),
(67, 5, 'last_name', 'Suarez'),
(68, 5, 'description', ''),
(69, 5, 'rich_editing', 'true'),
(70, 5, 'syntax_highlighting', 'true'),
(71, 5, 'comment_shortcuts', 'false'),
(72, 5, 'admin_color', 'fresh'),
(73, 5, 'use_ssl', '0'),
(74, 5, 'show_admin_bar_front', 'true'),
(75, 5, 'locale', ''),
(76, 5, 'delatorre_capabilities', 'a:1:{s:10:\"evaluacion\";b:1;}'),
(77, 5, 'delatorre_user_level', '0'),
(78, 5, 'dismissed_wp_pointers', 'wp496_privacy'),
(79, 5, 'session_tokens', 'a:2:{s:64:\"9b43acf7b431e125dcfbbff6228e44f3ef4e6b528919884c5690b072566c2435\";a:4:{s:10:\"expiration\";i:1533211426;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1533038626;}s:64:\"879a37c6a7196e52596432e5a84b48469b0c209d0b7eb78068175efaf55ecb19\";a:4:{s:10:\"expiration\";i:1533217658;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1533044858;}}'),
(81, 1, 'delatorre_user-settings', 'editor=tinymce'),
(82, 1, 'delatorre_user-settings-time', '1533130763'),
(83, 2, 'session_tokens', 'a:1:{s:64:\"f3a0e151db6ddb3f63cefed1b7aada4e833f9c8a6bb21d33038cee4e1f0fcd86\";a:4:{s:10:\"expiration\";i:1534677789;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1534504989;}}'),
(84, 6, 'nickname', 'evaluacion'),
(85, 6, 'first_name', 'Hernando'),
(86, 6, 'last_name', 'Suarez'),
(87, 6, 'description', ''),
(88, 6, 'rich_editing', 'true'),
(89, 6, 'syntax_highlighting', 'true'),
(90, 6, 'comment_shortcuts', 'false'),
(91, 6, 'admin_color', 'fresh'),
(92, 6, 'use_ssl', '0'),
(93, 6, 'show_admin_bar_front', 'true'),
(94, 6, 'locale', ''),
(95, 6, 'delatorre_capabilities', 'a:1:{s:10:\"evaluacion\";b:1;}'),
(96, 6, 'delatorre_user_level', '0'),
(97, 6, 'dismissed_wp_pointers', 'wp496_privacy'),
(98, 6, 'session_tokens', 'a:1:{s:64:\"c461871ba5b28b051ee198c4e736de5b84ebfecd73a207ae3bf468bc97bccd49\";a:4:{s:10:\"expiration\";i:1534683486;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1534510686;}}'),
(99, 1, 'closedpostboxes_examenes', 'a:0:{}'),
(100, 1, 'metaboxhidden_examenes', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delatorre_users`
--

CREATE TABLE `delatorre_users` (
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
-- Volcado de datos para la tabla `delatorre_users`
--

INSERT INTO `delatorre_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'blessmen_deLaTorre', '$P$BowRVQ7v67auZFOkv9WRcrdZDTbFgL/', 'blessmen_delatorre', 'info@io.io', '', '2018-07-18 15:49:56', '', 0, 'blessmen_deLaTorre'),
(2, 'quiz', '$P$BowRVQ7v67auZFOkv9WRcrdZDTbFgL/', 'quiz', 'skullfore11@hotmail.com', '', '2018-07-30 13:47:30', '1532958452:$P$BPUrYTfwxncmobfl7d2X3zMPjuUPWq0', 0, 'Hernando Suarez'),
(6, 'evaluacion', '$P$BDjFYZ2TVbGWGoQLyJzPavO64C9AQI0', 'evaluacion', 'skullforeverme@hotmail.com66699', '', '2018-08-17 12:53:52', '', 0, 'Hernando Suarez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `delatorre_commentmeta`
--
ALTER TABLE `delatorre_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `delatorre_comments`
--
ALTER TABLE `delatorre_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `delatorre_links`
--
ALTER TABLE `delatorre_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `delatorre_options`
--
ALTER TABLE `delatorre_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `delatorre_postmeta`
--
ALTER TABLE `delatorre_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `delatorre_posts`
--
ALTER TABLE `delatorre_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `delatorre_termmeta`
--
ALTER TABLE `delatorre_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `delatorre_terms`
--
ALTER TABLE `delatorre_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `delatorre_term_relationships`
--
ALTER TABLE `delatorre_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `delatorre_term_taxonomy`
--
ALTER TABLE `delatorre_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `delatorre_usermeta`
--
ALTER TABLE `delatorre_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `delatorre_users`
--
ALTER TABLE `delatorre_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `delatorre_commentmeta`
--
ALTER TABLE `delatorre_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `delatorre_comments`
--
ALTER TABLE `delatorre_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `delatorre_links`
--
ALTER TABLE `delatorre_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `delatorre_options`
--
ALTER TABLE `delatorre_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT de la tabla `delatorre_postmeta`
--
ALTER TABLE `delatorre_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT de la tabla `delatorre_posts`
--
ALTER TABLE `delatorre_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT de la tabla `delatorre_termmeta`
--
ALTER TABLE `delatorre_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `delatorre_terms`
--
ALTER TABLE `delatorre_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `delatorre_term_taxonomy`
--
ALTER TABLE `delatorre_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `delatorre_usermeta`
--
ALTER TABLE `delatorre_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `delatorre_users`
--
ALTER TABLE `delatorre_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
