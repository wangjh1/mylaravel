/*
Navicat MySQL Data Transfer

Source Server         : online
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : laravel

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2017-05-16 19:53:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', 'Title 0', 'Body 0', '1', '2017-05-16 03:44:38', '2017-05-16 03:44:38');
INSERT INTO `articles` VALUES ('2', 'Title 1', 'Body 1', '1', '2017-05-16 03:44:38', '2017-05-16 03:44:38');
INSERT INTO `articles` VALUES ('3', 'Title 2', 'Body 2', '1', '2017-05-16 03:44:38', '2017-05-16 03:44:38');
INSERT INTO `articles` VALUES ('4', 'Title 3', 'Body 3', '1', '2017-05-16 03:44:38', '2017-05-16 03:44:38');
INSERT INTO `articles` VALUES ('5', 'Title 4', 'Body 4', '1', '2017-05-16 03:44:38', '2017-05-16 03:44:38');
INSERT INTO `articles` VALUES ('6', 'Title 5', 'Body 5', '1', '2017-05-16 03:44:38', '2017-05-16 03:44:38');
INSERT INTO `articles` VALUES ('7', 'Title 6', 'Body 6', '1', '2017-05-16 03:44:38', '2017-05-16 03:44:38');
INSERT INTO `articles` VALUES ('8', 'Title 7', 'Body 7', '1', '2017-05-16 03:44:38', '2017-05-16 03:44:38');
INSERT INTO `articles` VALUES ('9', 'Title 8', 'Body 8', '1', '2017-05-16 03:44:38', '2017-05-16 03:44:38');
INSERT INTO `articles` VALUES ('10', 'Title 9', 'Body 9', '1', '2017-05-16 03:44:38', '2017-05-16 03:44:38');
INSERT INTO `articles` VALUES ('11', '测试啊', '我是测试内容', '1', '2017-05-16 06:11:37', '2017-05-16 06:11:37');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '凤飞飞', '62765843@qq.com', '432', '4324风格热个人', '11', '2017-05-16 06:16:26', '2017-05-16 06:16:26');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2017_05_16_033832_create_article_table', '2');
INSERT INTO `migrations` VALUES ('2017_05_16_055034_create_comments_table', '3');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'wang', '2445648562@qq.com', '$2y$10$JtdS.1XJ4EfhjUDUXYD4Y.2lZlRolriI0DIrSNXsElxdx7LHHSt26', null, '2017-05-16 03:36:54', '2017-05-16 03:36:54');
