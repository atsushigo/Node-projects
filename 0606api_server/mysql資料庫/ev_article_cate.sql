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

 Date: 12/06/2021 20:48:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ev_article_cate
-- ----------------------------
DROP TABLE IF EXISTS `ev_article_cate`;
CREATE TABLE `ev_article_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `is_delete` tinyint(1) DEFAULT NULL COMMENT '數據是否被標記刪除\n0沒有被刪除\n1被刪除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`,`name`,`alias`,`is_delete`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ev_article_cate
-- ----------------------------
BEGIN;
INSERT INTO `ev_article_cate` VALUES (1, '科技', 'tech', 0);
INSERT INTO `ev_article_cate` VALUES (2, '歷史', 'history', 1);
INSERT INTO `ev_article_cate` VALUES (3, '游泳', 'swimming', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
