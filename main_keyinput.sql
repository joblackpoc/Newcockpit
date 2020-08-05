/*
 Navicat Premium Data Transfer

 Source Server         : 61.19.80.157_3306
 Source Server Type    : MySQL
 Source Server Version : 50623
 Source Host           : 61.19.80.157:3306
 Source Schema         : cockpit

 Target Server Type    : MySQL
 Target Server Version : 50623
 File Encoding         : 65001

 Date: 06/08/2020 00:07:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for main_keyinput
-- ----------------------------
DROP TABLE IF EXISTS `main_keyinput`;
CREATE TABLE `main_keyinput`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a1` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b1` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a2` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b2` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a3` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b3` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a4` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b4` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a5` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b5` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a6` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b6` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a7` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b7` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a8` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b8` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a9` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b9` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a10` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b10` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a11` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b11` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a12` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b12` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_update` datetime(6) NOT NULL,
  `hospcode_id` int(11) NOT NULL,
  `kpi_id` int(11) NOT NULL,
  `response_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_keyinput_hospcode_id_b2192709_fk_main_ssj_id`(`hospcode_id`) USING BTREE,
  INDEX `main_keyinput_kpi_id_a2171e20_fk_main_kpi_id`(`kpi_id`) USING BTREE,
  INDEX `main_keyinput_response_id_9f6dce44_fk_main_reponse_kpi_id`(`response_id`) USING BTREE,
  INDEX `main_keyinput_user_id_00f116de_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `main_keyinput_hospcode_id_b2192709_fk_main_ssj_id` FOREIGN KEY (`hospcode_id`) REFERENCES `main_ssj` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_kpi_id_a2171e20_fk_main_kpi_id` FOREIGN KEY (`kpi_id`) REFERENCES `main_kpi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_response_id_9f6dce44_fk_main_reponse_kpi_id` FOREIGN KEY (`response_id`) REFERENCES `main_reponse_kpi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_user_id_00f116de_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_keyinput
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
