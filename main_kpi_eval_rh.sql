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

 Date: 06/08/2020 00:08:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for main_kpi_eval_rh
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_eval_rh`;
CREATE TABLE `main_kpi_eval_rh`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kpi_year` date NULL DEFAULT NULL,
  `kpi_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ex` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_eval` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_kpi_eval_rh
-- ----------------------------
INSERT INTO `main_kpi_eval_rh` VALUES (1, '1900-01-20', '00700', 'pp', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (2, '1900-01-20', '00800', 'ge', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (3, '1900-01-20', '00900', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (4, '1900-01-20', '01101', 'pp', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (5, '1900-01-20', '01102', 'pp', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (6, '1900-01-20', '01103', 'pp', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (7, '1900-01-20', '01104', 'pp', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (8, '1900-01-20', '01105', 'pp', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (9, '1900-01-20', '01201', 'pp', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (10, '1900-01-20', '01202', 'pp', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (11, '1900-01-20', '01203', 'pp', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (12, '1900-01-20', '01204', 'pp', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (13, '1900-01-20', '01300', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (14, '1900-01-20', '01400', 'se', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (15, '1900-01-20', '01600', 'se', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (16, '1900-01-20', '01601', 'se', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (17, '1900-01-20', '01800', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (18, '1900-01-20', '02100', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (19, '1900-01-20', '02700', 'se', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (20, '1900-01-20', '02901', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (21, '1900-01-20', '02902', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (22, '1900-01-20', '02903', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (23, '1900-01-20', '03200', 'se', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (24, '1900-01-20', '03300', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (25, '1900-01-20', '03400', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (26, '1900-01-20', '03501', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (27, '1900-01-20', '03502', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (28, '1900-01-20', '03600', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (29, '1900-01-20', '03800', 'se', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (30, '1900-01-20', '03900', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (31, '1900-01-20', '04002', 'se', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (32, '1900-01-20', '04300', 'pe', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (33, '1900-01-20', '04400', 'ge', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (34, '1900-01-20', '04501', 'ge', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (35, '1900-01-20', '04502', 'ge', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (36, '1900-01-20', '04601', 'ge', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (37, '1900-01-20', '04602', 'ge', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (38, '1900-01-20', '04701', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (39, '1900-01-20', '04702', 'se', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (40, '1900-01-20', '04901', 'ge', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (41, '1900-01-20', '04902', 'ge', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (42, '1900-01-20', '04903', 'ge', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (43, '1900-01-20', '05000', 'ge', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (44, '1900-01-20', '05300', 'ge', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (45, '1900-01-20', '01701', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (46, '1900-01-20', '01702', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (47, '1900-01-20', '00100', 'pp', 0);
INSERT INTO `main_kpi_eval_rh` VALUES (48, '1900-01-20', '02400', 'se', 1);
INSERT INTO `main_kpi_eval_rh` VALUES (49, '1900-01-20', '02800', 'se', 1);

SET FOREIGN_KEY_CHECKS = 1;
