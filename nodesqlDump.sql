/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.21
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : 192.168.1.21
 Source Database       : nodesql

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : utf-8

 Date: 08/24/2017 20:49:33 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `_mysql_session_store`
-- ----------------------------
DROP TABLE IF EXISTS `_mysql_session_store`;
CREATE TABLE `_mysql_session_store` (
  `id` varchar(255) NOT NULL,
  `expires` bigint(20) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `_mysql_session_store`
-- ----------------------------
BEGIN;
INSERT INTO `_mysql_session_store` VALUES ('USER_SID:Fyi93A3kEkHmay4ya6Ij1Knzu0dSDFfH', '1500865649446', '{\"user\":\"test\",\"id\":1}');
COMMIT;

-- ----------------------------
--  Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` binary(16) NOT NULL,
  `user` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Table structure for `articles`
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` varchar(36) NOT NULL,
  `title` varchar(40) NOT NULL,
  `author` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `content` varchar(40) NOT NULL,
  `url` varchar(50) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img_url` varchar(50) DEFAULT NULL,
  `img_prompt` varchar(100) DEFAULT NULL,
  `pv` varchar(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `articles`
-- ----------------------------
BEGIN;
INSERT INTO `articles` VALUES ('800b2c59-743b-11e7-b1a0-0243bcfac022', 'title222222', 'adminauthor', '# decsrip', 'content2', 'urlurl22222', '1,2', '2017-07-29 08:54:15', null, null, '0'), ('8190ee22-743b-11e7-b1a0-0243bcfac022', 'title222222', 'adminauthor', '执行 Generator 函数会返回一个遍历器对象，也就是说，Generator 函数除了状态机，还是一个遍历器对象生成函数。返回的遍历器对象，可以依次遍历 Generator 函数内部的每一个状态。', 'content2', 'urlurl22222', '1', '2017-07-29 08:54:18', null, null, '0'), ('d104ba9e-74c6-11e7-b1a0-0243bcfac022', 'title33333', 'adminauthor', '执行 Generator 函数会返回一个遍历器对象，也就是说，Generator 函数除了状态机，还是一个遍历器对象生成函数。返回的遍历器对象，可以依次遍历 Generator 函数内部的每一个状态。', 'content2', 'urlurl22222', '1', '2017-07-30 01:31:31', null, null, '0'), ('d17c47c0-74c6-11e7-b1a0-0243bcfac022', 'title244444', 'adminauthor', 'description2', 'content2', 'urlurl22222', '1', '2017-07-30 01:31:32', null, null, '0'), ('d1e85a75-74c6-11e7-b1a0-0243bcfac022', 'title255555', 'adminauthor', 'description2', 'content2', 'urlurl22222', '1', '2017-07-30 01:31:33', null, null, '0');
COMMIT;

-- ----------------------------
--  Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `content` varchar(40) NOT NULL,
  `postid` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(40) NOT NULL,
  `uid` varchar(40) NOT NULL,
  `moment` varchar(40) NOT NULL,
  `comments` varchar(40) NOT NULL DEFAULT '0',
  `pv` varchar(40) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `posts`
-- ----------------------------
BEGIN;
INSERT INTO `posts` VALUES ('1', 'eg', '323tg', 'gewbwbw', '3232tgg', 'ewgewwebw', 'fwegewgew', '247'), ('2', 'abc', 'def', 'content', '23gdv', 'wbwbwb', 'webwwb', '3435');
COMMIT;

-- ----------------------------
--  Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(40) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
--  Records of `tags`
-- ----------------------------
BEGIN;
INSERT INTO `tags` VALUES ('1', 'movie'), ('2', 'travel'), ('5', 'movie'), ('6', 'movie'), ('7', 'movie');
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pass` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('1', 'test', '098f6bcd4621d373cade4e832627b4f6');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
