/*
 Navicat Premium Data Transfer

 Source Server         : bilibilioneday
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : api_server

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 12/06/2021 20:48:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ev_articles
-- ----------------------------
DROP TABLE IF EXISTS `ev_articles`;
CREATE TABLE `ev_articles` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `cover_img` varchar(255) NOT NULL,
  `pub_date` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `cate_id` int(255) NOT NULL,
  `author_id` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='文章表\nis_delete 0表示沒有被刪除 1表示已經被刪除了';

-- ----------------------------
-- Records of ev_articles
-- ----------------------------
BEGIN;
INSERT INTO `ev_articles` VALUES (1, 'abc', 'abc', '/uploads/8969e653b6c45ac178cd6b87ad3bff82', '2021-06-12 17:12:27.045', '已發布', 0, 123, 8);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
