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

 Date: 06/08/2020 00:08:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for main_kpi_input
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_input`;
CREATE TABLE `main_kpi_input`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_month` date NOT NULL,
  `kpi_year` date NULL DEFAULT NULL,
  `a1` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b1` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a2` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b2` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a3` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b3` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a4` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b4` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a5` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b5` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a6` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b6` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a7` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b7` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a8` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b8` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a9` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b9` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a10` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b10` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a11` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b11` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a12` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b12` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `etc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_value` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_update` datetime(6) NOT NULL,
  `input_date` datetime(6) NOT NULL,
  `kpi_id_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_kpi_input_kpi_id_id_7c7a0f27_fk_main_kpi_index_id`(`kpi_id_id`) USING BTREE,
  CONSTRAINT `main_kpi_input_kpi_id_id_7c7a0f27_fk_main_kpi_index_id` FOREIGN KEY (`kpi_id_id`) REFERENCES `main_kpi_index` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_kpi_input
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
