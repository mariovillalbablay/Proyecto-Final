-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2015 at 08:46 AM
-- Server version: 5.1.58
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a7457602_infes`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_login_redirects`
--

CREATE TABLE `wp_login_redirects` (
  `rul_type` enum('user','role','level','all','register') COLLATE utf8_unicode_ci NOT NULL,
  `rul_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rul_url` longtext COLLATE utf8_unicode_ci,
  `rul_url_logout` longtext COLLATE utf8_unicode_ci,
  `rul_order` int(2) NOT NULL DEFAULT '0',
  UNIQUE KEY `rul_type` (`rul_type`,`rul_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_login_redirects`
--

INSERT INTO `wp_login_redirects` VALUES('all', NULL, NULL, NULL, 0);
INSERT INTO `wp_login_redirects` VALUES('register', NULL, NULL, NULL, 0);
INSERT INTO `wp_login_redirects` VALUES('role', 'oldsubscriber', 'http://proyectomariovillalba.comuf.com/', 'http://proyectomariovillalba.comuf.com/', 0);
INSERT INTO `wp_login_redirects` VALUES('role', 'onlyregistered', 'http://proyectomariovillalba.comuf.com/', 'http://proyectomariovillalba.comuf.com/', 0);
INSERT INTO `wp_login_redirects` VALUES('role', 'subscriber', 'http://proyectomariovillalba.comuf.com/', 'http://proyectomariovillalba.comuf.com/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=987 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` VALUES(1, 'siteurl', 'http://proyectomariovillalba.comuf.com/', 'yes');
INSERT INTO `wp_options` VALUES(2, 'blogname', ' Beer DrinkingSquad PVE Server', 'yes');
INSERT INTO `wp_options` VALUES(3, 'blogdescription', '', 'yes');
INSERT INTO `wp_options` VALUES(4, 'users_can_register', '1', 'yes');
INSERT INTO `wp_options` VALUES(5, 'admin_email', 'mariete1902@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES(6, 'start_of_week', '1', 'yes');
INSERT INTO `wp_options` VALUES(7, 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES(8, 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES(9, 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES(10, 'comments_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES(11, 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES(12, 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options` VALUES(13, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options` VALUES(14, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options` VALUES(15, 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options` VALUES(16, 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options` VALUES(17, 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES(18, 'default_comment_status', 'closed', 'yes');
INSERT INTO `wp_options` VALUES(19, 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES(20, 'default_pingback_flag', '1', 'yes');
INSERT INTO `wp_options` VALUES(21, 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES(22, 'date_format', 'F j, Y', 'yes');
INSERT INTO `wp_options` VALUES(23, 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_options` VALUES(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `wp_options` VALUES(25, 'comment_moderation', '', 'yes');
INSERT INTO `wp_options` VALUES(26, 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES(27, 'permalink_structure', '', 'yes');
INSERT INTO `wp_options` VALUES(28, 'gzipcompression', '0', 'yes');
INSERT INTO `wp_options` VALUES(29, 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES(30, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES(31, 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES(32, 'active_plugins', 'a:6:{i:0;s:31:"add-multiple-users/multiadd.php";i:1;s:19:"members/members.php";i:2;s:37:"optional-content/optional-content.php";i:3;s:42:"peters-login-redirect/wplogin_redirect.php";i:4;s:25:"profile-builder/index.php";i:5;s:49:"user-registration-aide/user-registration-aide.php";}', 'yes');
INSERT INTO `wp_options` VALUES(33, 'home', 'http://proyectomariovillalba.comuf.com/', 'yes');
INSERT INTO `wp_options` VALUES(34, 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES(36, 'advanced_edit', '0', 'yes');
INSERT INTO `wp_options` VALUES(37, 'comment_max_links', '0', 'yes');
INSERT INTO `wp_options` VALUES(38, 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options` VALUES(39, 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES(40, 'recently_edited', 'a:5:{i:0;s:69:"/home/u431450166/public_html/wp-content/themes/twentytwelve/style.css";i:2;s:79:"/home/u431450166/public_html/wp-content/plugins/add-multiple-users/multiadd.php";i:3;s:70:"/home/u817088081/public_html/wp-content/themes/twentytwelve/author.php";i:4;s:69:"/home/u817088081/public_html/wp-content/themes/twentytwelve/style.css";i:5;s:85:"/home/u817088081/public_html/wp-content/plugins/optional-content/optional-content.php";}', 'no');
INSERT INTO `wp_options` VALUES(41, 'template', 'twentytwelve', 'yes');
INSERT INTO `wp_options` VALUES(42, 'stylesheet', 'twentytwelve', 'yes');
INSERT INTO `wp_options` VALUES(43, 'comment_whitelist', '', 'yes');
INSERT INTO `wp_options` VALUES(44, 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES(45, 'comment_registration', '', 'yes');
INSERT INTO `wp_options` VALUES(46, 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES(47, 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES(48, 'default_role', 'onlyregistered', 'yes');
INSERT INTO `wp_options` VALUES(49, 'db_version', '27918', 'yes');
INSERT INTO `wp_options` VALUES(50, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES(51, 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES(52, 'blog_public', '1', 'yes');
INSERT INTO `wp_options` VALUES(53, 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES(54, 'show_on_front', 'posts', 'yes');
INSERT INTO `wp_options` VALUES(55, 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES(56, 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES(57, 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES(58, 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES(59, 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES(60, 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES(61, 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES(62, 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES(63, 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES(64, 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES(65, 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES(66, 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES(67, 'image_default_link_type', 'file', 'yes');
INSERT INTO `wp_options` VALUES(68, 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES(69, 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES(70, 'close_comments_for_old_posts', '', 'yes');
INSERT INTO `wp_options` VALUES(71, 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES(72, 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES(73, 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES(74, 'page_comments', '', 'yes');
INSERT INTO `wp_options` VALUES(75, 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES(76, 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES(77, 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES(78, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(82, 'uninstall_plugins', 'a:1:{s:42:"peters-login-redirect/wplogin_redirect.php";s:13:"rul_uninstall";}', 'no');
INSERT INTO `wp_options` VALUES(83, 'timezone_string', '', 'yes');
INSERT INTO `wp_options` VALUES(84, 'page_for_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES(85, 'page_on_front', '0', 'yes');
INSERT INTO `wp_options` VALUES(86, 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES(87, 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options` VALUES(88, 'initial_db_version', '27916', 'yes');
INSERT INTO `wp_options` VALUES(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:67:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:10:"list_roles";b:1;s:12:"create_roles";b:1;s:12:"delete_roles";b:1;s:10:"edit_roles";b:1;s:16:"restrict_content";b:1;}}s:13:"oldsubscriber";a:2:{s:4:"name";s:14:"old_subscriber";s:12:"capabilities";a:1:{s:4:"read";s:4:"true";}}s:14:"onlyregistered";a:2:{s:4:"name";s:15:"only_registered";s:12:"capabilities";a:1:{s:4:"read";s:4:"true";}}s:10:"subscriber";a:2:{s:4:"name";s:10:"subscriber";s:12:"capabilities";a:1:{s:4:"read";s:4:"true";}}s:9:"moderator";a:2:{s:4:"name";s:9:"Moderator";s:12:"capabilities";a:10:{s:12:"create_users";s:4:"true";s:17:"edit_others_pages";s:4:"true";s:17:"edit_others_posts";s:4:"true";s:10:"edit_pages";s:4:"true";s:10:"edit_posts";s:4:"true";s:18:"edit_private_pages";s:4:"true";s:20:"edit_published_pages";s:4:"true";s:20:"edit_published_posts";s:4:"true";s:4:"read";s:4:"true";s:18:"read_private_posts";s:4:"true";}}}', 'yes');
INSERT INTO `wp_options` VALUES(224, 'csds_userRegAide_Options', 'a:99:{s:27:"csds_userRegAide_db_Version";s:7:"1.3.7.2";s:19:"select_pass_message";s:1:"2";s:8:"password";i:1;s:25:"registration_form_message";s:142:"You can use the password you entered here to log in right away, and for your reference, your registration details will be emailed after signup";s:17:"agreement_message";s:152:"I have read and understand and agree to the terms and conditions of the guidelines/agreement policy required for this website provided in the link below";s:5:"empty";s:20:"No password Entered!";s:5:"short";s:30:"Password Entered is too Short!";s:3:"bad";s:33:"Password Entered is Bad, Too Weak";s:4:"good";s:54:"Password Entered is fairly tough and is good to accept";s:6:"strong";s:32:"Password Entered is very strong!";s:8:"mismatch";s:67:"Password Entered does not match Password Confirm! Try Again Please!";s:12:"show_support";s:1:"2";s:20:"support_display_link";s:60:"http://creative-software-design-solutions.com/#axzz24C84ExPC";s:20:"support_display_name";s:34:"Creative Software Design Solutions";s:9:"show_logo";s:1:"2";s:8:"logo_url";s:64:"http://planetainfantil.esy.es/wp-admin/images/wordpress-logo.png";s:21:"show_background_image";s:1:"2";s:20:"background_image_url";s:0:"";s:21:"show_background_color";s:1:"2";s:20:"reg_background_color";s:7:"#FFFFFF";s:24:"show_reg_form_page_color";s:1:"2";s:19:"reg_form_page_color";s:7:"#FFFFFF";s:24:"show_reg_form_page_image";s:1:"2";s:19:"reg_form_page_image";s:0:"";s:21:"show_login_text_color";s:1:"2";s:16:"login_text_color";s:7:"#BBBBBB";s:16:"hover_text_color";s:7:"#FF0000";s:11:"show_shadow";s:1:"2";s:11:"shadow_size";s:3:"0px";s:12:"shadow_color";s:7:"#FFFFFF";s:16:"change_logo_link";s:1:"2";s:26:"show_custom_agreement_link";s:1:"2";s:15:"agreement_title";s:16:"Agreement Policy";s:29:"show_custom_agreement_message";s:1:"2";s:30:"show_custom_agreement_checkbox";s:1:"2";s:14:"new_user_agree";s:1:"2";s:14:"agreement_link";s:36:"http://proyectomariovillalba.comuf.com/";s:18:"show_login_message";s:1:"2";s:13:"login_message";s:60:"Welcome to Planeta Infantil! Please login for our site here!";s:15:"reg_top_message";s:63:"Welcome to Planeta Infantil! Please register for our site here!";s:20:"login_messages_login";s:20:"Extra Login messages";s:28:"login_messages_lost_password";s:131:"Please enter your username(login name) or email address here. You will then soon receive a link to create a new password via email!";s:25:"login_messages_logged_out";s:70:"Thank you for visiting us at  Planeta Infantil! You are now logged out";s:25:"login_messages_registered";s:82:"Thank you for registering with us at  Planeta Infantil! You account is now active!";s:32:"reset_password_messages_security";s:322:"Enter your new password here and confirm it, and enter your correct security question and answer, if you don''t have one, just ignor that step for now and after you complete this, go to your profile and add a security question and answer to your profile to improve your personal security as well as our websites! Thank you!";s:30:"reset_password_messages_normal";s:56:"Enter your new password below and confirm it, Thank you!";s:22:"reset_password_confirm";s:76:"You may now check your email for a confirmation link to reset your password!";s:31:"reset_password_success_security";s:159:"You have succesfully reset your password! You may now login again  <a href="http://planetainfantil.esy.es/wp-login.php">Log in here</a> with your new password!";s:29:"reset_password_success_normal";s:161:"You have succesfully changed your password! You may now login again  <a href="http://planetainfantil.esy.es/wp-login.php">Log in here</a> with your new password!";s:21:"add_security_question";s:1:"2";s:28:"rp_fill_in_security_question";s:148:"You haven''t added your security question and security answer yet, please do so on your profile page after you have finished resetting your password!";s:32:"fill_in_security_question_answer";s:134:"You haven''t added your security question and security answer yet, please do so on your profile page to improve your personal security!";s:25:"fill_in_security_question";s:114:"You haven''t added your security question yet, please do so on your profile page to improve your personal security!";s:23:"fill_in_security_answer";s:149:"You need to enter your security answer for your security question otherwise you won''t be able to reset tyour password without an administrators help!";s:18:"activate_anti_spam";s:1:"2";s:18:"division_anti_spam";s:1:"1";s:18:"multiply_anti_spam";s:1:"1";s:15:"minus_anti_spam";s:1:"1";s:18:"addition_anti_spam";s:1:"1";s:12:"activate_now";s:1:"2";s:18:"activation_message";s:59:"Welcome to Planeta Infantil! Your account is now activated!";s:15:"ms_activate_now";s:1:"2";s:13:"user_password";i:1;s:26:"ms_user_activation_message";s:156:"Your user account is now activated for Planeta Infantil , you may proceed with your login <a href="http://planetainfantil.esy.es/wp-login.php">Here</a> now!";s:20:"ms_activate_blog_now";s:1:"2";s:21:"ms_non_activation_now";s:1:"2";s:25:"ms_non_activation_message";s:251:"Before you can start using this site and your new username, you must activate it by checking your email inbox and clocking on the activation link givern. *** If you do not activate your user account within two days, you will have to sign up again! ***";s:28:"wp_user_notification_message";s:115:"Thank you for registering with Planeta Infantil,  \r\n\n Here are your new login credentials for Planeta Infantil: \r\n\n";s:21:"redirect_registration";s:1:"2";s:25:"registration_redirect_url";s:64:"http://planetainfantil.esy.es/wp-login.php?checkemail=registered";s:14:"redirect_login";s:1:"2";s:18:"login_redirect_url";s:39:"http://planetainfantil.esy.es/wp-admin/";s:20:"change_profile_title";s:1:"2";s:13:"profile_title";s:40:"User Registration Aide Additional Fields";s:21:"show_dashboard_widget";s:1:"1";s:8:"dwf1_key";s:13:"user_nicename";s:4:"dwf1";s:8:"Username";s:10:"dwf1_order";i:1;s:8:"dwf2_key";s:10:"user_email";s:4:"dwf2";s:5:"Email";s:10:"dwf2_order";i:2;s:8:"dwf3_key";s:0:"";s:4:"dwf3";s:0:"";s:10:"dwf3_order";s:0:"";s:8:"dwf4_key";s:0:"";s:4:"dwf4";s:0:"";s:10:"dwf4_order";s:0:"";s:8:"dwf5_key";s:0:"";s:4:"dwf5";s:0:"";s:10:"dwf5_order";s:0:"";s:21:"default_xwrd_strength";s:1:"2";s:20:"custom_xwrd_strength";s:1:"2";s:19:"require_xwrd_length";s:1:"1";s:11:"xwrd_length";s:1:"8";s:7:"xwrd_sc";s:1:"1";s:9:"xwrd_numb";s:1:"1";s:7:"xwrd_uc";s:1:"1";s:7:"xwrd_lc";s:1:"1";s:7:"updated";s:1:"1";}', 'yes');
INSERT INTO `wp_options` VALUES(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(95, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:6:{i:0;s:17:"recent-comments-2";i:1;s:14:"recent-posts-2";i:2;s:10:"archives-2";i:3;s:12:"categories-2";i:4;s:6:"meta-2";i:5;s:8:"search-2";}s:9:"sidebar-1";a:1:{i:0;s:10:"nav_menu-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES(96, 'cron', 'a:5:{i:1431434960;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1431457920;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1431458204;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1431478220;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES(98, '_transient_random_seed', '8bfbb350484a7f22cb6b07e6577c549f', 'yes');
INSERT INTO `wp_options` VALUES(99, 'auth_key', '|+^sYp[-hV=kqla*;gju>Y:>j0)p.DdNS,><Ub4B9HE&(H<zIoQVmg+z}n3.uhJp', 'yes');
INSERT INTO `wp_options` VALUES(100, 'auth_salt', 'q +ENOtN)ZtBe^Wd95k!U)f5p4+s_M~$H{6Hzh^|9isFp{g|>(Rpj<M~rr>M`47?', 'yes');
INSERT INTO `wp_options` VALUES(101, 'logged_in_key', '9]+Ow?vZb:g={>5I5.fnImY*}e5[$j,@.>qoGt|(::G:/<L_}({as$G~V+X3:3Nx', 'yes');
INSERT INTO `wp_options` VALUES(102, 'logged_in_salt', 'b%>tF`1y$nQ)AQ-{Aih,c3^C#tC9bhTeFedC e &W~Jm;K1?`V*R?{W`jFX1)*Yd', 'yes');
INSERT INTO `wp_options` VALUES(104, 'nonce_key', '9eVu*r]u-<R*7H6FXn6$^|p`z,~@.:%c!H{{$X}dMI=g*S3jL[1DV6g5X~;HMqr[', 'yes');
INSERT INTO `wp_options` VALUES(105, 'nonce_salt', 'g$KxSU1|)]9b6f}Lw!NGqpI(#FQbwvPZ#y/n_q#J2TLv})^>$,:2j=<96ATQ Ecm', 'yes');
INSERT INTO `wp_options` VALUES(980, '_site_transient_timeout_theme_roots', '1431435892', 'yes');
INSERT INTO `wp_options` VALUES(981, '_site_transient_theme_roots', 'a:3:{s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes');
INSERT INTO `wp_options` VALUES(217, 'members_db_version', '2', 'yes');
INSERT INTO `wp_options` VALUES(218, 'members_settings', 'a:8:{s:12:"role_manager";i:1;s:19:"content_permissions";i:1;s:12:"private_blog";i:0;s:12:"private_feed";i:0;s:17:"login_form_widget";i:0;s:12:"users_widget";i:0;s:25:"content_permissions_error";s:85:"<p class="restricted">Sorry, but you do not have permission to view this content.</p>";s:18:"private_feed_error";s:80:"<p class="restricted">You must be logged into the site to view this content.</p>";}', 'yes');
INSERT INTO `wp_options` VALUES(985, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1431434096;s:7:"checked";a:3:{s:14:"twentyfourteen";s:3:"1.1";s:14:"twentythirteen";s:3:"1.2";s:12:"twentytwelve";s:3:"1.4";}s:8:"response";a:3:{s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.4";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.4.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentythirteen.1.5.zip";}s:12:"twentytwelve";a:4:{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"1.7";s:3:"url";s:42:"https://wordpress.org/themes/twentytwelve/";s:7:"package";s:58:"https://downloads.wordpress.org/theme/twentytwelve.1.7.zip";}}s:12:"translations";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES(986, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1431434096;s:8:"response";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}s:42:"peters-login-redirect/wplogin_redirect.php";O:8:"stdClass":6:{s:2:"id";s:4:"4633";s:4:"slug";s:21:"peters-login-redirect";s:6:"plugin";s:42:"peters-login-redirect/wplogin_redirect.php";s:11:"new_version";s:5:"2.8.2";s:3:"url";s:52:"https://wordpress.org/plugins/peters-login-redirect/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/peters-login-redirect.zip";}s:25:"profile-builder/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"21897";s:4:"slug";s:15:"profile-builder";s:6:"plugin";s:25:"profile-builder/index.php";s:11:"new_version";s:5:"2.1.6";s:3:"url";s:46:"https://wordpress.org/plugins/profile-builder/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/profile-builder.2.1.6.zip";}s:49:"user-registration-aide/user-registration-aide.php";O:8:"stdClass":6:{s:2:"id";s:5:"33540";s:4:"slug";s:22:"user-registration-aide";s:6:"plugin";s:49:"user-registration-aide/user-registration-aide.php";s:11:"new_version";s:7:"1.5.0.2";s:3:"url";s:53:"https://wordpress.org/plugins/user-registration-aide/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/user-registration-aide.zip";}}s:12:"translations";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES(203, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES(131, '_transient_twentyfourteen_category_count', '1', 'yes');
INSERT INTO `wp_options` VALUES(136, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1399769531;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes');
INSERT INTO `wp_options` VALUES(137, 'current_theme', 'Twenty Twelve', 'yes');
INSERT INTO `wp_options` VALUES(138, 'theme_mods_skt-full-width', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1399772426;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes');
INSERT INTO `wp_options` VALUES(139, 'theme_switched', '', 'yes');
INSERT INTO `wp_options` VALUES(140, 'optionsframework', 'a:2:{s:2:"id";s:31:"optionsframework_skt_full_width";s:12:"knownoptions";a:1:{i:0;s:31:"optionsframework_skt_full_width";}}', 'yes');
INSERT INTO `wp_options` VALUES(141, 'optionsframework_skt_full_width', 'a:38:{s:4:"logo";s:78:"http://proyectomariovillalba.comuf.com/wp-content/themes/skt-full-width/images/logo.png";s:11:"footertext2";s:36:"Full Width 2015. All Rights Reserved";s:22:"featured_as_background";b:0;s:16:"navigation_color";s:7:"#7BB303";s:15:"navigation_icon";s:88:"http://proyectomariovillalba.comuf.com/wp-content/themes/skt-full-width/images/nav-icon-hover.png";s:20:"pagin_grad_top_color";s:7:"#89b219";s:23:"pagin_grad_bottom_color";s:7:"#3f8d03";s:14:"sidebar-layout";s:4:"left";s:6:"style2";s:0:"";s:6:"slide1";s:83:"http://proyectomariovillalba.comuf.com/wp-content/themes/skt-full-width/images/banner_bg.jpg";s:11:"slidetitle1";s:14:"Slider Image 1";s:10:"slidedesc1";s:29:"Small description for slide 1";s:9:"slideurl1";s:6:"#link1";s:6:"slide2";s:88:"http://planetainfantil.esy.es/wp-content/themes/skt-full-width/images/banner-welcome.jpg";s:11:"slidetitle2";s:14:"Slider Image 2";s:10:"slidedesc2";s:29:"Small description for slide 2";s:9:"slideurl2";s:6:"#link2";s:6:"slide3";s:0:"";s:11:"slidetitle3";s:0:"";s:10:"slidedesc3";s:0:"";s:9:"slideurl3";s:0:"";s:6:"slide4";s:0:"";s:11:"slidetitle4";s:0:"";s:10:"slidedesc4";s:0:"";s:9:"slideurl4";s:0:"";s:6:"slide5";s:0:"";s:11:"slidetitle5";s:0:"";s:10:"slidedesc5";s:0:"";s:9:"slideurl5";s:0:"";s:8:"facebook";s:1:"#";s:7:"twitter";s:1:"#";s:6:"google";s:1:"#";s:8:"linkedin";s:1:"#";s:8:"contact1";s:10:"Full Width";s:8:"contact2";s:15:"123 Some Street";s:8:"contact3";s:15:"California, USA";s:8:"contact4";s:12:"100 2000 300";s:8:"contact5";s:16:"info@example.com";}', 'yes');
INSERT INTO `wp_options` VALUES(142, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(146, '_transient_all_the_cool_cats', '1', 'yes');
INSERT INTO `wp_options` VALUES(149, 'theme_mods_twentytwelve', 'a:7:{s:16:"header_textcolor";s:6:"515151";s:16:"background_color";s:6:"e6e6e6";s:16:"background_image";s:0:"";s:17:"background_repeat";s:6:"repeat";s:21:"background_position_x";s:4:"left";s:21:"background_attachment";s:5:"fixed";s:18:"nav_menu_locations";a:1:{s:7:"primary";i:0;}}', 'yes');
INSERT INTO `wp_options` VALUES(850, 'category_children', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES(150, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(151, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(152, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(153, 'widget_nav_menu', 'a:3:{i:1;a:0:{}i:2;a:2:{s:5:"title";s:0:"";s:8:"nav_menu";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES(227, 'csds_userRegAide_NewFields', 'a:6:{s:9:"survivor1";s:9:"survivor1";s:9:"survivor2";s:9:"survivor2";s:9:"survivor3";s:9:"survivor3";s:9:"survivor4";s:9:"survivor4";s:9:"survivor5";s:9:"survivor5";s:11:"expire_date";s:11:"expire_date";}', 'yes');
INSERT INTO `wp_options` VALUES(225, 'csds_userRegAideFields', 'a:15:{s:10:"first_name";s:10:"First Name";s:9:"last_name";s:9:"Last Name";s:8:"nickname";s:8:"Nickname";s:8:"user_url";s:7:"Website";s:3:"aim";s:3:"AIM";s:3:"yim";s:8:"Yahoo IM";s:6:"jabber";s:20:"Jabber / Google Talk";s:11:"description";s:17:"Biographical Info";s:9:"user_pass";s:8:"Password";s:9:"survivor1";s:9:"survivor1";s:9:"survivor2";s:9:"survivor2";s:9:"survivor3";s:9:"survivor3";s:9:"survivor4";s:9:"survivor4";s:9:"survivor5";s:9:"survivor5";s:11:"expire_date";s:11:"expire_date";}', 'yes');
INSERT INTO `wp_options` VALUES(226, 'csds_userRegAide_knownFields', 'a:9:{s:10:"first_name";s:10:"First Name";s:9:"last_name";s:9:"Last Name";s:8:"nickname";s:8:"Nickname";s:8:"user_url";s:7:"Website";s:3:"aim";s:3:"AIM";s:3:"yim";s:8:"Yahoo IM";s:6:"jabber";s:20:"Jabber / Google Talk";s:11:"description";s:17:"Biographical Info";s:9:"user_pass";s:8:"Password";}', 'yes');
INSERT INTO `wp_options` VALUES(228, 'csds_userRegAide_fieldOrder', 'a:6:{s:9:"survivor1";i:1;s:9:"survivor2";i:2;s:9:"survivor3";i:3;s:9:"survivor4";i:4;s:9:"survivor5";i:5;s:11:"expire_date";i:6;}', 'yes');
INSERT INTO `wp_options` VALUES(229, 'csds_userRegAide_registrationFields', 'a:6:{s:9:"user_pass";s:8:"Password";s:9:"survivor1";s:9:"survivor1";s:9:"survivor2";s:9:"survivor2";s:9:"survivor3";s:9:"survivor3";s:9:"survivor4";s:9:"survivor4";s:9:"survivor5";s:9:"survivor5";}', 'yes');
INSERT INTO `wp_options` VALUES(280, 'rul_version', '2.6.1', 'no');
INSERT INTO `wp_options` VALUES(282, 'amu_usernotify', 'yes', 'yes');
INSERT INTO `wp_options` VALUES(283, 'amu_confirmation', 'yes', 'yes');
INSERT INTO `wp_options` VALUES(284, 'amu_setallroles', 'only_registered', 'yes');
INSERT INTO `wp_options` VALUES(285, 'amu_validatestrict', 'no', 'yes');
INSERT INTO `wp_options` VALUES(286, 'amu_validatemail', 'yes', 'yes');
INSERT INTO `wp_options` VALUES(287, 'amu_forcefill', 'no', 'yes');
INSERT INTO `wp_options` VALUES(288, 'amu_defadminemail', 'mariovblay@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES(289, 'amu_siteloginurl', 'http://proyectomariovillalba.comuf.com', 'yes');
INSERT INTO `wp_options` VALUES(290, 'amu_useremailhead', 'Your New User Account Information on [sitename]', 'yes');
INSERT INTO `wp_options` VALUES(291, 'amu_useremailtext', '<h1>You have been registered as a user on [sitename]</h1>\r\n<p>You may now log into the site at [siteloginurl]</p>\r\n<p>Your username is [username] and your password is [password]</p>\r\n<p>Regards,<br>\r\n[sitename] Admin</p>\r\n<p>[siteurl]</p>', 'yes');
INSERT INTO `wp_options` VALUES(292, 'amu_showblankmeta', '', 'yes');
INSERT INTO `wp_options` VALUES(293, 'amu_dispnamedef', 'userlogin', 'yes');
INSERT INTO `wp_options` VALUES(294, 'amu_extrameta', '[{"keyname":"Survivor1"},{"keyname":"Survivor2"},{"keyname":"Survivor3"},{"keyname":"Survivor4"},{"keyname":"Survivor5"},{"keyname":"ExpireDate"}]', 'yes');
INSERT INTO `wp_options` VALUES(295, 'amu_colorderpref', 'dynamic', 'yes');
INSERT INTO `wp_options` VALUES(296, 'amu_colorderpredef', '', 'yes');
INSERT INTO `wp_options` VALUES(297, 'amu_is_network', 'yes', 'yes');
INSERT INTO `wp_options` VALUES(298, 'amu_subadminaccess', 'yes', 'yes');
INSERT INTO `wp_options` VALUES(299, 'amu_addexistingaccess', 'yes', 'yes');
INSERT INTO `wp_options` VALUES(300, 'amu_emailcopies', '', 'yes');
INSERT INTO `wp_options` VALUES(965, 'db_upgraded', '1', 'yes');
INSERT INTO `wp_options` VALUES(966, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.1.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.1.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.1.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.1.5";s:7:"version";s:5:"4.1.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.0.5.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.0.5.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.0.5-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.0.5-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.0.5";s:7:"version";s:5:"4.0.5";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";s:13:"support_email";s:26:"updatehelp42@wordpress.org";}}s:12:"last_checked";i:1431434092;s:15:"version_checked";s:5:"3.9.6";s:12:"translations";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES(392, 'wppb_version', '1.3.13', 'yes');
INSERT INTO `wp_options` VALUES(393, 'profile_builder_version', '1.1.60', 'yes');
INSERT INTO `wp_options` VALUES(394, 'wppb_default_settings', 'a:24:{s:8:"username";s:4:"show";s:16:"usernameRequired";s:2:"no";s:9:"firstname";s:4:"show";s:17:"firstnameRequired";s:2:"no";s:8:"lastname";s:4:"show";s:16:"lastnameRequired";s:2:"no";s:8:"nickname";s:4:"show";s:16:"nicknameRequired";s:2:"no";s:8:"dispname";s:4:"show";s:16:"dispnameRequired";s:2:"no";s:5:"email";s:4:"show";s:13:"emailRequired";s:2:"no";s:7:"website";s:4:"show";s:15:"websiteRequired";s:2:"no";s:3:"aim";s:4:"show";s:11:"aimRequired";s:2:"no";s:5:"yahoo";s:4:"show";s:13:"yahooRequired";s:2:"no";s:6:"jabber";s:4:"show";s:14:"jabberRequired";s:2:"no";s:3:"bio";s:4:"show";s:11:"bioRequired";s:2:"no";s:8:"password";s:4:"show";s:16:"passwordRequired";s:2:"no";}', 'yes');
INSERT INTO `wp_options` VALUES(395, 'wppb_general_settings', 'a:3:{s:17:"extraFieldsLayout";s:3:"yes";s:17:"emailConfirmation";s:2:"no";s:9:"loginWith";s:8:"username";}', 'yes');
INSERT INTO `wp_options` VALUES(396, 'wppb_display_admin_settings', 'a:4:{s:13:"Administrator";s:4:"show";s:14:"old_subscriber";s:4:"hide";s:15:"only_registered";s:4:"hide";s:10:"subscriber";s:4:"hide";}', 'yes');
INSERT INTO `wp_options` VALUES(397, 'profile_builder_activation', 'set', 'yes');
INSERT INTO `wp_options` VALUES(788, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:21:"mariete1902@gmail.com";s:7:"version";s:5:"3.9.6";s:9:"timestamp";i:1431061578;}', 'yes');
INSERT INTO `wp_options` VALUES(905, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=153 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` VALUES(4, 5, '_menu_item_type', 'custom');
INSERT INTO `wp_postmeta` VALUES(5, 5, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(6, 5, '_menu_item_object_id', '5');
INSERT INTO `wp_postmeta` VALUES(7, 5, '_menu_item_object', 'custom');
INSERT INTO `wp_postmeta` VALUES(8, 5, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(9, 5, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(10, 5, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(11, 5, '_menu_item_url', 'http://proyectomariovillalba.comuf.com/');
INSERT INTO `wp_postmeta` VALUES(33, 8, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(34, 8, '_edit_lock', '1400106462:1');
INSERT INTO `wp_postmeta` VALUES(35, 8, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(36, 10, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(37, 10, '_edit_lock', '1399984602:1');
INSERT INTO `wp_postmeta` VALUES(38, 10, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(39, 12, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(40, 12, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(41, 12, '_edit_lock', '1400340015:1');
INSERT INTO `wp_postmeta` VALUES(42, 14, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(43, 14, '_edit_lock', '1400065621:1');
INSERT INTO `wp_postmeta` VALUES(44, 14, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES(45, 16, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(46, 16, '_wp_page_template', 'page_survivors.php');
INSERT INTO `wp_postmeta` VALUES(47, 16, '_edit_lock', '1399932227:1');
INSERT INTO `wp_postmeta` VALUES(48, 18, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(49, 18, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(50, 18, '_menu_item_object_id', '16');
INSERT INTO `wp_postmeta` VALUES(51, 18, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(52, 18, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(53, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(54, 18, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(55, 18, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(57, 19, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(58, 19, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(59, 19, '_menu_item_object_id', '14');
INSERT INTO `wp_postmeta` VALUES(60, 19, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(61, 19, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(62, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(63, 19, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(64, 19, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(94, 23, '_wp_attachment_context', 'custom-header');
INSERT INTO `wp_postmeta` VALUES(66, 20, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(67, 20, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(68, 20, '_menu_item_object_id', '12');
INSERT INTO `wp_postmeta` VALUES(69, 20, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(70, 20, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(71, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(72, 20, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(73, 20, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(75, 21, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(76, 21, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(77, 21, '_menu_item_object_id', '10');
INSERT INTO `wp_postmeta` VALUES(78, 21, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(79, 21, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(80, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(81, 21, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(82, 21, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(93, 23, '_wp_attached_file', '2015/05/zombie.jpg');
INSERT INTO `wp_postmeta` VALUES(84, 22, '_menu_item_type', 'post_type');
INSERT INTO `wp_postmeta` VALUES(85, 22, '_menu_item_menu_item_parent', '0');
INSERT INTO `wp_postmeta` VALUES(86, 22, '_menu_item_object_id', '8');
INSERT INTO `wp_postmeta` VALUES(87, 22, '_menu_item_object', 'page');
INSERT INTO `wp_postmeta` VALUES(88, 22, '_menu_item_target', '');
INSERT INTO `wp_postmeta` VALUES(89, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}');
INSERT INTO `wp_postmeta` VALUES(90, 22, '_menu_item_xfn', '');
INSERT INTO `wp_postmeta` VALUES(91, 22, '_menu_item_url', '');
INSERT INTO `wp_postmeta` VALUES(95, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:254;s:4:"file";s:18:"2015/05/zombie.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"zombie-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"zombie-300x119.jpg";s:5:"width";i:300;s:6:"height";i:119;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"zombie-624x247.jpg";s:5:"width";i:624;s:6:"height";i:247;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}');
INSERT INTO `wp_postmeta` VALUES(96, 23, '_wp_attachment_is_custom_header', 'twentytwelve');
INSERT INTO `wp_postmeta` VALUES(97, 12, '_members_access_role', 'administrator');
INSERT INTO `wp_postmeta` VALUES(98, 12, '_members_access_role', 'subscriber');
INSERT INTO `wp_postmeta` VALUES(99, 12, '_members_access_error', 'You are not allowed to see this page! If you are a member,&lt;a href=&quot;http://proyectomariovillalba.comuf.com/wp-login.php&quot;&gt;  please login! &lt;/a&gt;&lt;/br&gt;\r\nIf you are NOT a member and want to join in this server please &lt;a href=&quot;http://proyectomariovillalba.comuf.com/wp-login.php?action=register&quot;&gt;sign up in this website &lt;/a&gt; and contact with me via &lt;a href=&quot;http://proyectomariovillalba.comuf.com/?page_id=14&quot;&gt;Steam or Forum&lt;/a&gt;');
INSERT INTO `wp_postmeta` VALUES(103, 37, '_edit_lock', '1421159856:25');
INSERT INTO `wp_postmeta` VALUES(104, 37, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES(147, 12, '_members_access_role', 'moderator');
INSERT INTO `wp_postmeta` VALUES(150, 37, '_post_restored_from', 'a:3:{s:20:"restored_revision_id";i:39;s:16:"restored_by_user";i:1;s:13:"restored_time";i:1400301167;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` VALUES(5, 1, '2015-05-12 19:13:22', '2015-05-12 19:13:22', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-05-12 19:14:47', '2015-05-12 19:14:47', '', 0, 'http://proyectomariovillalba.comuf.com/?p=5', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(8, 1, '2015-05-12 19:17:45', '2015-05-12 19:17:45', '<ol>\r\n	\r\n	<li>NO hacking.</li>\r\n        <li>Only PvE!!! PvP is forbidden!</li>\r\n<li>Join in main group, Small groups and single players will get kicked!</li>\r\n<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is not allowed!</li>\r\n	<li>Cars. If someone in the group is using a car to do loot runs from their safes to a safe zone, do not\r\ntake their car from them. Hitch a ride!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n	<li>Will need a screenshot of all of your players (all 5 in one shot). Names other than what are listed will\r\nbe kicked. 2 or more characters from the same account will result in access removal. Failure to provide this in a reasonable time will result in loss of access.</li>\r\n	<li>Report unknown survivors! </li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	\r\n	\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list)!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (forum or steam).</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n	<li>If you are killed by another player on our server, please provide a screenshot of your tombstone and PM me \r\n on the forums.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ol>', 'Rules', '', 'publish', 'open', 'open', '', 'rules', '', '', '2015-05-14 21:56:36', '2015-05-14 21:56:36', '', 0, 'http://proyectomariovillalba.comuf.com/?page_id=8', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(32, 1, '2015-05-13 20:45:57', '2015-05-13 20:45:57', '<ul>\r\n	<li>Only PvE!!! PvP is forbidden!</li>\r\n	<li>NO hacking.</li>\r\n	<li>Join in main group, Small groups and single players will get kicked!</li>\r\n	<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is forbidden!</li>\r\n	<li>Report unknown survivors!</li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list) on sight!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (mail, skype or steam).</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ul>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-05-13 20:45:57', '2015-05-13 20:45:57', '', 8, 'http://proyectomariovillalba.comuf.com/?p=32', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(31, 1, '2015-05-13 20:44:54', '2015-05-13 20:44:54', '<ul>\r\n	<li>Only PvE!!! PvP is forbidden!</li>\r\n	<li>NO hacking.</li>\r\n	<li>All members must join the “main” group, small groups and single players will get kicked!</li>\r\n	<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is forbidden!</li>\r\n	<li>Report unknown survivors!</li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list) on sight!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (mail, skype or steam).</li>\r\n	<li>You must send us a screenshot of your survivors!</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ul>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-05-13 20:44:54', '2015-05-13 20:44:54', '', 8, 'http://proyectomariovillalba.comuf.com/?p=31', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(30, 1, '2015-05-13 20:44:20', '2015-05-13 20:44:20', '<ul>\r\n	<li>Only PvE!!! PvP is forbidden!</li>\r\n	<li>NO hacking. if you’re caught using hacks you will be banned, and reported.</li>\r\n	<li>All members must join the “main” group, small groups and single players will get kicked!</li>\r\n	<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is forbidden!</li>\r\n	<li>Report unknown survivors!</li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list) on sight!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (mail, skype or steam).</li>\r\n	<li>You must send us a screenshot of your survivors!</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ul>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-05-13 20:44:20', '2015-05-13 20:44:20', '', 8, 'http://proyectomariovillalba.comuf.com/?p=30', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(9, 1, '2015-05-12 19:17:45', '2015-05-12 19:17:45', '<ul>\r\n	<li>Only PvE!!! PvP is forbidden (except during events in event zones)!</li>\r\n	<li>((NEW)) Absolutely NO hacking. if you’re caught using hacks in server you will be banned, and reported.</li>\r\n	<li>All members must join the “main” group, small groups and single players will get kicked!</li>\r\n	<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is forbidden!</li>\r\n	<li>Report unknown survivors!</li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list) on sight!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (mail, skype or steam).</li>\r\n	<li>You must send us a screenshot of your survivors!</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ul>', 'Rules', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-05-12 19:17:45', '2015-05-12 19:17:45', '', 8, 'http://proyectomariovillalba.comuf.com/?p=9', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(10, 1, '2015-05-12 19:18:09', '2015-05-12 19:18:09', 'Some day :)', 'Events', '', 'publish', 'open', 'open', '', 'events', '', '', '2015-05-12 19:18:09', '2015-05-12 19:18:09', '', 0, 'http://proyectomariovillalba.comuf.com/?page_id=10', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(11, 1, '2015-05-12 19:18:09', '2015-05-12 19:18:09', 'Some day :)', 'Events', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-05-12 19:18:09', '2015-05-12 19:18:09', '', 10, 'http://proyectomariovillalba.comuf.com/?p=11', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(12, 1, '2015-05-12 19:19:08', '2015-05-12 19:19:08', '<p style="text-align: center;"><span style="text-decoration: underline;">PASSWORD</span>\r\n435345</p>', 'Server PW', '', 'publish', 'open', 'open', '', 'server-pw', '', '', '2015-05-14 22:19:01', '2015-05-14 22:19:01', '', 0, 'http://proyectomariovillalba.comuf.com/?page_id=12', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(13, 1, '2015-05-12 19:19:08', '2015-05-12 19:19:08', '', 'Server PW', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-05-12 19:19:08', '2015-05-12 19:19:08', '', 12, 'http://proyectomariovillalba.comuf.com/?p=13', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(14, 1, '2015-05-12 19:20:07', '2015-05-12 19:20:07', '<h1 class="titulo"><p>Steam:</h1>  rickgrimesinfestation</p><br/>\r\n\r\n<h1 class="titulo"><p>Forum:</p></h1> <a href="http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/"> http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/</a>', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-05-14 11:07:23', '2015-05-14 11:07:23', '', 0, 'http://proyectomariovillalba.comuf.com/?page_id=14', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(15, 1, '2015-05-12 19:20:07', '2015-05-12 19:20:07', 'Steam:\r\n\r\nForum:', 'Contact', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-05-12 19:20:07', '2015-05-12 19:20:07', '', 14, 'http://proyectomariovillalba.comuf.com/?p=15', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(16, 1, '2015-05-12 19:20:31', '2015-05-12 19:20:31', '', 'Survivors list', '', 'publish', 'open', 'open', '', 'survivors-list', '', '', '2015-05-12 21:50:01', '2015-05-12 21:50:01', '', 0, 'http://proyectomariovillalba.comuf.com/?page_id=16', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES(17, 1, '2015-05-12 19:20:31', '2015-05-12 19:20:31', '', 'Survivors list', '', 'inherit', 'open', 'open', '', '16-revision-v1', '', '', '2015-05-12 19:20:31', '2015-05-12 19:20:31', '', 16, 'http://proyectomariovillalba.comuf.com/?p=17', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(18, 1, '2015-05-12 19:21:32', '2015-05-12 19:21:32', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2015-05-12 19:21:32', '2015-05-12 19:21:32', '', 0, 'http://proyectomariovillalba.comuf.com/?p=18', 2, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(19, 1, '2015-05-12 19:21:32', '2015-05-12 19:21:32', ' ', '', '', 'publish', 'open', 'open', '', '19', '', '', '2015-05-12 19:21:32', '2015-05-12 19:21:32', '', 0, 'http://proyectomariovillalba.comuf.com/?p=19', 3, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(20, 1, '2015-05-12 19:21:32', '2015-05-12 19:21:32', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2015-05-12 19:21:32', '2015-05-12 19:21:32', '', 0, 'http://proyectomariovillalba.comuf.com/?p=20', 4, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(21, 1, '2015-05-12 19:21:32', '2015-05-12 19:21:32', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2015-05-12 19:21:32', '2015-05-12 19:21:32', '', 0, 'http://proyectomariovillalba.comuf.com/?p=21', 5, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(22, 1, '2015-05-12 19:21:31', '2015-05-12 19:21:31', ' ', '', '', 'publish', 'open', 'open', '', '22', '', '', '2015-05-12 19:21:31', '2015-05-12 19:21:31', '', 0, 'http://proyectomariovillalba.comuf.com/?p=22', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` VALUES(23, 1, '2015-05-12 20:08:08', '2015-05-12 20:08:08', 'http://proyectomariovillalba.comuf.com/wp-content/uploads/2015/05/zombie.jpg', 'zombie.jpg', '', 'inherit', 'closed', 'open', '', 'zombie-jpg', '', '', '2015-05-12 20:08:08', '2015-05-12 20:08:08', '', 0, 'http://proyectomariovillalba.comuf.com/wp-content/uploads/2015/05/zombie.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES(25, 1, '2015-05-12 20:39:42', '2015-05-12 20:39:42', 'pass', 'Server PW', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-05-12 20:39:42', '2015-05-12 20:39:42', '', 12, 'http://proyectomariovillalba.comuf.com/?p=25', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(26, 1, '2015-05-12 20:41:52', '2015-05-12 20:41:52', '', 'Server PW', '', 'inherit', 'open', 'open', '', '12-autosave-v1', '', '', '2015-05-12 20:41:52', '2015-05-12 20:41:52', '', 12, 'http://proyectomariovillalba.comuf.com/?p=26', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(27, 1, '2015-05-12 20:42:45', '2015-05-12 20:42:45', 'PASSWORD:12345', 'Server PW', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-05-12 20:42:45', '2015-05-12 20:42:45', '', 12, 'http://proyectomariovillalba.comuf.com/?p=27', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(29, 1, '2015-05-14 21:56:13', '2015-05-14 21:56:13', '<ol>\n	\n	<li>NO hacking.</li>\n        <li>Only PvE!!! PvP is forbidden!</li>\n<li>Join in main group, Small groups and single players will get kicked!</li>\n<li>Stealing loot from other subscribers is forbidden!</li>\n	<li>Sharing the password is not allowed!</li>\n	<li>Cars. If someone in the group is using a car to do loot runs from their safes to a safe zone, do not\ntake their car from them. Hitch a ride!</li>\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\n	<li>Subscribers are not allowed to insult other subscribers!</li>\n	<li>Will need a screenshot of all of your players (all 5 in one shot). Names other than what are listed will\nbe kicked. 2 or more characters from the same account will result in access removal. Failure to provide this in a reasonable time will result in loss of access.</li>\n	<li>Report unknown survivors! </li>\n	<li>Unknown survivors will get banned!</li>\n	\n	\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list)!</li>\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (forum or steam).</li>\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\n	<li>If you are killed by another player on our server, please provide a screenshot of your tombstone and PM me here on the forums.</li>\n	<li>If you break a rule you will get banned without refund!</li>\n	<li>No refunds!</li>\n</ol>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-autosave-v1', '', '', '2015-05-14 21:56:13', '2015-05-14 21:56:13', '', 8, 'http://proyectomariovillalba.comuf.com/?p=29', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(33, 1, '2015-05-13 20:46:42', '2015-05-13 20:46:42', '<ul>\r\n	<li>Only PvE!!! PvP is forbidden!</li>\r\n	<li>NO hacking.</li>\r\n	<li>Join in main group, Small groups and single players will get kicked!</li>\r\n	<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is forbidden!</li>\r\n	<li>Report unknown survivors!</li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list)!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (forum or steam).</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ul>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-05-13 20:46:42', '2015-05-13 20:46:42', '', 8, 'http://proyectomariovillalba.comuf.com/?p=33', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(34, 1, '2015-05-14 11:06:26', '2015-05-14 11:06:26', '<h1 class="titulo"><p>Steam:</strong></h1>  rickgrimesinfestation</p>\n\n<h1 class="titulo"><p><strong>Forum:</strong></p></h1> <a href="http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/"> http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/</a>', 'Contact', '', 'inherit', 'closed', 'open', '', '14-autosave-v1', '', '', '2015-05-14 11:06:26', '2015-05-14 11:06:26', '', 14, 'http://proyectomariovillalba.comuf.com/?p=34', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(35, 1, '2015-05-13 20:54:25', '2015-05-13 20:54:25', '<strong>Steam:</strong>  rickgrimesinfestation\r\n\r\n<strong>Forum:</strong>  http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/', 'Contact', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-05-13 20:54:25', '2015-05-13 20:54:25', '', 14, 'http://proyectomariovillalba.comuf.com/?p=35', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(37, 1, '2015-05-14 09:34:16', '2015-05-14 09:34:16', '&nbsp;\r\n<p style="text-align: center;">Welcome to Beer Drinking Squad PVE</p>\r\n\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server The Beer Drinking Squad. It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me... 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n&nbsp;\r\n<p style="text-align: center;">General Info:</p>\r\n&nbsp;\r\n<ol>\r\n	<li>You may place lockboxes on the server,do not block anyone locker boxes.</li>\r\n	<li>You will be given 5 days notice to remove them when either your time is up or I decide to not renew the server again.</li>\r\n	<li>You may rent space for any length of time</li>\r\n	<li>This is a drama free zone. If there are issues, pm me and I will address them.</li>\r\n	<li>You can reach me on Steam as rickgrimesinfestation</li>\r\n</ol>\r\nI can not be held responsible for HP issues, server crashes, glitches, down time, etc. As a result, no refunds will be given.\r\n\r\n&nbsp;\r\n<p style="text-align: center;">Pricing:</p>\r\n&nbsp;\r\n\r\nMAKE ME A REASONABLE OFFER , INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Beer Drinking Squad PVE ', '', 'publish', 'closed', 'open', '', 'welcome-to-drinking-beer-squad-pve', '', '', '2015-05-17 04:33:18', '2015-05-17 04:33:18', '', 0, 'http://proyectomariovillalba.comuf.com/?p=37', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES(75, 1, '2015-05-17 04:33:18', '2015-05-17 04:33:18', '&nbsp;\r\n<p style="text-align: center;">Welcome to Beer Drinking Squad PVE</p>\r\n\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server The Beer Drinking Squad. It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me... 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n&nbsp;\r\n<p style="text-align: center;">General Info:</p>\r\n&nbsp;\r\n<ol>\r\n	<li>You may place lockboxes on the server,do not block anyone locker boxes.</li>\r\n	<li>You will be given 5 days notice to remove them when either your time is up or I decide to not renew the server again.</li>\r\n	<li>You may rent space for any length of time</li>\r\n	<li>This is a drama free zone. If there are issues, pm me and I will address them.</li>\r\n	<li>You can reach me on Steam as rickgrimesinfestation</li>\r\n</ol>\r\nI can not be held responsible for HP issues, server crashes, glitches, down time, etc. As a result, no refunds will be given.\r\n\r\n&nbsp;\r\n<p style="text-align: center;">Pricing:</p>\r\n&nbsp;\r\n\r\nMAKE ME A REASONABLE OFFER , INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Beer Drinking Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-17 04:33:18', '2015-05-17 04:33:18', '', 37, 'http://proyectomariovillalba.comuf.com/?p=75', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(38, 1, '2015-05-14 09:34:16', '2015-05-14 09:34:16', 'Hello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 09:34:16', '2015-05-14 09:34:16', '', 37, 'http://proyectomariovillalba.comuf.com/?p=38', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(39, 1, '2015-05-14 13:07:50', '2015-05-14 13:07:50', '<u>\n<h1 class="titulo">\n<p style="text-align: center;">Welcome to Drinking Beer Squad PVE</p>\n</h1>\n</u>\nHello All,\n\nI am interested in hosting a few of you on my private PVE server The Beer Drinking Squad. It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\n\nA little about me... 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\n\n<u>\n<h1 class="titulo">\n<p style="text-align: center;">General Info:</p>\n</h1>\n</u>\n<ol>\n<li> You may place lockboxes on the server,do not block anyone locker boxes.\n<li> You will be given 5 days notice to remove them when either your time is up or I decide to not renew the server again.</li>\n<li> You may rent space for any length of time</li>\n<li> This is a drama free zone. If there are issues, pm me and I will address them.</li>\n<li> You can reach me on Steam as  rickgrimesinfestation</li>\n</ol>\nI can not be held responsible for HP issues, server crashes, glitches, down time, etc. As a result, no refunds will be given.\n\n<u>\n<h1 class="titulo">\n<p style="text-align: center;">Pricing:</p>\n</h1>\n</u>\n\nMAKE ME A REASONABLE OFFER , INCLUDE ITEMS AND TIME YOU ARE WANTING\n\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-autosave-v1', '', '', '2015-05-14 13:07:50', '2015-05-14 13:07:50', '', 37, 'http://proyectomariovillalba.comuf.com/?p=39', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(40, 1, '2015-05-14 09:37:18', '2015-05-14 09:37:18', '<h1>Welcome to Drinking Beer Squad PVE </h1>\r\n\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 09:37:18', '2015-05-14 09:37:18', '', 37, 'http://proyectomariovillalba.comuf.com/?p=40', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(41, 1, '2015-05-14 09:40:02', '2015-05-14 09:40:02', '<ul>\r\n	<li>Only PvE!!! PvP is forbidden!</li>\r\n	<li>NO hacking.</li>\r\n	<li>Join in main group, Small groups and single players will get kicked!</li>\r\n	<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is forbidden!</li>\r\n	<li>Report unknown survivors!</li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n<li>Will need a screenshot of all of your players (all 5 in one shot). Names other than what are listed will\r\nbe kicked. 2 or more characters from the same account will result in access removal. Failure to provide this in a reasonable time will result in loss of access.</li>\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list)!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (forum or steam).</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ul>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-05-14 09:40:02', '2015-05-14 09:40:02', '', 8, 'http://proyectomariovillalba.comuf.com/?p=41', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(42, 1, '2015-05-14 09:41:19', '2015-05-14 09:41:19', '<ul>\r\n	<li>Only PvE!!! PvP is forbidden!</li>\r\n	<li>NO hacking.</li>\r\n<li> Cars - If someone in the group is using a car to do loot runs from their safes to a safe zone, do not\r\ntake their car from them. Hitch a ride!</li>\r\n	<li>Join in main group, Small groups and single players will get kicked!</li>\r\n	<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is forbidden!</li>\r\n	<li>Report unknown survivors!</li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n<li>Will need a screenshot of all of your players (all 5 in one shot). Names other than what are listed will\r\nbe kicked. 2 or more characters from the same account will result in access removal. Failure to provide this in a reasonable time will result in loss of access.</li>\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list)!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (forum or steam).</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ul>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-05-14 09:41:19', '2015-05-14 09:41:19', '', 8, 'http://proyectomariovillalba.comuf.com/?p=42', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(43, 1, '2015-05-14 09:45:05', '2015-05-14 09:45:05', '<ul>\r\n	<li>Only PvE!!! PvP is forbidden!</li>\r\n	<li>NO hacking.</li>\r\n<li> Cars - If someone in the group is using a car to do loot runs from their safes to a safe zone, do not\r\ntake their car from them. Hitch a ride!</li>\r\n	<li>Join in main group, Small groups and single players will get kicked!</li>\r\n	<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is forbidden!</li>\r\n	<li>Report unknown survivors!</li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n<li>Will need a screenshot of all of your players (all 5 in one shot). Names other than what are listed will\r\nbe kicked. 2 or more characters from the same account will result in access removal. Failure to provide this in a reasonable time will result in loss of access.</li>\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list)!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (forum or steam).</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n<li>If you are killed by another player on our server, please provide a screenshot of your tombstone and PM me here on the forums.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ul>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-05-14 09:45:05', '2015-05-14 09:45:05', '', 8, 'http://proyectomariovillalba.comuf.com/?p=43', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(44, 1, '2015-05-14 09:47:43', '2015-05-14 09:47:43', '<h1>Welcome to Drinking Beer Squad PVE </h1>\r\n\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\nGeneral Info:\r\n\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\nPricing:\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 09:47:43', '2015-05-14 09:47:43', '', 37, 'http://proyectomariovillalba.comuf.com/?p=44', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(45, 1, '2015-05-14 09:57:39', '2015-05-14 09:57:39', '<h2>Welcome to Drinking Beer Squad PVE </h2>\r\n\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\nGeneral Info:\r\n\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\nPricing:\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 09:57:39', '2015-05-14 09:57:39', '', 37, 'http://proyectomariovillalba.comuf.com/?p=45', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(46, 1, '2015-05-14 09:59:18', '2015-05-14 09:59:18', '<p style="text-align: center;">&lt;h1 class="titulo"&gt;Welcome to Drinking Beer Squad PVE&lt;/h1&gt;</p>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n<p style="text-align: center;">&lt;h1 class="titulo"&gt;General Info:&lt;/h1&gt;</p>\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\nPricing:\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 09:59:18', '2015-05-14 09:59:18', '', 37, 'http://proyectomariovillalba.comuf.com/?p=46', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(47, 1, '2015-05-14 10:01:22', '2015-05-14 10:01:22', '<h1 class="titulo"><p style="text-align: center;">Welcome to Drinking Beer Squad PVE&lt;</p></h1>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<p style="text-align: center;"><h1 class="titulo">General Info:</p></h1>\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\nPricing:\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 10:01:22', '2015-05-14 10:01:22', '', 37, 'http://proyectomariovillalba.comuf.com/?p=47', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(48, 1, '2015-05-14 10:03:45', '2015-05-14 10:03:45', '<h1 class="titulo"><p style="text-align: center;">Welcome to Drinking Beer Squad PVE&lt;</p></h1>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<h1 class="titulo"><p style="text-align: center;">General Info:</p></h1>\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\nPricing:\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 10:03:45', '2015-05-14 10:03:45', '', 37, 'http://proyectomariovillalba.comuf.com/?p=48', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(49, 1, '2015-05-14 10:06:21', '2015-05-14 10:06:21', '<h1 class="titulo"><p style="text-align: center;">Welcome to Drinking Beer Squad PVE&lt;</p></h1>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<h1 class="titulo"><p style="text-align: center;">General Info:</p></h1>\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\nPricing:<h1 class="titulo"><p style="text-align: center;">Pricing:</p></h1>\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 10:06:21', '2015-05-14 10:06:21', '', 37, 'http://proyectomariovillalba.comuf.com/?p=49', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(50, 1, '2015-05-14 10:08:17', '2015-05-14 10:08:17', '<h1 class="titulo"><p style="text-align: center;">Welcome to Drinking Beer Squad PVE&lt;</p></h1>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<h1 class="titulo"><p style="text-align: center;">General Info:</p></h1>\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\n<h1 class="titulo"><p style="text-align: center;">Pricing:</p></h1>\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 10:08:17', '2015-05-14 10:08:17', '', 37, 'http://proyectomariovillalba.comuf.com/?p=50', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(51, 1, '2015-05-14 10:10:11', '2015-05-14 10:10:11', '<strong>Steam:</strong>  rickgrimesinfestation\r\n\r\n<strong>Forum:</strong> <a href="http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/"> http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/</a>', 'Contact', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-05-14 10:10:11', '2015-05-14 10:10:11', '', 14, 'http://proyectomariovillalba.comuf.com/?p=51', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(52, 1, '2015-05-14 10:12:17', '2015-05-14 10:12:17', '<0l>\r\n	<li>Only PvE!!! PvP is forbidden!</li>\r\n	<li>NO hacking.</li>\r\n<li> Cars - If someone in the group is using a car to do loot runs from their safes to a safe zone, do not\r\ntake their car from them. Hitch a ride!</li>\r\n	<li>Join in main group, Small groups and single players will get kicked!</li>\r\n	<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is forbidden!</li>\r\n	<li>Report unknown survivors!</li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n<li>Will need a screenshot of all of your players (all 5 in one shot). Names other than what are listed will\r\nbe kicked. 2 or more characters from the same account will result in access removal. Failure to provide this in a reasonable time will result in loss of access.</li>\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list)!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (forum or steam).</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n<li>If you are killed by another player on our server, please provide a screenshot of your tombstone and PM me here on the forums.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ol>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-05-14 10:12:17', '2015-05-14 10:12:17', '', 8, 'http://proyectomariovillalba.comuf.com/?p=52', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(53, 1, '2015-05-14 10:12:59', '2015-05-14 10:12:59', '<ol>\r\n	<li>Only PvE!!! PvP is forbidden!</li>\r\n	<li>NO hacking.</li>\r\n<li> Cars - If someone in the group is using a car to do loot runs from their safes to a safe zone, do not\r\ntake their car from them. Hitch a ride!</li>\r\n	<li>Join in main group, Small groups and single players will get kicked!</li>\r\n	<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is forbidden!</li>\r\n	<li>Report unknown survivors!</li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n<li>Will need a screenshot of all of your players (all 5 in one shot). Names other than what are listed will\r\nbe kicked. 2 or more characters from the same account will result in access removal. Failure to provide this in a reasonable time will result in loss of access.</li>\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list)!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (forum or steam).</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n<li>If you are killed by another player on our server, please provide a screenshot of your tombstone and PM me here on the forums.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ol>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-05-14 10:12:59', '2015-05-14 10:12:59', '', 8, 'http://proyectomariovillalba.comuf.com/?p=53', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(54, 1, '2015-05-14 10:23:50', '2015-05-14 10:23:50', '<u><h1 class="titulo"><p style="text-align: center;">Welcome to Drinking Beer Squad PVE&lt;</p></h1></u>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<u><h1 class="titulo"><p style="text-align: center;">General Info:</p></h1></u>\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\n<u><h1 class="titulo"><p style="text-align: center;">Pricing:</p></h1></u>\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 10:23:50', '2015-05-14 10:23:50', '', 37, 'http://proyectomariovillalba.comuf.com/?p=54', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(55, 1, '2015-05-14 10:24:29', '2015-05-14 10:24:29', '<u><h1 class="titulo"><p style="text-align: center;">Welcome to Drinking Beer Squad PVE</p></h1></u>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<u><h1 class="titulo"><p style="text-align: center;">General Info:</p></h1></u>\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\n<u><h1 class="titulo"><p style="text-align: center;">Pricing:</p></h1></u>\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 10:24:29', '2015-05-14 10:24:29', '', 37, 'http://proyectomariovillalba.comuf.com/?p=55', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(56, 1, '2015-05-14 10:54:54', '2015-05-14 10:54:54', '<h1 class="titulo"><p><strong>Steam:</strong></p></h1>  rickgrimesinfestation\r\n\r\n<h1 class="titulo"><p><strong>Forum:</strong></p></h1> <a href="http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/"> http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/</a>', 'Contact', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-05-14 10:54:54', '2015-05-14 10:54:54', '', 14, 'http://proyectomariovillalba.comuf.com/?p=56', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(57, 1, '2015-05-14 10:57:31', '2015-05-14 10:57:31', '<h1 class="titulo"><p><strong>Steam:</strong></h1>  rickgrimesinfestation</p>\r\n\r\n<h1 class="titulo"><p><strong>Forum:</strong></p></h1> <a href="http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/"> http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/</a>', 'Contact', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-05-14 10:57:31', '2015-05-14 10:57:31', '', 14, 'http://proyectomariovillalba.comuf.com/?p=57', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(58, 1, '2015-05-14 11:06:30', '2015-05-14 11:06:30', '<h1 class="titulo"><p>Steam:</h1>  rickgrimesinfestation</p>\r\n\r\n<h1 class="titulo"><p><strong>Forum:</strong></p></h1> <a href="http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/"> http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/</a>', 'Contact', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-05-14 11:06:30', '2015-05-14 11:06:30', '', 14, 'http://proyectomariovillalba.comuf.com/?p=58', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(59, 1, '2015-05-14 11:07:00', '2015-05-14 11:07:00', '<h1 class="titulo"><p>Steam:</h1>  rickgrimesinfestation</p>\r\n\r\n<h1 class="titulo"><p>Forum:</p></h1> <a href="http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/"> http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/</a>', 'Contact', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-05-14 11:07:00', '2015-05-14 11:07:00', '', 14, 'http://proyectomariovillalba.comuf.com/?p=59', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(60, 1, '2015-05-14 11:07:23', '2015-05-14 11:07:23', '<h1 class="titulo"><p>Steam:</h1>  rickgrimesinfestation</p><br/>\r\n\r\n<h1 class="titulo"><p>Forum:</p></h1> <a href="http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/"> http://forums.infestationmmo.com/index.php?/topic/130138-the-walking-dead-make-an-offer-to-join-11-slots-available/</a>', 'Contact', '', 'inherit', 'closed', 'open', '', '14-revision-v1', '', '', '2015-05-14 11:07:23', '2015-05-14 11:07:23', '', 14, 'http://proyectomariovillalba.comuf.com/?p=60', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(61, 1, '2015-05-14 12:56:27', '2015-05-14 12:56:27', '<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Welcome to Drinking Beer Squad PVE</p>\r\n</h1>\r\n</u>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server "The Beer Drinking Squad". It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">General Info:</p>\r\n</h1>\r\n</u>\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Pricing:</p>\r\n</h1>\r\n</u>\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 12:56:27', '2015-05-14 12:56:27', '', 37, 'http://proyectomariovillalba.comuf.com/?p=61', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(62, 1, '2015-05-14 12:56:43', '2015-05-14 12:56:43', '<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Welcome to Drinking Beer Squad PVE</p>\r\n</h1>\r\n</u>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server The Beer Drinking Squad. It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] - Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">General Info:</p>\r\n</h1>\r\n</u>\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Pricing:</p>\r\n</h1>\r\n</u>\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 12:56:43', '2015-05-14 12:56:43', '', 37, 'http://proyectomariovillalba.comuf.com/?p=62', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(63, 1, '2015-05-14 12:57:18', '2015-05-14 12:57:18', '<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Welcome to Drinking Beer Squad PVE</p>\r\n</h1>\r\n</u>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server The Beer Drinking Squad. It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">General Info:</p>\r\n</h1>\r\n</u>\r\n1. You may place lockboxes on the server (do not block anyone''s locker boxes).\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues (server crashes, glitches, down time, etc). As a result, no refunds will be given.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Pricing:</p>\r\n</h1>\r\n</u>\r\n\r\nMAKE ME A REASONABLE OFFER - INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 12:57:18', '2015-05-14 12:57:18', '', 37, 'http://proyectomariovillalba.comuf.com/?p=63', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(64, 1, '2015-05-14 12:58:37', '2015-05-14 12:58:37', '<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Welcome to Drinking Beer Squad PVE</p>\r\n</h1>\r\n</u>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server The Beer Drinking Squad. It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">General Info:</p>\r\n</h1>\r\n</u>\r\n1. You may place lockboxes on the server, do not block anyone''s locker boxes.\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam @ rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues, server crashes, glitches, down time, etc. As a result, no refunds will be given.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Pricing:</p>\r\n</h1>\r\n</u>\r\n\r\nMAKE ME A REASONABLE OFFER , INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 12:58:37', '2015-05-14 12:58:37', '', 37, 'http://proyectomariovillalba.comuf.com/?p=64', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(65, 1, '2015-05-14 12:59:20', '2015-05-14 12:59:20', '<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Welcome to Drinking Beer Squad PVE</p>\r\n</h1>\r\n</u>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server The Beer Drinking Squad. It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">General Info:</p>\r\n</h1>\r\n</u>\r\n1. You may place lockboxes on the server, do not block anyone''s locker boxes.\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam as  rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues, server crashes, glitches, down time, etc. As a result, no refunds will be given.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Pricing:</p>\r\n</h1>\r\n</u>\r\n\r\nMAKE ME A REASONABLE OFFER , INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 12:59:20', '2015-05-14 12:59:20', '', 37, 'http://proyectomariovillalba.comuf.com/?p=65', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(66, 1, '2015-05-14 12:59:47', '2015-05-14 12:59:47', '<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Welcome to Drinking Beer Squad PVE</p>\r\n</h1>\r\n</u>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server The Beer Drinking Squad. It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">General Info:</p>\r\n</h1>\r\n</u>\r\n1. You may place lockboxes on the server,do not block anyone locker boxes.\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam as  rickgrimesinfestation\r\n\r\nI can not be held responsible for HP''s issues, server crashes, glitches, down time, etc. As a result, no refunds will be given.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Pricing:</p>\r\n</h1>\r\n</u>\r\n\r\nMAKE ME A REASONABLE OFFER , INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 12:59:47', '2015-05-14 12:59:47', '', 37, 'http://proyectomariovillalba.comuf.com/?p=66', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(67, 1, '2015-05-14 13:00:04', '2015-05-14 13:00:04', '<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Welcome to Drinking Beer Squad PVE</p>\r\n</h1>\r\n</u>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server The Beer Drinking Squad. It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">General Info:</p>\r\n</h1>\r\n</u>\r\n1. You may place lockboxes on the server,do not block anyone locker boxes.\r\n2. You will be given 5 days notice to remove them when either your time is up or I decide to not renew\r\nthe server again.\r\n3. You may rent space for any length of time\r\n4. This is a drama free zone. If there are issues, pm me and I will address them.\r\n5. You can reach me on Steam as  rickgrimesinfestation\r\n\r\nI can not be held responsible for HP issues, server crashes, glitches, down time, etc. As a result, no refunds will be given.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Pricing:</p>\r\n</h1>\r\n</u>\r\n\r\nMAKE ME A REASONABLE OFFER , INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 13:00:04', '2015-05-14 13:00:04', '', 37, 'http://proyectomariovillalba.comuf.com/?p=67', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(68, 1, '2015-05-14 13:00:53', '2015-05-14 13:00:53', '<ol>\r\n	<li>Only PvE!!! PvP is forbidden!</li>\r\n	<li>NO hacking.</li>\r\n<li> Cars. If someone in the group is using a car to do loot runs from their safes to a safe zone, do not\r\ntake their car from them. Hitch a ride!</li>\r\n	<li>Join in main group, Small groups and single players will get kicked!</li>\r\n	<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is forbidden!</li>\r\n	<li>Report unknown survivors!</li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n<li>Will need a screenshot of all of your players (all 5 in one shot). Names other than what are listed will\r\nbe kicked. 2 or more characters from the same account will result in access removal. Failure to provide this in a reasonable time will result in loss of access.</li>\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list)!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (forum or steam).</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n<li>If you are killed by another player on our server, please provide a screenshot of your tombstone and PM me here on the forums.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ol>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-05-14 13:00:53', '2015-05-14 13:00:53', '', 8, 'http://proyectomariovillalba.comuf.com/?p=68', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(69, 1, '2015-05-14 13:04:21', '2015-05-14 13:04:21', '<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Welcome to Drinking Beer Squad PVE</p>\r\n</h1>\r\n</u>\r\nHello All,\r\n\r\nI am interested in hosting a few of you on my private PVE server The Beer Drinking Squad. It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\r\n\r\nA little about me: 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">General Info:</p>\r\n</h1>\r\n</u>\r\n<ol>\r\n<li> You may place lockboxes on the server,do not block anyone locker boxes.\r\n<li> You will be given 5 days notice to remove them when either your time is up or I decide to not renew the server again.</li>\r\n<li> You may rent space for any length of time</li>\r\n<li> This is a drama free zone. If there are issues, pm me and I will address them.</li>\r\n<li> You can reach me on Steam as  rickgrimesinfestation</li>\r\n</ol>\r\nI can not be held responsible for HP issues, server crashes, glitches, down time, etc. As a result, no refunds will be given.\r\n\r\n<u>\r\n<h1 class="titulo">\r\n<p style="text-align: center;">Pricing:</p>\r\n</h1>\r\n</u>\r\n\r\nMAKE ME A REASONABLE OFFER , INCLUDE ITEMS AND TIME YOU ARE WANTING\r\n\r\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-14 13:04:21', '2015-05-14 13:04:21', '', 37, 'http://proyectomariovillalba.comuf.com/?p=69', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(70, 1, '2015-05-14 21:56:36', '2015-05-14 21:56:36', '<ol>\r\n	\r\n	<li>NO hacking.</li>\r\n        <li>Only PvE!!! PvP is forbidden!</li>\r\n<li>Join in main group, Small groups and single players will get kicked!</li>\r\n<li>Stealing loot from other subscribers is forbidden!</li>\r\n	<li>Sharing the password is not allowed!</li>\r\n	<li>Cars. If someone in the group is using a car to do loot runs from their safes to a safe zone, do not\r\ntake their car from them. Hitch a ride!</li>\r\n	<li>Subscribers are not allowed to claim a town/city for themself!</li>\r\n	<li>Subscribers are not allowed to insult other subscribers!</li>\r\n	<li>Will need a screenshot of all of your players (all 5 in one shot). Names other than what are listed will\r\nbe kicked. 2 or more characters from the same account will result in access removal. Failure to provide this in a reasonable time will result in loss of access.</li>\r\n	<li>Report unknown survivors! </li>\r\n	<li>Unknown survivors will get banned!</li>\r\n	\r\n	\r\n	<li>Subscribers are allowed to kill unknown players (players that are not on the survivor list)!</li>\r\n	<li>You are not allowed to join the server with survivors that are not on the survivor list!</li>\r\n	<li>If you have updated your survivors but the survivor list is not up2date, please contact the admin (forum or steam).</li>\r\n	<li>The admin is allowed to temporary ban subscribers from the server, if he does see the need to do it.</li>\r\n	<li>If you are killed by another player on our server, please provide a screenshot of your tombstone and PM me \r\n on the forums.</li>\r\n	<li>If you break a rule you will get banned without refund!</li>\r\n	<li>No refunds!</li>\r\n</ol>', 'Rules', '', 'inherit', 'closed', 'open', '', '8-revision-v1', '', '', '2015-05-14 21:56:36', '2015-05-14 21:56:36', '', 8, 'http://proyectomariovillalba.comuf.com/?p=70', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(71, 1, '2015-05-14 21:59:11', '2015-05-14 21:59:11', '<p style="text-align: center;"><span style="text-decoration: underline;">PASSWORD</span>\r\n12345</p>', 'Server PW', '', 'inherit', 'closed', 'open', '', '12-revision-v1', '', '', '2015-05-14 21:59:11', '2015-05-14 21:59:11', '', 12, 'http://proyectomariovillalba.comuf.com/?p=71', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(72, 1, '2015-05-14 22:00:14', '2015-05-14 22:00:14', '<p style="text-align: center;"><span style="text-decoration: underline;">PASSWORD</span>\r\n435345</p>', 'Server PW', '', 'inherit', 'closed', 'open', '', '12-revision-v1', '', '', '2015-05-14 22:00:14', '2015-05-14 22:00:14', '', 12, 'http://proyectomariovillalba.comuf.com/?p=72', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES(74, 1, '2015-05-17 04:32:47', '2015-05-17 04:32:47', '<u>\n<h1 class="titulo">\n<p style="text-align: center;">Welcome to Drinking Beer Squad PVE</p>\n</h1>\n</u>\nHello All,\n\nI am interested in hosting a few of you on my private PVE server The Beer Drinking Squad. It is a US based server. I am looking to keep the # of users around a maximum of 25 to ensure that there will be ample loot for everyone.\n\nA little about me... 39 y/o father of 3 teenagers (2 who play this game). I am a Hospital Administrator by day, a woodworker for fun, and a gamer the rest of the time. Some of you may recognize the server name as one that has been around for almost 10 years (not in this game obviously, but in many Valve games). I am the co-founder of [BDS] Beer Drinking Squad and have been at its helm for almost 10 years. I share this with you so that you can be assured of a drama free server run by someone who loves to game.\n\n<u>\n<h1 class="titulo">\n<p style="text-align: center;">General Info:</p>\n</h1>\n</u>\n<ol>\n<li> You may place lockboxes on the server,do not block anyone locker boxes.\n<li> You will be given 5 days notice to remove them when either your time is up or I decide to not renew the server again.</li>\n<li> You may rent space for any length of time</li>\n<li> This is a drama free zone. If there are issues, pm me and I will address them.</li>\n<li> You can reach me on Steam as  rickgrimesinfestation</li>\n</ol>\nI can not be held responsible for HP issues, server crashes, glitches, down time, etc. As a result, no refunds will be given.\n\n<u>\n<h1 class="titulo">\n<p style="text-align: center;">Pricing:</p>\n</h1>\n</u>\n\nMAKE ME A REASONABLE OFFER , INCLUDE ITEMS AND TIME YOU ARE WANTING\n\nThings I am interested in: Stanags, C-Mags, other ammo is good too, rare guns (ie. Sigs, Imitar, Snipers), you get the idea.', 'Welcome to Drinking Beer Squad PVE ', '', 'inherit', 'closed', 'open', '', '37-revision-v1', '', '', '2015-05-17 04:32:47', '2015-05-17 04:32:47', '', 37, 'http://proyectomariovillalba.comuf.com/?p=74', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` VALUES(1, 'Uncategorized', 'uncategorized', 0);
INSERT INTO `wp_terms` VALUES(2, 'Events', 'events', 0);
INSERT INTO `wp_terms` VALUES(3, 'Principal', 'principal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` VALUES(5, 2, 0);
INSERT INTO `wp_term_relationships` VALUES(22, 3, 0);
INSERT INTO `wp_term_relationships` VALUES(18, 3, 0);
INSERT INTO `wp_term_relationships` VALUES(19, 3, 0);
INSERT INTO `wp_term_relationships` VALUES(20, 3, 0);
INSERT INTO `wp_term_relationships` VALUES(21, 3, 0);
INSERT INTO `wp_term_relationships` VALUES(37, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` VALUES(1, 1, 'category', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES(2, 2, 'nav_menu', '', 0, 1);
INSERT INTO `wp_term_taxonomy` VALUES(3, 3, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=448 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` VALUES(1, 1, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(2, 1, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(3, 1, 'nickname', 'picoteca');
INSERT INTO `wp_usermeta` VALUES(4, 1, 'description', '');
INSERT INTO `wp_usermeta` VALUES(5, 1, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(6, 1, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(7, 1, 'admin_color', 'ectoplasm');
INSERT INTO `wp_usermeta` VALUES(8, 1, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(9, 1, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');
INSERT INTO `wp_usermeta` VALUES(11, 1, 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(13, 1, 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta` VALUES(14, 1, 'wp_dashboard_quick_press_last_post_id', '3');
INSERT INTO `wp_usermeta` VALUES(15, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}');
INSERT INTO `wp_usermeta` VALUES(16, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}');
INSERT INTO `wp_usermeta` VALUES(17, 1, 'nav_menu_recently_edited', '2');
INSERT INTO `wp_usermeta` VALUES(18, 1, 'wp_user-settings', 'editor=tinymce');
INSERT INTO `wp_usermeta` VALUES(19, 1, 'wp_user-settings-time', '1400104747');
INSERT INTO `wp_usermeta` VALUES(213, 14, 'survivor1', 'Broken Bambi');
INSERT INTO `wp_usermeta` VALUES(382, 11, 'expire_date', ' 5/2/14');
INSERT INTO `wp_usermeta` VALUES(212, 14, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(173, 12, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(174, 12, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(175, 12, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(176, 12, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(177, 12, 'survivor1', 'Mordecai BR');
INSERT INTO `wp_usermeta` VALUES(178, 12, 'survivor2', 'Verdier');
INSERT INTO `wp_usermeta` VALUES(179, 12, 'survivor3', 'JaJae');
INSERT INTO `wp_usermeta` VALUES(180, 12, 'survivor4', 'Syeous');
INSERT INTO `wp_usermeta` VALUES(181, 12, 'survivor5', 'Mesmash');
INSERT INTO `wp_usermeta` VALUES(182, 12, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(183, 12, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(184, 13, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(185, 13, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(186, 13, 'nickname', 'slot04');
INSERT INTO `wp_usermeta` VALUES(187, 13, 'description', '');
INSERT INTO `wp_usermeta` VALUES(188, 13, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(189, 13, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(190, 13, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(191, 13, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(192, 13, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(193, 13, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(194, 13, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(195, 13, 'survivor1', 'Detoxifried');
INSERT INTO `wp_usermeta` VALUES(196, 13, 'survivor2', 'Detoxisfooked');
INSERT INTO `wp_usermeta` VALUES(197, 13, 'survivor3', 'DTXmasterof arms');
INSERT INTO `wp_usermeta` VALUES(198, 13, 'survivor4', 'Dextorz');
INSERT INTO `wp_usermeta` VALUES(199, 13, 'survivor5', 'Detoxmang');
INSERT INTO `wp_usermeta` VALUES(200, 13, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(201, 13, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(202, 14, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(203, 14, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(204, 14, 'nickname', 'slot05');
INSERT INTO `wp_usermeta` VALUES(205, 14, 'description', '');
INSERT INTO `wp_usermeta` VALUES(206, 14, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(207, 14, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(208, 14, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(209, 14, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(210, 14, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(211, 14, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(74, 1, 'closedpostboxes_page', 'a:0:{}');
INSERT INTO `wp_usermeta` VALUES(75, 1, 'metaboxhidden_page', 'a:5:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}');
INSERT INTO `wp_usermeta` VALUES(172, 12, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(171, 12, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(170, 12, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(169, 12, 'description', '');
INSERT INTO `wp_usermeta` VALUES(168, 12, 'nickname', 'slot03');
INSERT INTO `wp_usermeta` VALUES(167, 12, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(166, 12, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(165, 11, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(164, 11, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(163, 11, 'survivor5', 'Sengerkaldaka');
INSERT INTO `wp_usermeta` VALUES(162, 11, 'survivor4', 'Wolfmccloud');
INSERT INTO `wp_usermeta` VALUES(161, 11, 'survivor3', 'Khelekwolf');
INSERT INTO `wp_usermeta` VALUES(160, 11, 'survivor2', 'Wolfhanguard');
INSERT INTO `wp_usermeta` VALUES(159, 11, 'survivor1', 'Darkchaoticwolf');
INSERT INTO `wp_usermeta` VALUES(158, 11, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(157, 11, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(156, 11, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(155, 11, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(154, 11, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(153, 11, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(152, 11, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(151, 11, 'description', '');
INSERT INTO `wp_usermeta` VALUES(150, 11, 'nickname', 'slot01');
INSERT INTO `wp_usermeta` VALUES(148, 11, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(149, 11, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(214, 14, 'survivor2', 'Your Duck');
INSERT INTO `wp_usermeta` VALUES(215, 14, 'survivor3', 'King Lizzard');
INSERT INTO `wp_usermeta` VALUES(216, 14, 'survivor4', 'Derping Bambi');
INSERT INTO `wp_usermeta` VALUES(217, 14, 'survivor5', 'King W1z4rd');
INSERT INTO `wp_usermeta` VALUES(218, 14, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(219, 14, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(220, 15, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(221, 15, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(222, 15, 'nickname', 'slot06');
INSERT INTO `wp_usermeta` VALUES(223, 15, 'description', '');
INSERT INTO `wp_usermeta` VALUES(224, 15, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(225, 15, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(226, 15, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(227, 15, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(228, 15, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(229, 15, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(230, 15, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(231, 15, 'survivor1', 'Coolbylaki');
INSERT INTO `wp_usermeta` VALUES(232, 15, 'survivor2', 'Iddlebittle');
INSERT INTO `wp_usermeta` VALUES(233, 15, 'survivor3', 'crazyshizzle');
INSERT INTO `wp_usermeta` VALUES(234, 15, 'survivor4', 'infestedmalester');
INSERT INTO `wp_usermeta` VALUES(235, 15, 'survivor5', 'frankly Escobar');
INSERT INTO `wp_usermeta` VALUES(236, 15, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(237, 15, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(238, 16, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(239, 16, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(240, 16, 'nickname', 'slot07');
INSERT INTO `wp_usermeta` VALUES(241, 16, 'description', '');
INSERT INTO `wp_usermeta` VALUES(242, 16, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(243, 16, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(244, 16, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(245, 16, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(246, 16, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(247, 16, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(248, 16, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(249, 16, 'survivor1', 'RDK Supernova');
INSERT INTO `wp_usermeta` VALUES(250, 16, 'survivor2', 'Amnesia');
INSERT INTO `wp_usermeta` VALUES(251, 16, 'survivor3', 'Ching Tah Wah');
INSERT INTO `wp_usermeta` VALUES(252, 16, 'survivor4', 'P4ranoia');
INSERT INTO `wp_usermeta` VALUES(253, 16, 'survivor5', '1ns45ne /RDK Bambi');
INSERT INTO `wp_usermeta` VALUES(254, 16, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(255, 16, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(256, 17, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(257, 17, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(258, 17, 'nickname', 'slot08');
INSERT INTO `wp_usermeta` VALUES(259, 17, 'description', '');
INSERT INTO `wp_usermeta` VALUES(260, 17, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(261, 17, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(262, 17, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(263, 17, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(264, 17, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(265, 17, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(266, 17, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(267, 17, 'survivor1', 'Mawsh');
INSERT INTO `wp_usermeta` VALUES(268, 17, 'survivor2', 'Jezzah');
INSERT INTO `wp_usermeta` VALUES(269, 17, 'survivor3', 'Eddy Bru');
INSERT INTO `wp_usermeta` VALUES(270, 17, 'survivor4', 'Mawshhh');
INSERT INTO `wp_usermeta` VALUES(271, 17, 'survivor5', 'Mawshe');
INSERT INTO `wp_usermeta` VALUES(272, 17, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(273, 17, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(274, 18, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(275, 18, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(276, 18, 'nickname', 'slot09');
INSERT INTO `wp_usermeta` VALUES(277, 18, 'description', '');
INSERT INTO `wp_usermeta` VALUES(278, 18, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(279, 18, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(280, 18, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(281, 18, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(282, 18, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(283, 18, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(284, 18, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(285, 18, 'survivor1', 'Mdqfusse');
INSERT INTO `wp_usermeta` VALUES(286, 18, 'survivor2', 'Mdqfusse2');
INSERT INTO `wp_usermeta` VALUES(287, 18, 'survivor3', 'Mdqfusse3');
INSERT INTO `wp_usermeta` VALUES(288, 18, 'survivor4', 'Mdqfusse4');
INSERT INTO `wp_usermeta` VALUES(289, 18, 'survivor5', 'Mdqfusse5');
INSERT INTO `wp_usermeta` VALUES(290, 18, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(291, 18, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(292, 19, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(293, 19, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(294, 19, 'nickname', 'slot10');
INSERT INTO `wp_usermeta` VALUES(295, 19, 'description', '');
INSERT INTO `wp_usermeta` VALUES(296, 19, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(297, 19, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(298, 19, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(299, 19, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(300, 19, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(301, 19, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(302, 19, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(303, 19, 'survivor1', 'Ltasoldier02');
INSERT INTO `wp_usermeta` VALUES(304, 19, 'survivor2', 'Ltasoldier03');
INSERT INTO `wp_usermeta` VALUES(305, 19, 'survivor3', 'Ltasoldier05');
INSERT INTO `wp_usermeta` VALUES(306, 19, 'survivor4', 'Soldy');
INSERT INTO `wp_usermeta` VALUES(307, 19, 'survivor5', 'Adry07');
INSERT INTO `wp_usermeta` VALUES(308, 19, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(309, 19, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(310, 20, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(311, 20, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(312, 20, 'nickname', 'slot11');
INSERT INTO `wp_usermeta` VALUES(313, 20, 'description', '');
INSERT INTO `wp_usermeta` VALUES(314, 20, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(315, 20, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(316, 20, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(317, 20, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(318, 20, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(319, 20, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(320, 20, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(321, 20, 'survivor1', 'W1ldthing');
INSERT INTO `wp_usermeta` VALUES(322, 20, 'survivor2', 'Skoll');
INSERT INTO `wp_usermeta` VALUES(323, 20, 'survivor3', 'Toby Logan');
INSERT INTO `wp_usermeta` VALUES(324, 20, 'survivor4', 'China Town');
INSERT INTO `wp_usermeta` VALUES(325, 20, 'survivor5', 'Welcometorajvusa');
INSERT INTO `wp_usermeta` VALUES(326, 20, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(327, 20, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(328, 21, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(329, 21, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(330, 21, 'nickname', 'slot12');
INSERT INTO `wp_usermeta` VALUES(331, 21, 'description', '');
INSERT INTO `wp_usermeta` VALUES(332, 21, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(333, 21, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(334, 21, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(335, 21, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(336, 21, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(337, 21, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(338, 21, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(339, 21, 'survivor1', 'Dont Kill');
INSERT INTO `wp_usermeta` VALUES(340, 21, 'survivor2', 'Please No');
INSERT INTO `wp_usermeta` VALUES(341, 21, 'survivor3', 'Dont Plz');
INSERT INTO `wp_usermeta` VALUES(342, 21, 'survivor4', 'Try Hard Time');
INSERT INTO `wp_usermeta` VALUES(343, 21, 'survivor5', 'Frapsin on you');
INSERT INTO `wp_usermeta` VALUES(344, 21, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(345, 21, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(346, 22, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(347, 22, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(348, 22, 'nickname', 'slot13');
INSERT INTO `wp_usermeta` VALUES(349, 22, 'description', '');
INSERT INTO `wp_usermeta` VALUES(350, 22, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(351, 22, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(352, 22, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(353, 22, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(354, 22, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(355, 22, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(356, 22, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(357, 22, 'survivor1', 'Steveizack');
INSERT INTO `wp_usermeta` VALUES(358, 22, 'survivor2', 'Izacksteve');
INSERT INTO `wp_usermeta` VALUES(359, 22, 'survivor3', 'Izack69');
INSERT INTO `wp_usermeta` VALUES(360, 22, 'survivor4', '69Izack');
INSERT INTO `wp_usermeta` VALUES(361, 22, 'survivor5', 'Steveizack69');
INSERT INTO `wp_usermeta` VALUES(362, 22, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(363, 22, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(364, 23, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(365, 23, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(366, 23, 'nickname', 'slot14');
INSERT INTO `wp_usermeta` VALUES(367, 23, 'description', '');
INSERT INTO `wp_usermeta` VALUES(368, 23, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(369, 23, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(370, 23, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(371, 23, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(372, 23, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(373, 23, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(374, 23, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(375, 23, 'survivor1', 'Lancelot');
INSERT INTO `wp_usermeta` VALUES(376, 23, 'survivor2', 'Lancer');
INSERT INTO `wp_usermeta` VALUES(377, 23, 'survivor3', 'Gr3y Fox');
INSERT INTO `wp_usermeta` VALUES(378, 23, 'survivor4', 'Specctra');
INSERT INTO `wp_usermeta` VALUES(379, 23, 'survivor5', 'Lanc3r');
INSERT INTO `wp_usermeta` VALUES(380, 23, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(381, 23, 'default_password_nag', '1');
INSERT INTO `wp_usermeta` VALUES(383, 12, 'expire_date', '6/12/15');
INSERT INTO `wp_usermeta` VALUES(384, 13, 'expire_date', '5/14/15');
INSERT INTO `wp_usermeta` VALUES(385, 14, 'expire_date', '5/24/15');
INSERT INTO `wp_usermeta` VALUES(386, 15, 'expire_date', '5/25/15');
INSERT INTO `wp_usermeta` VALUES(387, 16, 'expire_date', ' 7/15/15');
INSERT INTO `wp_usermeta` VALUES(388, 17, 'expire_date', '5/14/15');
INSERT INTO `wp_usermeta` VALUES(389, 18, 'expire_date', '5/24/15');
INSERT INTO `wp_usermeta` VALUES(390, 19, 'expire_date', '5/24/15');
INSERT INTO `wp_usermeta` VALUES(391, 20, 'expire_date', '5/14/15');
INSERT INTO `wp_usermeta` VALUES(392, 21, 'expire_date', '5/29/15');
INSERT INTO `wp_usermeta` VALUES(393, 22, 'expire_date', '6/7/15');
INSERT INTO `wp_usermeta` VALUES(394, 23, 'expire_date', '5/31/15');
INSERT INTO `wp_usermeta` VALUES(439, 26, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(438, 26, 'wp_user_level', '0');
INSERT INTO `wp_usermeta` VALUES(437, 26, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO `wp_usermeta` VALUES(436, 26, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(435, 26, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(434, 26, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(433, 26, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(432, 26, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(431, 26, 'description', '');
INSERT INTO `wp_usermeta` VALUES(429, 26, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(430, 26, 'nickname', 'slot02');
INSERT INTO `wp_usermeta` VALUES(428, 26, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(413, 25, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES(414, 25, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES(415, 25, 'nickname', 'rick');
INSERT INTO `wp_usermeta` VALUES(416, 25, 'description', '');
INSERT INTO `wp_usermeta` VALUES(417, 25, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES(418, 25, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES(419, 25, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES(420, 25, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES(421, 25, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES(422, 25, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');
INSERT INTO `wp_usermeta` VALUES(423, 25, 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES(424, 25, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES(425, 25, 'wp_dashboard_quick_press_last_post_id', '76');
INSERT INTO `wp_usermeta` VALUES(426, 1, 'manageuserscolumnshidden', 'a:16:{i:0;s:5:"posts";i:1;s:10:"first_name";i:2;s:9:"last_name";i:3;s:8:"user_url";i:4;s:3:"aim";i:5;s:3:"yim";i:6;s:6:"jabber";i:7;s:11:"description";i:8;s:0:"";i:9;s:0:"";i:10;s:0:"";i:11;s:0:"";i:12;s:0:"";i:13;s:0:"";i:14;s:0:"";i:15;s:0:"";}');
INSERT INTO `wp_usermeta` VALUES(427, 1, 'users_per_page', '34');
INSERT INTO `wp_usermeta` VALUES(440, 26, 'survivor1', 'Porr3tas ');
INSERT INTO `wp_usermeta` VALUES(441, 26, 'survivor2', 'Cerdilla ');
INSERT INTO `wp_usermeta` VALUES(442, 26, 'survivor3', 'Recolector ');
INSERT INTO `wp_usermeta` VALUES(443, 26, 'survivor4', 'Picoteca Soprano');
INSERT INTO `wp_usermeta` VALUES(444, 26, 'survivor5', ' El Taquillas');
INSERT INTO `wp_usermeta` VALUES(445, 26, 'expire_date', '6/9/15');
INSERT INTO `wp_usermeta` VALUES(446, 25, 'wp_user-settings', 'editor=html');
INSERT INTO `wp_usermeta` VALUES(447, 25, 'wp_user-settings-time', '1421159862');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` VALUES(1, 'picoteca', '$P$BPhmFBsB2hpeuqJinrvIsEYqeZ3UZe/', 'picoteca', 'mariovblay@gmail.com', '', '2015-05-11 00:49:07', '', 0, 'picoteca');
INSERT INTO `wp_users` VALUES(14, 'slot05', '$P$B07xFhhhCAIAkzL0JnGkAnp4IZ2IsA.', 'slot05', 'slot05@pve.com', '', '2015-05-14 08:44:38', '', 0, 'slot05');
INSERT INTO `wp_users` VALUES(15, 'slot06', '$P$BMyIuVhJGDt4Yckyi24p8DxktZzmlv.', 'slot06', 'slot06@pve.com', '', '2015-05-14 08:45:25', '', 0, 'slot06');
INSERT INTO `wp_users` VALUES(13, 'slot04', '$P$BIXTUjwYkQa7mT4AOvSv0MCRPgrzxI.', 'slot04', 'slot04@pve.com', '', '2015-05-14 08:43:24', '', 0, 'slot04');
INSERT INTO `wp_users` VALUES(12, 'slot03', '$P$BzREatWLWHNjiMLQUdnHV3cJD8QV6f.', 'slot03', 'slot03@pve.com', '', '2015-05-14 08:41:53', '', 0, 'slot03');
INSERT INTO `wp_users` VALUES(11, 'slot01', '$P$BOeYeagDDOPVQpNcjYbfRep8bXQFev0', 'slot01', 'slot01@pve.com', '', '2015-05-14 08:39:52', '', 0, 'slot01');
INSERT INTO `wp_users` VALUES(16, 'slot07', '$P$BRY02EuTexbdMCxtuAN0r1uvqu0kFG1', 'slot07', 'slot07@pve.com', '', '2015-05-14 08:47:21', '', 0, 'slot07');
INSERT INTO `wp_users` VALUES(17, 'slot08', '$P$Be4o1DEfKKGaBv/kninwA/O8xgbdG11', 'slot08', 'slot08@pve.com', '', '2015-05-14 08:48:22', '', 0, 'slot08');
INSERT INTO `wp_users` VALUES(18, 'slot09', '$P$BSoItvi4C8kuTGtLop/kaHCB8Yv4kP/', 'slot09', 'slot09@pve.com', '', '2015-05-14 08:49:11', '', 0, 'slot09');
INSERT INTO `wp_users` VALUES(19, 'slot10', '$P$BItWR30iuJzeUdNVsbP9do0M0GwE9p1', 'slot10', 'slot10@pve.com', '', '2015-05-14 08:50:00', '', 0, 'slot10');
INSERT INTO `wp_users` VALUES(20, 'slot11', '$P$BX3EW01yytT.GGgpWxEsB6Fojlc/PX/', 'slot11', 'slot11@pve.com', '', '2015-05-14 08:51:08', '', 0, 'slot11');
INSERT INTO `wp_users` VALUES(21, 'slot12', '$P$BJuLzifHHFzFl4iQ5X5P7MUpbmN9kD1', 'slot12', 'slot12@pve.com', '', '2015-05-14 08:52:43', '', 0, 'slot12');
INSERT INTO `wp_users` VALUES(22, 'slot13', '$P$BUhFYtY5zRoKy3v.En9Q1QtzAWLwTi/', 'slot13', 'slot13@pve.com', '', '2015-05-14 08:54:38', '', 0, 'slot13');
INSERT INTO `wp_users` VALUES(23, 'slot14', '$P$B.RtITDpGMMXGeG1GcEXRIo1D9HCFQ/', 'slot14', 'slot14@pve.com', '', '2015-05-14 08:56:03', '', 0, 'slot14');
INSERT INTO `wp_users` VALUES(26, 'slot02', '$P$ByGEpbsZbRYXQNjCwDaglatRN8rrms0', 'slot02', 'marioblay@gmail.com', '', '2015-05-17 15:13:17', '', 0, 'slot02');
INSERT INTO `wp_users` VALUES(25, 'rick', '$P$B7s9poB/CViQqCIevYJuq0230fF5Sq.', 'rick', 'rickgrimesinfestation@yahoo.com', '', '2015-05-15 12:33:16', '', 0, 'rick');
