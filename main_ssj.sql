/*
 Navicat Premium Data Transfer

 Source Server         : 172.16.30.102-157
 Source Server Type    : MySQL
 Source Server Version : 50623
 Source Host           : 172.16.30.102:3306
 Source Schema         : cockpit

 Target Server Type    : MySQL
 Target Server Version : 50623
 File Encoding         : 65001

 Date: 05/08/2020 12:04:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for main_ssj
-- ----------------------------
DROP TABLE IF EXISTS `main_ssj`;
CREATE TABLE `main_ssj`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_ssj
-- ----------------------------
INSERT INTO `main_ssj` VALUES (1, 'ชุมพร', '00068');
INSERT INTO `main_ssj` VALUES (2, 'นครศรีธรรมราช', '00062');
INSERT INTO `main_ssj` VALUES (3, 'กระบี่', '00063');
INSERT INTO `main_ssj` VALUES (4, 'พังงา', '00064');
INSERT INTO `main_ssj` VALUES (5, 'ภูเก็ต', '00065');
INSERT INTO `main_ssj` VALUES (6, 'สุราษฎร์ธานี', '00066');
INSERT INTO `main_ssj` VALUES (7, 'ระนอง', '00067');

SET FOREIGN_KEY_CHECKS = 1;
