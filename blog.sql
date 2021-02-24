/*
 Navicat MySQL Data Transfer

 Source Server         : root2
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 24/02/2021 17:08:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `article` int(11) NOT NULL AUTO_INCREMENT COMMENT 'article',
  `user_id` int(11) NOT NULL COMMENT 'user_id',
  `article_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'article_title',
  `article_context` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'article_context',
  `article_date` date NULL DEFAULT NULL COMMENT 'article_date',
  `article_ind` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'article_ind',
  PRIMARY KEY (`article`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = ' ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 1, 'Test', 'helloworld', '2021-02-24', 'Test');
INSERT INTO `article` VALUES (2, 0, 'Testtwo', 'gy', '2021-02-24', 'Testtwo');
INSERT INTO `article` VALUES (3, 0, 'Testthere', '这是一篇文章', '2021-02-24', 'TestThere');
INSERT INTO `article` VALUES (4, 0, '文章1', '欢迎各位大佬了解', '2021-02-24', '这是一篇文章');

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `article_id` int(11) NULL DEFAULT NULL COMMENT 'article_id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT 'user_id',
  `review_context` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT 'review_context',
  `review_date` date NULL DEFAULT NULL COMMENT 'review_date',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = ' ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES (1, 1, 1, 'helloword', '2021-02-23');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'username',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'password',
  `user_email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'user_email',
  `user_reainame` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'user_reainame',
  `user_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'user_phone',
  `user_sex` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'user_sex',
  `user_bir` date NULL DEFAULT NULL COMMENT 'user_bir',
  `admin` tinyint(32) NULL DEFAULT NULL COMMENT 'admin',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = ' ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'wenerduo', '12345678', '2289424711@qq.com', 'wenerduo', '12345678910', '男', '2021-02-23', 1);
INSERT INTO `user` VALUES (2, 'wen', '1234567', '2289424711@qq.com', '问', '12345678', '女', '2021-02-22', 0);
INSERT INTO `user` VALUES (3, 'edadaesdqwdfas', '12345678', '2189424711@qq.com', '王五', '15271350862', 'male', '2021-02-16', 0);
INSERT INTO `user` VALUES (4, 'wenerduo2', '12345678', '2189424711@qq.com', '王', '15271350862', 'male', '2021-02-17', 0);

SET FOREIGN_KEY_CHECKS = 1;
