/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : yiiangular

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-08-09 17:29:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `author` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `year` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', 'Head First PHP & MySQL (2nd Edition)', 'xxx', 'Lynn Beighley and Michael Morrison', 'Amazonh', '2015');
INSERT INTO `book` VALUES ('2', 'PHP and MySQL Web Development (5th Edition)', null, 'Luke Welling and Laura Thomson', 'Amazon', '2014');
INSERT INTO `book` VALUES ('3', 'Secure Development for Mobile Apps: How to Design and Code Secure Mobile Applications with PHP and JavaScript', null, 'J. D. Glaser', 'Amazon', '2014');
INSERT INTO `book` VALUES ('4', 'MySQL Cookbook: Solutions for Database Developers and Administrators', null, 'Paul DuBois', 'Amazon', '2014');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(128) NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('2', 'fghfghfsdtr', '4', '1439123584', '1439123584');
INSERT INTO `comment` VALUES ('3', 'ffdgdfgd', '1', '1439123676', '1439123676');
INSERT INTO `comment` VALUES ('4', 'ghgfhgf', '5', '1439123991', '1439123991');
INSERT INTO `comment` VALUES ('5', 'gvfghhdfhf', '7', '1439124755', '1439124755');
INSERT INTO `comment` VALUES ('6', 'milad hastam in gg', '8', '1439124940', '1439124940');

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1439010823');
INSERT INTO `migration` VALUES ('m140724_112641_init', '1439010831');
INSERT INTO `migration` VALUES ('m140731_074148_post', '1439010831');
INSERT INTO `migration` VALUES ('m140922_121411_comments', '1439010832');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `tags` text,
  `status` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', 'Welcome!', 'This blog system is developed using Yii. It is meant to demonstrate how to use Yii to\r\n            build a complete real-world application. Complete source code may be found in the Yii\r\n            releases. Feel free to try this system by writing new posts and posting comments.', 'yii2, rest', '1', '1', '1439010831', '1439010831');
INSERT INTO `post` VALUES ('3', 'dfsdf', 'fghjghjg', null, '2', '1', '1439123386', '1439123386');
INSERT INTO `post` VALUES ('4', 'b', 'bnnvbnvbn', null, '1', '1', '1439123447', '1439123447');
INSERT INTO `post` VALUES ('5', 'Salam', ';kfc dsfhds fdsa fusdds', null, '2', '1', '1439123718', '1439123718');
INSERT INTO `post` VALUES ('6', 'xcvcv', 'cvbbv', null, '1', '1', '1439124587', '1439124587');
INSERT INTO `post` VALUES ('7', 'cxvcvb', 'cbcx', null, '1', '1', '1439124749', '1439124749');
INSERT INTO `post` VALUES ('8', 'hgfghfgh', 'ghghjghjf', null, '2', '1', '1439124930', '1439124930');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'demo', 'aTe2o7LraQwN0jHS0crUP2x_mA1zskt5', '$2y$13$EMZHbr/K7rnAryjwz/aFTuDawxPBi6pmJuFsZix0mGJE72SNhnKL6', null, 'demo@mail.net', '10', '1439010830', '1439010830');
