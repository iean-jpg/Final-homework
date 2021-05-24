/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3306
 Source Schema         : student_manager

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 19/05/2021 09:00:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `uid` int(11) NOT NULL,
  `utype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin');
INSERT INTO `role` VALUES (2, 'teacher');
INSERT INTO `role` VALUES (3, 'student');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dat` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `android` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `jsp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('20192430634', '90', '59', '90');
INSERT INTO `score` VALUES ('20192430635', '59', '84', '90');
INSERT INTO `score` VALUES ('20192430636', '93', '97', '90');
INSERT INTO `score` VALUES ('20192430637', '70', '90', '90');
INSERT INTO `score` VALUES ('20192430638', '90', '50', '50');
INSERT INTO `score` VALUES ('20192430639', '90', '90', '92');
INSERT INTO `score` VALUES ('20192430640', '90', '90', '90');
INSERT INTO `score` VALUES ('20192430641', '40', '90', '90');
INSERT INTO `score` VALUES ('20192430642', '90', '90', '90');
INSERT INTO `score` VALUES ('20192430643', '90', '90', '90');
INSERT INTO `score` VALUES ('20192430644', '85', '94', '90');
INSERT INTO `score` VALUES ('20192430645', '75', '67', '76');
INSERT INTO `score` VALUES ('20192430646', '89', '78', '87');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `school_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20192430634', '123', '老八', '男', '2019-9', '计算机科学与技术', 'zzh2910@qq.com');
INSERT INTO `student` VALUES ('20192430635', '0', '厨子', '男', '2019-9', '计算机科学与技术', 'zzh2910@qq.com');
INSERT INTO `student` VALUES ('20192430636', '0', '傻逼', '男', '2019-9', '软件工程', 'zzh2910@qq.com');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('11111', '12345', 'admin', '男', 'zzh2910@qq.com');
INSERT INTO `teacher` VALUES ('zzu', 'zzu', 'zzu', '男', 'zzh2910@qq.com');
INSERT INTO `teacher` VALUES ('zzur', 'rwef', '', '', 'zzh2910@qq.com');
INSERT INTO `teacher` VALUES ('zzurr', 'eee', '', '', 'zzh2910@qq.com');

SET FOREIGN_KEY_CHECKS = 1;
