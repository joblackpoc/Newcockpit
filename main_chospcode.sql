/*
 Navicat Premium Data Transfer

 Source Server         : Local Mysql 8
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3300
 Source Schema         : cockpit

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 04/08/2020 14:33:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for main_chospcode
-- ----------------------------
DROP TABLE IF EXISTS `main_chospcode`;
CREATE TABLE `main_chospcode`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hosname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mu` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subdistcode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ampcode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provcode` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cupcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_chospcode
-- ----------------------------
INSERT INTO `main_chospcode` VALUES (1, '00062', 'สสจ.นครศรีธรรมราช', '', '', '', '80', '00000');
INSERT INTO `main_chospcode` VALUES (2, '00063', 'สสจ.กระบี่', '', '', '', '81', '00000');
INSERT INTO `main_chospcode` VALUES (3, '00064', 'สสจ.พังงา', '', '', '', '82', '00000');
INSERT INTO `main_chospcode` VALUES (4, '00065', 'สสจ.ภูเก็ต', '', '', '', '83', '00000');
INSERT INTO `main_chospcode` VALUES (5, '00066', 'สสจ.สุราษฎร์ธานี', '', '', '', '84', '00000');
INSERT INTO `main_chospcode` VALUES (6, '00067', 'สสจ.ระนอง', '', '', '', '85', '00000');
INSERT INTO `main_chospcode` VALUES (7, '00068', 'สสจ.ชุมพร', '', '', '', '86', '00000');

-- ----------------------------
-- Table structure for main_city
-- ----------------------------
DROP TABLE IF EXISTS `main_city`;
CREATE TABLE `main_city`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_city_country_id_df1a0601_fk_main_country_id`(`country_id`) USING BTREE,
  CONSTRAINT `main_city_country_id_df1a0601_fk_main_country_id` FOREIGN KEY (`country_id`) REFERENCES `main_country` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_city
-- ----------------------------

-- ----------------------------
-- Table structure for main_cmpo
-- ----------------------------
DROP TABLE IF EXISTS `main_cmpo`;
CREATE TABLE `main_cmpo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `population` int(0) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_cmpo
-- ----------------------------
INSERT INTO `main_cmpo` VALUES (1, 'Muang Chumphon', 115071);
INSERT INTO `main_cmpo` VALUES (2, 'Thasae', 73203);
INSERT INTO `main_cmpo` VALUES (3, 'Phathui', 36750);
INSERT INTO `main_cmpo` VALUES (4, 'Langsuan', 53347);
INSERT INTO `main_cmpo` VALUES (5, 'Lamae', 22815);
INSERT INTO `main_cmpo` VALUES (6, 'Phatho', 20730);
INSERT INTO `main_cmpo` VALUES (7, 'Sawee', 60273);
INSERT INTO `main_cmpo` VALUES (8, 'Thungtago', 19688);

-- ----------------------------
-- Table structure for main_country
-- ----------------------------
DROP TABLE IF EXISTS `main_country`;
CREATE TABLE `main_country`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_country
-- ----------------------------

-- ----------------------------
-- Table structure for main_dep
-- ----------------------------
DROP TABLE IF EXISTS `main_dep`;
CREATE TABLE `main_dep`  (
  `DEPTID` int(0) NOT NULL,
  `DEPTNAME` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DepJob` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DEPTNAMEnew` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fstaus` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fstatustime` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DepJob_old` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`DEPTID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_dep
-- ----------------------------

-- ----------------------------
-- Table structure for main_group
-- ----------------------------
DROP TABLE IF EXISTS `main_group`;
CREATE TABLE `main_group`  (
  `group_id` int(0) NOT NULL,
  `group_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_group
-- ----------------------------
INSERT INTO `main_group` VALUES (1, 'พัฒนายุทธศาสตร์สาธารณสุข');
INSERT INTO `main_group` VALUES (2, 'บริหารทั่วไป');
INSERT INTO `main_group` VALUES (3, 'ทันตสาธารณสุข');
INSERT INTO `main_group` VALUES (4, 'ควบคุมโรคติดต่อ');
INSERT INTO `main_group` VALUES (5, 'คุ้มครองผู้บริโภคและเภสัชสาธารณสุข');
INSERT INTO `main_group` VALUES (6, 'บริหารทรัพยากรบุคคล');
INSERT INTO `main_group` VALUES (7, 'นิติกร');
INSERT INTO `main_group` VALUES (8, 'พัฒนาคุณภาพและสรุปแบบบริการ');
INSERT INTO `main_group` VALUES (9, 'ส่งเสริมสุขภาพ');
INSERT INTO `main_group` VALUES (10, 'อนามัยสิ่งแวดล้อมและอาชีวอนามัย');
INSERT INTO `main_group` VALUES (11, 'ประกันสุขภาพ');
INSERT INTO `main_group` VALUES (12, 'ควบคุมโรคไม่ติดต่อ สุขภาพจิตและยาเสพติด');
INSERT INTO `main_group` VALUES (13, 'แพทย์แผนไทยและการแพทย์ทางเลือก');
INSERT INTO `main_group` VALUES (14, 'สุขศึกษาประชาสัมพันธ์');
INSERT INTO `main_group` VALUES (15, 'None');

-- ----------------------------
-- Table structure for main_keyinput
-- ----------------------------
DROP TABLE IF EXISTS `main_keyinput`;
CREATE TABLE `main_keyinput`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
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
  `hospcode_id` int(0) NOT NULL,
  `kpi_id` int(0) NOT NULL,
  `response_id` int(0) NOT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_keyinput_hospcode_id_b2192709_fk_main_ssj_id`(`hospcode_id`) USING BTREE,
  INDEX `main_keyinput_kpi_id_a2171e20_fk_main_kpi_id`(`kpi_id`) USING BTREE,
  INDEX `main_keyinput_response_id_9f6dce44_fk_main_reponse_kpi_id`(`response_id`) USING BTREE,
  INDEX `main_keyinput_user_id_00f116de_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `main_keyinput_hospcode_id_b2192709_fk_main_ssj_id` FOREIGN KEY (`hospcode_id`) REFERENCES `main_ssj` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_kpi_id_a2171e20_fk_main_kpi_id` FOREIGN KEY (`kpi_id`) REFERENCES `main_kpi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_response_id_9f6dce44_fk_main_reponse_kpi_id` FOREIGN KEY (`response_id`) REFERENCES `main_reponse_kpi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_user_id_00f116de_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_keyinput
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi`;
CREATE TABLE `main_kpi`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi_code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_group` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_group_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goal` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goal_descript` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cri_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formular` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formular_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descript_a` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descript_b` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response_kpi_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kpi_code`(`kpi_code`) USING BTREE,
  INDEX `main_kpi_response_kpi_id_38bc94ea_fk_main_reponse_kpi_id`(`response_kpi_id`) USING BTREE,
  CONSTRAINT `main_kpi_response_kpi_id_38bc94ea_fk_main_reponse_kpi_id` FOREIGN KEY (`response_kpi_id`) REFERENCES `main_reponse_kpi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi_eval_prov
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_eval_prov`;
CREATE TABLE `main_kpi_eval_prov`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi_year` date NULL DEFAULT NULL,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ex` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_eval` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 344 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_eval_prov
-- ----------------------------
INSERT INTO `main_kpi_eval_prov` VALUES (1, '1900-01-20', '00062', '00100', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (2, '1900-01-20', '00062', '02400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (3, '1900-01-20', '00062', '02800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (4, '1900-01-20', '00063', '00100', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (5, '1900-01-20', '00063', '02400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (6, '1900-01-20', '00063', '02800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (7, '1900-01-20', '00064', '00100', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (8, '1900-01-20', '00064', '02400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (9, '1900-01-20', '00064', '02800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (10, '1900-01-20', '00065', '00100', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (11, '1900-01-20', '00065', '02400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (12, '1900-01-20', '00065', '02800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (13, '1900-01-20', '00066', '00100', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (14, '1900-01-20', '00066', '02400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (15, '1900-01-20', '00066', '02800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (16, '1900-01-20', '00067', '00100', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (17, '1900-01-20', '00067', '02400', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (18, '1900-01-20', '00067', '02800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (19, '1900-01-20', '00068', '00100', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (20, '1900-01-20', '00068', '02400', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (21, '1900-01-20', '00068', '02800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (22, '1900-01-20', '00062', '00700', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (23, '1900-01-20', '00062', '00800', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (24, '1900-01-20', '00062', '00900', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (25, '1900-01-20', '00062', '01101', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (26, '1900-01-20', '00062', '01102', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (27, '1900-01-20', '00062', '01103', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (28, '1900-01-20', '00062', '01104', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (29, '1900-01-20', '00062', '01105', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (30, '1900-01-20', '00062', '01201', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (31, '1900-01-20', '00062', '01202', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (32, '1900-01-20', '00062', '01203', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (33, '1900-01-20', '00062', '01204', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (34, '1900-01-20', '00062', '01300', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (35, '1900-01-20', '00062', '01400', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (36, '1900-01-20', '00062', '01600', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (37, '1900-01-20', '00062', '01601', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (38, '1900-01-20', '00062', '01800', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (39, '1900-01-20', '00062', '02100', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (40, '1900-01-20', '00062', '02700', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (41, '1900-01-20', '00062', '02901', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (42, '1900-01-20', '00062', '02902', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (43, '1900-01-20', '00062', '02903', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (44, '1900-01-20', '00062', '03200', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (45, '1900-01-20', '00062', '03300', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (46, '1900-01-20', '00062', '03400', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (47, '1900-01-20', '00062', '03501', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (48, '1900-01-20', '00062', '03502', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (49, '1900-01-20', '00062', '03600', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (50, '1900-01-20', '00062', '03800', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (51, '1900-01-20', '00062', '03900', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (52, '1900-01-20', '00062', '04002', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (53, '1900-01-20', '00062', '04300', 'pe', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (54, '1900-01-20', '00062', '04400', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (55, '1900-01-20', '00062', '04501', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (56, '1900-01-20', '00062', '04502', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (57, '1900-01-20', '00062', '04601', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (58, '1900-01-20', '00062', '04602', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (59, '1900-01-20', '00062', '04701', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (60, '1900-01-20', '00062', '04702', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (61, '1900-01-20', '00062', '04901', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (62, '1900-01-20', '00062', '04902', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (63, '1900-01-20', '00062', '04903', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (64, '1900-01-20', '00062', '05000', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (65, '1900-01-20', '00062', '05300', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (66, '1900-01-20', '00063', '00700', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (67, '1900-01-20', '00063', '00800', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (68, '1900-01-20', '00063', '00900', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (69, '1900-01-20', '00063', '01101', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (70, '1900-01-20', '00063', '01102', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (71, '1900-01-20', '00063', '01103', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (72, '1900-01-20', '00063', '01104', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (73, '1900-01-20', '00063', '01105', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (74, '1900-01-20', '00063', '01201', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (75, '1900-01-20', '00063', '01202', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (76, '1900-01-20', '00063', '01203', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (77, '1900-01-20', '00063', '01204', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (78, '1900-01-20', '00063', '01300', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (79, '1900-01-20', '00063', '01400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (80, '1900-01-20', '00063', '01600', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (81, '1900-01-20', '00063', '01601', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (82, '1900-01-20', '00063', '01800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (83, '1900-01-20', '00063', '02100', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (84, '1900-01-20', '00063', '02700', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (85, '1900-01-20', '00063', '02901', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (86, '1900-01-20', '00063', '02902', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (87, '1900-01-20', '00063', '02903', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (88, '1900-01-20', '00063', '03200', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (89, '1900-01-20', '00063', '03300', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (90, '1900-01-20', '00063', '03400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (91, '1900-01-20', '00063', '03501', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (92, '1900-01-20', '00063', '03502', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (93, '1900-01-20', '00063', '03600', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (94, '1900-01-20', '00063', '03800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (95, '1900-01-20', '00063', '03900', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (96, '1900-01-20', '00063', '04002', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (97, '1900-01-20', '00063', '04300', 'pe', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (98, '1900-01-20', '00063', '04400', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (99, '1900-01-20', '00063', '04501', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (100, '1900-01-20', '00063', '04502', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (101, '1900-01-20', '00063', '04601', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (102, '1900-01-20', '00063', '04602', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (103, '1900-01-20', '00063', '04701', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (104, '1900-01-20', '00063', '04702', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (105, '1900-01-20', '00063', '04901', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (106, '1900-01-20', '00063', '04902', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (107, '1900-01-20', '00063', '04903', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (108, '1900-01-20', '00063', '05000', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (109, '1900-01-20', '00063', '05300', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (110, '1900-01-20', '00064', '00700', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (111, '1900-01-20', '00064', '00800', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (112, '1900-01-20', '00064', '00900', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (113, '1900-01-20', '00064', '01101', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (114, '1900-01-20', '00064', '01102', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (115, '1900-01-20', '00064', '01103', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (116, '1900-01-20', '00064', '01104', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (117, '1900-01-20', '00064', '01105', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (118, '1900-01-20', '00064', '01201', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (119, '1900-01-20', '00064', '01202', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (120, '1900-01-20', '00064', '01203', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (121, '1900-01-20', '00064', '01204', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (122, '1900-01-20', '00064', '01300', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (123, '1900-01-20', '00064', '01400', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (124, '1900-01-20', '00064', '01600', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (125, '1900-01-20', '00064', '01601', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (126, '1900-01-20', '00064', '01800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (127, '1900-01-20', '00064', '02100', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (128, '1900-01-20', '00064', '02700', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (129, '1900-01-20', '00064', '02901', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (130, '1900-01-20', '00064', '02902', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (131, '1900-01-20', '00064', '02903', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (132, '1900-01-20', '00064', '03200', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (133, '1900-01-20', '00064', '03300', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (134, '1900-01-20', '00064', '03400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (135, '1900-01-20', '00064', '03501', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (136, '1900-01-20', '00064', '03502', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (137, '1900-01-20', '00064', '03600', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (138, '1900-01-20', '00064', '03800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (139, '1900-01-20', '00064', '03900', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (140, '1900-01-20', '00064', '04002', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (141, '1900-01-20', '00064', '04300', 'pe', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (142, '1900-01-20', '00064', '04400', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (143, '1900-01-20', '00064', '04501', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (144, '1900-01-20', '00064', '04502', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (145, '1900-01-20', '00064', '04601', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (146, '1900-01-20', '00064', '04602', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (147, '1900-01-20', '00064', '04701', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (148, '1900-01-20', '00064', '04702', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (149, '1900-01-20', '00064', '04901', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (150, '1900-01-20', '00064', '04902', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (151, '1900-01-20', '00064', '04903', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (152, '1900-01-20', '00064', '05000', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (153, '1900-01-20', '00064', '05300', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (154, '1900-01-20', '00065', '00700', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (155, '1900-01-20', '00065', '00800', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (156, '1900-01-20', '00065', '00900', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (157, '1900-01-20', '00065', '01101', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (158, '1900-01-20', '00065', '01102', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (159, '1900-01-20', '00065', '01103', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (160, '1900-01-20', '00065', '01104', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (161, '1900-01-20', '00065', '01105', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (162, '1900-01-20', '00065', '01201', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (163, '1900-01-20', '00065', '01202', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (164, '1900-01-20', '00065', '01203', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (165, '1900-01-20', '00065', '01204', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (166, '1900-01-20', '00065', '01300', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (167, '1900-01-20', '00065', '01400', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (168, '1900-01-20', '00065', '01600', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (169, '1900-01-20', '00065', '01601', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (170, '1900-01-20', '00065', '01800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (171, '1900-01-20', '00065', '02100', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (172, '1900-01-20', '00065', '02700', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (173, '1900-01-20', '00065', '02901', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (174, '1900-01-20', '00065', '02902', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (175, '1900-01-20', '00065', '02903', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (176, '1900-01-20', '00065', '03200', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (177, '1900-01-20', '00065', '03300', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (178, '1900-01-20', '00065', '03400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (179, '1900-01-20', '00065', '03501', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (180, '1900-01-20', '00065', '03502', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (181, '1900-01-20', '00065', '03600', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (182, '1900-01-20', '00065', '03800', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (183, '1900-01-20', '00065', '03900', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (184, '1900-01-20', '00065', '04002', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (185, '1900-01-20', '00065', '04300', 'pe', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (186, '1900-01-20', '00065', '04400', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (187, '1900-01-20', '00065', '04501', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (188, '1900-01-20', '00065', '04502', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (189, '1900-01-20', '00065', '04601', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (190, '1900-01-20', '00065', '04602', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (191, '1900-01-20', '00065', '04701', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (192, '1900-01-20', '00065', '04702', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (193, '1900-01-20', '00065', '04901', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (194, '1900-01-20', '00065', '04902', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (195, '1900-01-20', '00065', '04903', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (196, '1900-01-20', '00065', '05000', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (197, '1900-01-20', '00065', '05300', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (198, '1900-01-20', '00066', '00700', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (199, '1900-01-20', '00066', '00800', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (200, '1900-01-20', '00066', '00900', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (201, '1900-01-20', '00066', '01101', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (202, '1900-01-20', '00066', '01102', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (203, '1900-01-20', '00066', '01103', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (204, '1900-01-20', '00066', '01104', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (205, '1900-01-20', '00066', '01105', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (206, '1900-01-20', '00066', '01201', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (207, '1900-01-20', '00066', '01202', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (208, '1900-01-20', '00066', '01203', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (209, '1900-01-20', '00066', '01204', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (210, '1900-01-20', '00066', '01300', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (211, '1900-01-20', '00066', '01400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (212, '1900-01-20', '00066', '01600', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (213, '1900-01-20', '00066', '01601', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (214, '1900-01-20', '00066', '01800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (215, '1900-01-20', '00066', '02100', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (216, '1900-01-20', '00066', '02700', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (217, '1900-01-20', '00066', '02901', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (218, '1900-01-20', '00066', '02902', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (219, '1900-01-20', '00066', '02903', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (220, '1900-01-20', '00066', '03200', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (221, '1900-01-20', '00066', '03300', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (222, '1900-01-20', '00066', '03400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (223, '1900-01-20', '00066', '03501', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (224, '1900-01-20', '00066', '03502', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (225, '1900-01-20', '00066', '03600', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (226, '1900-01-20', '00066', '03800', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (227, '1900-01-20', '00066', '03900', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (228, '1900-01-20', '00066', '04002', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (229, '1900-01-20', '00066', '04300', 'pe', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (230, '1900-01-20', '00066', '04400', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (231, '1900-01-20', '00066', '04501', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (232, '1900-01-20', '00066', '04502', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (233, '1900-01-20', '00066', '04601', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (234, '1900-01-20', '00066', '04602', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (235, '1900-01-20', '00066', '04701', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (236, '1900-01-20', '00066', '04702', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (237, '1900-01-20', '00066', '04901', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (238, '1900-01-20', '00066', '04902', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (239, '1900-01-20', '00066', '04903', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (240, '1900-01-20', '00066', '05000', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (241, '1900-01-20', '00066', '05300', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (242, '1900-01-20', '00067', '00700', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (243, '1900-01-20', '00067', '00800', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (244, '1900-01-20', '00067', '00900', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (245, '1900-01-20', '00067', '01101', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (246, '1900-01-20', '00067', '01102', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (247, '1900-01-20', '00067', '01103', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (248, '1900-01-20', '00067', '01104', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (249, '1900-01-20', '00067', '01105', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (250, '1900-01-20', '00067', '01201', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (251, '1900-01-20', '00067', '01202', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (252, '1900-01-20', '00067', '01203', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (253, '1900-01-20', '00067', '01204', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (254, '1900-01-20', '00067', '01300', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (255, '1900-01-20', '00067', '01400', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (256, '1900-01-20', '00067', '01600', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (257, '1900-01-20', '00067', '01601', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (258, '1900-01-20', '00067', '01800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (259, '1900-01-20', '00067', '02100', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (260, '1900-01-20', '00067', '02700', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (261, '1900-01-20', '00067', '02901', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (262, '1900-01-20', '00067', '02902', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (263, '1900-01-20', '00067', '02903', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (264, '1900-01-20', '00067', '03200', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (265, '1900-01-20', '00067', '03300', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (266, '1900-01-20', '00067', '03400', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (267, '1900-01-20', '00067', '03501', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (268, '1900-01-20', '00067', '03502', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (269, '1900-01-20', '00067', '03600', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (270, '1900-01-20', '00067', '03800', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (271, '1900-01-20', '00067', '03900', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (272, '1900-01-20', '00067', '04002', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (273, '1900-01-20', '00067', '04300', 'pe', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (274, '1900-01-20', '00067', '04400', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (275, '1900-01-20', '00067', '04501', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (276, '1900-01-20', '00067', '04502', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (277, '1900-01-20', '00067', '04601', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (278, '1900-01-20', '00067', '04602', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (279, '1900-01-20', '00067', '04701', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (280, '1900-01-20', '00067', '04702', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (281, '1900-01-20', '00067', '04901', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (282, '1900-01-20', '00067', '04902', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (283, '1900-01-20', '00067', '04903', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (284, '1900-01-20', '00067', '05000', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (285, '1900-01-20', '00067', '05300', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (286, '1900-01-20', '00068', '00700', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (287, '1900-01-20', '00068', '00800', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (288, '1900-01-20', '00068', '00900', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (289, '1900-01-20', '00068', '01101', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (290, '1900-01-20', '00068', '01102', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (291, '1900-01-20', '00068', '01103', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (292, '1900-01-20', '00068', '01104', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (293, '1900-01-20', '00068', '01105', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (294, '1900-01-20', '00068', '01201', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (295, '1900-01-20', '00068', '01202', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (296, '1900-01-20', '00068', '01203', 'pp', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (297, '1900-01-20', '00068', '01204', 'pp', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (298, '1900-01-20', '00068', '01300', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (299, '1900-01-20', '00068', '01400', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (300, '1900-01-20', '00068', '01600', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (301, '1900-01-20', '00068', '01601', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (302, '1900-01-20', '00068', '01800', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (303, '1900-01-20', '00068', '02100', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (304, '1900-01-20', '00068', '02700', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (305, '1900-01-20', '00068', '02901', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (306, '1900-01-20', '00068', '02902', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (307, '1900-01-20', '00068', '02903', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (308, '1900-01-20', '00068', '03200', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (309, '1900-01-20', '00068', '03300', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (310, '1900-01-20', '00068', '03400', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (311, '1900-01-20', '00068', '03501', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (312, '1900-01-20', '00068', '03502', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (313, '1900-01-20', '00068', '03600', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (314, '1900-01-20', '00068', '03800', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (315, '1900-01-20', '00068', '03900', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (316, '1900-01-20', '00068', '04002', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (317, '1900-01-20', '00068', '04300', 'pe', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (318, '1900-01-20', '00068', '04400', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (319, '1900-01-20', '00068', '04501', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (320, '1900-01-20', '00068', '04502', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (321, '1900-01-20', '00068', '04601', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (322, '1900-01-20', '00068', '04602', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (323, '1900-01-20', '00068', '04701', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (324, '1900-01-20', '00068', '04702', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (325, '1900-01-20', '00068', '04901', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (326, '1900-01-20', '00068', '04902', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (327, '1900-01-20', '00068', '04903', 'ge', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (328, '1900-01-20', '00068', '05000', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (329, '1900-01-20', '00068', '05300', 'ge', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (330, '1900-01-20', '00062', '01701', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (331, '1900-01-20', '00062', '01702', 'se', 0);
INSERT INTO `main_kpi_eval_prov` VALUES (332, '1900-01-20', '00063', '01701', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (333, '1900-01-20', '00063', '01702', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (334, '1900-01-20', '00064', '01701', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (335, '1900-01-20', '00064', '01702', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (336, '1900-01-20', '00065', '01701', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (337, '1900-01-20', '00065', '01702', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (338, '1900-01-20', '00066', '01701', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (339, '1900-01-20', '00066', '01702', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (340, '1900-01-20', '00067', '01701', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (341, '1900-01-20', '00067', '01702', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (342, '1900-01-20', '00068', '01701', 'se', 1);
INSERT INTO `main_kpi_eval_prov` VALUES (343, '1900-01-20', '00068', '01702', 'se', 1);

-- ----------------------------
-- Table structure for main_kpi_eval_rh
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_eval_rh`;
CREATE TABLE `main_kpi_eval_rh`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi_year` date NULL DEFAULT NULL,
  `kpi_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ex` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_eval` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for main_kpi_hosp
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_hosp`;
CREATE TABLE `main_kpi_hosp`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 344 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_hosp
-- ----------------------------
INSERT INTO `main_kpi_hosp` VALUES (1, '00062', '00100');
INSERT INTO `main_kpi_hosp` VALUES (2, '00063', '00100');
INSERT INTO `main_kpi_hosp` VALUES (3, '00064', '00100');
INSERT INTO `main_kpi_hosp` VALUES (4, '00065', '00100');
INSERT INTO `main_kpi_hosp` VALUES (5, '00066', '00100');
INSERT INTO `main_kpi_hosp` VALUES (6, '00067', '00100');
INSERT INTO `main_kpi_hosp` VALUES (7, '00068', '00100');
INSERT INTO `main_kpi_hosp` VALUES (8, '00062', '00700');
INSERT INTO `main_kpi_hosp` VALUES (9, '00063', '00700');
INSERT INTO `main_kpi_hosp` VALUES (10, '00064', '00700');
INSERT INTO `main_kpi_hosp` VALUES (11, '00065', '00700');
INSERT INTO `main_kpi_hosp` VALUES (12, '00066', '00700');
INSERT INTO `main_kpi_hosp` VALUES (13, '00067', '00700');
INSERT INTO `main_kpi_hosp` VALUES (14, '00068', '00700');
INSERT INTO `main_kpi_hosp` VALUES (15, '00062', '00800');
INSERT INTO `main_kpi_hosp` VALUES (16, '00063', '00800');
INSERT INTO `main_kpi_hosp` VALUES (17, '00064', '00800');
INSERT INTO `main_kpi_hosp` VALUES (18, '00065', '00800');
INSERT INTO `main_kpi_hosp` VALUES (19, '00066', '00800');
INSERT INTO `main_kpi_hosp` VALUES (20, '00067', '00800');
INSERT INTO `main_kpi_hosp` VALUES (21, '00068', '00800');
INSERT INTO `main_kpi_hosp` VALUES (22, '00062', '00900');
INSERT INTO `main_kpi_hosp` VALUES (23, '00063', '00900');
INSERT INTO `main_kpi_hosp` VALUES (24, '00064', '00900');
INSERT INTO `main_kpi_hosp` VALUES (25, '00065', '00900');
INSERT INTO `main_kpi_hosp` VALUES (26, '00066', '00900');
INSERT INTO `main_kpi_hosp` VALUES (27, '00067', '00900');
INSERT INTO `main_kpi_hosp` VALUES (28, '00068', '00900');
INSERT INTO `main_kpi_hosp` VALUES (29, '00062', '01300');
INSERT INTO `main_kpi_hosp` VALUES (30, '00063', '01300');
INSERT INTO `main_kpi_hosp` VALUES (31, '00064', '01300');
INSERT INTO `main_kpi_hosp` VALUES (32, '00065', '01300');
INSERT INTO `main_kpi_hosp` VALUES (33, '00066', '01300');
INSERT INTO `main_kpi_hosp` VALUES (34, '00067', '01300');
INSERT INTO `main_kpi_hosp` VALUES (35, '00068', '01300');
INSERT INTO `main_kpi_hosp` VALUES (36, '00062', '01400');
INSERT INTO `main_kpi_hosp` VALUES (37, '00063', '01400');
INSERT INTO `main_kpi_hosp` VALUES (38, '00064', '01400');
INSERT INTO `main_kpi_hosp` VALUES (39, '00065', '01400');
INSERT INTO `main_kpi_hosp` VALUES (40, '00066', '01400');
INSERT INTO `main_kpi_hosp` VALUES (41, '00067', '01400');
INSERT INTO `main_kpi_hosp` VALUES (42, '00068', '01400');
INSERT INTO `main_kpi_hosp` VALUES (43, '00062', '01600');
INSERT INTO `main_kpi_hosp` VALUES (44, '00063', '01600');
INSERT INTO `main_kpi_hosp` VALUES (45, '00064', '01600');
INSERT INTO `main_kpi_hosp` VALUES (46, '00065', '01600');
INSERT INTO `main_kpi_hosp` VALUES (47, '00066', '01600');
INSERT INTO `main_kpi_hosp` VALUES (48, '00067', '01600');
INSERT INTO `main_kpi_hosp` VALUES (49, '00068', '01600');
INSERT INTO `main_kpi_hosp` VALUES (50, '00062', '01800');
INSERT INTO `main_kpi_hosp` VALUES (51, '00063', '01800');
INSERT INTO `main_kpi_hosp` VALUES (52, '00064', '01800');
INSERT INTO `main_kpi_hosp` VALUES (53, '00065', '01800');
INSERT INTO `main_kpi_hosp` VALUES (54, '00066', '01800');
INSERT INTO `main_kpi_hosp` VALUES (55, '00067', '01800');
INSERT INTO `main_kpi_hosp` VALUES (56, '00068', '01800');
INSERT INTO `main_kpi_hosp` VALUES (57, '00062', '02100');
INSERT INTO `main_kpi_hosp` VALUES (58, '00063', '02100');
INSERT INTO `main_kpi_hosp` VALUES (59, '00064', '02100');
INSERT INTO `main_kpi_hosp` VALUES (60, '00065', '02100');
INSERT INTO `main_kpi_hosp` VALUES (61, '00066', '02100');
INSERT INTO `main_kpi_hosp` VALUES (62, '00067', '02100');
INSERT INTO `main_kpi_hosp` VALUES (63, '00068', '02100');
INSERT INTO `main_kpi_hosp` VALUES (64, '00062', '02400');
INSERT INTO `main_kpi_hosp` VALUES (65, '00063', '02400');
INSERT INTO `main_kpi_hosp` VALUES (66, '00064', '02400');
INSERT INTO `main_kpi_hosp` VALUES (67, '00065', '02400');
INSERT INTO `main_kpi_hosp` VALUES (68, '00066', '02400');
INSERT INTO `main_kpi_hosp` VALUES (69, '00067', '02400');
INSERT INTO `main_kpi_hosp` VALUES (70, '00068', '02400');
INSERT INTO `main_kpi_hosp` VALUES (71, '00062', '03501');
INSERT INTO `main_kpi_hosp` VALUES (72, '00063', '03501');
INSERT INTO `main_kpi_hosp` VALUES (73, '00064', '03501');
INSERT INTO `main_kpi_hosp` VALUES (74, '00065', '03501');
INSERT INTO `main_kpi_hosp` VALUES (75, '00066', '03501');
INSERT INTO `main_kpi_hosp` VALUES (76, '00067', '03501');
INSERT INTO `main_kpi_hosp` VALUES (77, '00068', '03501');
INSERT INTO `main_kpi_hosp` VALUES (78, '00062', '02700');
INSERT INTO `main_kpi_hosp` VALUES (79, '00063', '02700');
INSERT INTO `main_kpi_hosp` VALUES (80, '00064', '02700');
INSERT INTO `main_kpi_hosp` VALUES (81, '00065', '02700');
INSERT INTO `main_kpi_hosp` VALUES (82, '00066', '02700');
INSERT INTO `main_kpi_hosp` VALUES (83, '00067', '02700');
INSERT INTO `main_kpi_hosp` VALUES (84, '00068', '02700');
INSERT INTO `main_kpi_hosp` VALUES (85, '00062', '02800');
INSERT INTO `main_kpi_hosp` VALUES (86, '00063', '02800');
INSERT INTO `main_kpi_hosp` VALUES (87, '00064', '02800');
INSERT INTO `main_kpi_hosp` VALUES (88, '00065', '02800');
INSERT INTO `main_kpi_hosp` VALUES (89, '00066', '02800');
INSERT INTO `main_kpi_hosp` VALUES (90, '00067', '02800');
INSERT INTO `main_kpi_hosp` VALUES (91, '00068', '02800');
INSERT INTO `main_kpi_hosp` VALUES (92, '00062', '02901');
INSERT INTO `main_kpi_hosp` VALUES (93, '00063', '02901');
INSERT INTO `main_kpi_hosp` VALUES (94, '00064', '02901');
INSERT INTO `main_kpi_hosp` VALUES (95, '00065', '02901');
INSERT INTO `main_kpi_hosp` VALUES (96, '00066', '02901');
INSERT INTO `main_kpi_hosp` VALUES (97, '00067', '02901');
INSERT INTO `main_kpi_hosp` VALUES (98, '00068', '02901');
INSERT INTO `main_kpi_hosp` VALUES (99, '00062', '02902');
INSERT INTO `main_kpi_hosp` VALUES (100, '00063', '02902');
INSERT INTO `main_kpi_hosp` VALUES (101, '00064', '02902');
INSERT INTO `main_kpi_hosp` VALUES (102, '00065', '02902');
INSERT INTO `main_kpi_hosp` VALUES (103, '00066', '02902');
INSERT INTO `main_kpi_hosp` VALUES (104, '00067', '02902');
INSERT INTO `main_kpi_hosp` VALUES (105, '00068', '02902');
INSERT INTO `main_kpi_hosp` VALUES (106, '00062', '02903');
INSERT INTO `main_kpi_hosp` VALUES (107, '00063', '02903');
INSERT INTO `main_kpi_hosp` VALUES (108, '00064', '02903');
INSERT INTO `main_kpi_hosp` VALUES (109, '00065', '02903');
INSERT INTO `main_kpi_hosp` VALUES (110, '00066', '02903');
INSERT INTO `main_kpi_hosp` VALUES (111, '00067', '02903');
INSERT INTO `main_kpi_hosp` VALUES (112, '00068', '02903');
INSERT INTO `main_kpi_hosp` VALUES (113, '00062', '03100');
INSERT INTO `main_kpi_hosp` VALUES (114, '00063', '03100');
INSERT INTO `main_kpi_hosp` VALUES (115, '00064', '03100');
INSERT INTO `main_kpi_hosp` VALUES (116, '00065', '03100');
INSERT INTO `main_kpi_hosp` VALUES (117, '00066', '03100');
INSERT INTO `main_kpi_hosp` VALUES (118, '00067', '03100');
INSERT INTO `main_kpi_hosp` VALUES (119, '00068', '03100');
INSERT INTO `main_kpi_hosp` VALUES (120, '00062', '03200');
INSERT INTO `main_kpi_hosp` VALUES (121, '00063', '03200');
INSERT INTO `main_kpi_hosp` VALUES (122, '00064', '03200');
INSERT INTO `main_kpi_hosp` VALUES (123, '00065', '03200');
INSERT INTO `main_kpi_hosp` VALUES (124, '00066', '03200');
INSERT INTO `main_kpi_hosp` VALUES (125, '00067', '03200');
INSERT INTO `main_kpi_hosp` VALUES (126, '00068', '03200');
INSERT INTO `main_kpi_hosp` VALUES (127, '00062', '03300');
INSERT INTO `main_kpi_hosp` VALUES (128, '00063', '03300');
INSERT INTO `main_kpi_hosp` VALUES (129, '00064', '03300');
INSERT INTO `main_kpi_hosp` VALUES (130, '00065', '03300');
INSERT INTO `main_kpi_hosp` VALUES (131, '00066', '03300');
INSERT INTO `main_kpi_hosp` VALUES (132, '00067', '03300');
INSERT INTO `main_kpi_hosp` VALUES (133, '00068', '03300');
INSERT INTO `main_kpi_hosp` VALUES (134, '00062', '03400');
INSERT INTO `main_kpi_hosp` VALUES (135, '00063', '03400');
INSERT INTO `main_kpi_hosp` VALUES (136, '00064', '03400');
INSERT INTO `main_kpi_hosp` VALUES (137, '00065', '03400');
INSERT INTO `main_kpi_hosp` VALUES (138, '00066', '03400');
INSERT INTO `main_kpi_hosp` VALUES (139, '00067', '03400');
INSERT INTO `main_kpi_hosp` VALUES (140, '00068', '03400');
INSERT INTO `main_kpi_hosp` VALUES (141, '00062', '03600');
INSERT INTO `main_kpi_hosp` VALUES (142, '00063', '03600');
INSERT INTO `main_kpi_hosp` VALUES (143, '00064', '03600');
INSERT INTO `main_kpi_hosp` VALUES (144, '00065', '03600');
INSERT INTO `main_kpi_hosp` VALUES (145, '00066', '03600');
INSERT INTO `main_kpi_hosp` VALUES (146, '00067', '03600');
INSERT INTO `main_kpi_hosp` VALUES (147, '00068', '03600');
INSERT INTO `main_kpi_hosp` VALUES (148, '00062', '03800');
INSERT INTO `main_kpi_hosp` VALUES (149, '00063', '03800');
INSERT INTO `main_kpi_hosp` VALUES (150, '00064', '03800');
INSERT INTO `main_kpi_hosp` VALUES (151, '00065', '03800');
INSERT INTO `main_kpi_hosp` VALUES (152, '00066', '03800');
INSERT INTO `main_kpi_hosp` VALUES (153, '00067', '03800');
INSERT INTO `main_kpi_hosp` VALUES (154, '00068', '03800');
INSERT INTO `main_kpi_hosp` VALUES (155, '00062', '03900');
INSERT INTO `main_kpi_hosp` VALUES (156, '00063', '03900');
INSERT INTO `main_kpi_hosp` VALUES (157, '00064', '03900');
INSERT INTO `main_kpi_hosp` VALUES (158, '00065', '03900');
INSERT INTO `main_kpi_hosp` VALUES (159, '00066', '03900');
INSERT INTO `main_kpi_hosp` VALUES (160, '00067', '03900');
INSERT INTO `main_kpi_hosp` VALUES (161, '00068', '03900');
INSERT INTO `main_kpi_hosp` VALUES (162, '00062', '04300');
INSERT INTO `main_kpi_hosp` VALUES (163, '00063', '04300');
INSERT INTO `main_kpi_hosp` VALUES (164, '00064', '04300');
INSERT INTO `main_kpi_hosp` VALUES (165, '00065', '04300');
INSERT INTO `main_kpi_hosp` VALUES (166, '00066', '04300');
INSERT INTO `main_kpi_hosp` VALUES (167, '00067', '04300');
INSERT INTO `main_kpi_hosp` VALUES (168, '00068', '04300');
INSERT INTO `main_kpi_hosp` VALUES (169, '00062', '04400');
INSERT INTO `main_kpi_hosp` VALUES (170, '00063', '04400');
INSERT INTO `main_kpi_hosp` VALUES (171, '00064', '04400');
INSERT INTO `main_kpi_hosp` VALUES (172, '00065', '04400');
INSERT INTO `main_kpi_hosp` VALUES (173, '00066', '04400');
INSERT INTO `main_kpi_hosp` VALUES (174, '00067', '04400');
INSERT INTO `main_kpi_hosp` VALUES (175, '00068', '04400');
INSERT INTO `main_kpi_hosp` VALUES (176, '00062', '04601');
INSERT INTO `main_kpi_hosp` VALUES (177, '00063', '04601');
INSERT INTO `main_kpi_hosp` VALUES (178, '00064', '04601');
INSERT INTO `main_kpi_hosp` VALUES (179, '00065', '04601');
INSERT INTO `main_kpi_hosp` VALUES (180, '00066', '04601');
INSERT INTO `main_kpi_hosp` VALUES (181, '00067', '04601');
INSERT INTO `main_kpi_hosp` VALUES (182, '00068', '04601');
INSERT INTO `main_kpi_hosp` VALUES (183, '00062', '04602');
INSERT INTO `main_kpi_hosp` VALUES (184, '00063', '04602');
INSERT INTO `main_kpi_hosp` VALUES (185, '00064', '04602');
INSERT INTO `main_kpi_hosp` VALUES (186, '00065', '04602');
INSERT INTO `main_kpi_hosp` VALUES (187, '00066', '04602');
INSERT INTO `main_kpi_hosp` VALUES (188, '00067', '04602');
INSERT INTO `main_kpi_hosp` VALUES (189, '00068', '04602');
INSERT INTO `main_kpi_hosp` VALUES (190, '00062', '05000');
INSERT INTO `main_kpi_hosp` VALUES (191, '00063', '05000');
INSERT INTO `main_kpi_hosp` VALUES (192, '00064', '05000');
INSERT INTO `main_kpi_hosp` VALUES (193, '00065', '05000');
INSERT INTO `main_kpi_hosp` VALUES (194, '00066', '05000');
INSERT INTO `main_kpi_hosp` VALUES (195, '00067', '05000');
INSERT INTO `main_kpi_hosp` VALUES (196, '00068', '05000');
INSERT INTO `main_kpi_hosp` VALUES (197, '00062', '05300');
INSERT INTO `main_kpi_hosp` VALUES (198, '00063', '05300');
INSERT INTO `main_kpi_hosp` VALUES (199, '00064', '05300');
INSERT INTO `main_kpi_hosp` VALUES (200, '00065', '05300');
INSERT INTO `main_kpi_hosp` VALUES (201, '00066', '05300');
INSERT INTO `main_kpi_hosp` VALUES (202, '00067', '05300');
INSERT INTO `main_kpi_hosp` VALUES (203, '00068', '05300');
INSERT INTO `main_kpi_hosp` VALUES (204, '00062', '01101');
INSERT INTO `main_kpi_hosp` VALUES (205, '00063', '01101');
INSERT INTO `main_kpi_hosp` VALUES (206, '00064', '01101');
INSERT INTO `main_kpi_hosp` VALUES (207, '00065', '01101');
INSERT INTO `main_kpi_hosp` VALUES (208, '00066', '01101');
INSERT INTO `main_kpi_hosp` VALUES (209, '00067', '01101');
INSERT INTO `main_kpi_hosp` VALUES (210, '00068', '01101');
INSERT INTO `main_kpi_hosp` VALUES (211, '00062', '01102');
INSERT INTO `main_kpi_hosp` VALUES (212, '00063', '01102');
INSERT INTO `main_kpi_hosp` VALUES (213, '00064', '01102');
INSERT INTO `main_kpi_hosp` VALUES (214, '00065', '01102');
INSERT INTO `main_kpi_hosp` VALUES (215, '00066', '01102');
INSERT INTO `main_kpi_hosp` VALUES (216, '00067', '01102');
INSERT INTO `main_kpi_hosp` VALUES (217, '00068', '01102');
INSERT INTO `main_kpi_hosp` VALUES (218, '00062', '01201');
INSERT INTO `main_kpi_hosp` VALUES (219, '00063', '01201');
INSERT INTO `main_kpi_hosp` VALUES (220, '00064', '01201');
INSERT INTO `main_kpi_hosp` VALUES (221, '00065', '01201');
INSERT INTO `main_kpi_hosp` VALUES (222, '00066', '01201');
INSERT INTO `main_kpi_hosp` VALUES (223, '00067', '01201');
INSERT INTO `main_kpi_hosp` VALUES (224, '00068', '01201');
INSERT INTO `main_kpi_hosp` VALUES (225, '00062', '01202');
INSERT INTO `main_kpi_hosp` VALUES (226, '00063', '01202');
INSERT INTO `main_kpi_hosp` VALUES (227, '00064', '01202');
INSERT INTO `main_kpi_hosp` VALUES (228, '00065', '01202');
INSERT INTO `main_kpi_hosp` VALUES (229, '00066', '01202');
INSERT INTO `main_kpi_hosp` VALUES (230, '00067', '01202');
INSERT INTO `main_kpi_hosp` VALUES (231, '00068', '01202');
INSERT INTO `main_kpi_hosp` VALUES (232, '00062', '01203');
INSERT INTO `main_kpi_hosp` VALUES (233, '00063', '01203');
INSERT INTO `main_kpi_hosp` VALUES (234, '00064', '01203');
INSERT INTO `main_kpi_hosp` VALUES (235, '00065', '01203');
INSERT INTO `main_kpi_hosp` VALUES (236, '00066', '01203');
INSERT INTO `main_kpi_hosp` VALUES (237, '00067', '01203');
INSERT INTO `main_kpi_hosp` VALUES (238, '00068', '01203');
INSERT INTO `main_kpi_hosp` VALUES (239, '00062', '01204');
INSERT INTO `main_kpi_hosp` VALUES (240, '00063', '01204');
INSERT INTO `main_kpi_hosp` VALUES (241, '00064', '01204');
INSERT INTO `main_kpi_hosp` VALUES (242, '00065', '01204');
INSERT INTO `main_kpi_hosp` VALUES (243, '00066', '01204');
INSERT INTO `main_kpi_hosp` VALUES (244, '00067', '01204');
INSERT INTO `main_kpi_hosp` VALUES (245, '00068', '01204');
INSERT INTO `main_kpi_hosp` VALUES (246, '00062', '01701');
INSERT INTO `main_kpi_hosp` VALUES (247, '00063', '01701');
INSERT INTO `main_kpi_hosp` VALUES (248, '00064', '01701');
INSERT INTO `main_kpi_hosp` VALUES (249, '00065', '01701');
INSERT INTO `main_kpi_hosp` VALUES (250, '00066', '01701');
INSERT INTO `main_kpi_hosp` VALUES (251, '00067', '01701');
INSERT INTO `main_kpi_hosp` VALUES (252, '00068', '01701');
INSERT INTO `main_kpi_hosp` VALUES (253, '00062', '01702');
INSERT INTO `main_kpi_hosp` VALUES (254, '00063', '01702');
INSERT INTO `main_kpi_hosp` VALUES (255, '00064', '01702');
INSERT INTO `main_kpi_hosp` VALUES (256, '00065', '01702');
INSERT INTO `main_kpi_hosp` VALUES (257, '00066', '01702');
INSERT INTO `main_kpi_hosp` VALUES (258, '00067', '01702');
INSERT INTO `main_kpi_hosp` VALUES (259, '00068', '01702');
INSERT INTO `main_kpi_hosp` VALUES (260, '00062', '04002');
INSERT INTO `main_kpi_hosp` VALUES (261, '00063', '04002');
INSERT INTO `main_kpi_hosp` VALUES (262, '00064', '04002');
INSERT INTO `main_kpi_hosp` VALUES (263, '00065', '04002');
INSERT INTO `main_kpi_hosp` VALUES (264, '00066', '04002');
INSERT INTO `main_kpi_hosp` VALUES (265, '00067', '04002');
INSERT INTO `main_kpi_hosp` VALUES (266, '00068', '04002');
INSERT INTO `main_kpi_hosp` VALUES (267, '00062', '01103');
INSERT INTO `main_kpi_hosp` VALUES (268, '00063', '01103');
INSERT INTO `main_kpi_hosp` VALUES (269, '00064', '01103');
INSERT INTO `main_kpi_hosp` VALUES (270, '00065', '01103');
INSERT INTO `main_kpi_hosp` VALUES (271, '00066', '01103');
INSERT INTO `main_kpi_hosp` VALUES (272, '00067', '01103');
INSERT INTO `main_kpi_hosp` VALUES (273, '00068', '01103');
INSERT INTO `main_kpi_hosp` VALUES (274, '00062', '01104');
INSERT INTO `main_kpi_hosp` VALUES (275, '00063', '01104');
INSERT INTO `main_kpi_hosp` VALUES (276, '00064', '01104');
INSERT INTO `main_kpi_hosp` VALUES (277, '00065', '01104');
INSERT INTO `main_kpi_hosp` VALUES (278, '00066', '01104');
INSERT INTO `main_kpi_hosp` VALUES (279, '00067', '01104');
INSERT INTO `main_kpi_hosp` VALUES (280, '00068', '01104');
INSERT INTO `main_kpi_hosp` VALUES (281, '00062', '01105');
INSERT INTO `main_kpi_hosp` VALUES (282, '00063', '01105');
INSERT INTO `main_kpi_hosp` VALUES (283, '00064', '01105');
INSERT INTO `main_kpi_hosp` VALUES (284, '00065', '01105');
INSERT INTO `main_kpi_hosp` VALUES (285, '00066', '01105');
INSERT INTO `main_kpi_hosp` VALUES (286, '00067', '01105');
INSERT INTO `main_kpi_hosp` VALUES (287, '00068', '01105');
INSERT INTO `main_kpi_hosp` VALUES (288, '00062', '03502');
INSERT INTO `main_kpi_hosp` VALUES (289, '00063', '03502');
INSERT INTO `main_kpi_hosp` VALUES (290, '00064', '03502');
INSERT INTO `main_kpi_hosp` VALUES (291, '00065', '03502');
INSERT INTO `main_kpi_hosp` VALUES (292, '00066', '03502');
INSERT INTO `main_kpi_hosp` VALUES (293, '00067', '03502');
INSERT INTO `main_kpi_hosp` VALUES (294, '00068', '03502');
INSERT INTO `main_kpi_hosp` VALUES (295, '00062', '04501');
INSERT INTO `main_kpi_hosp` VALUES (296, '00063', '04501');
INSERT INTO `main_kpi_hosp` VALUES (297, '00064', '04501');
INSERT INTO `main_kpi_hosp` VALUES (298, '00065', '04501');
INSERT INTO `main_kpi_hosp` VALUES (299, '00066', '04501');
INSERT INTO `main_kpi_hosp` VALUES (300, '00067', '04501');
INSERT INTO `main_kpi_hosp` VALUES (301, '00068', '04501');
INSERT INTO `main_kpi_hosp` VALUES (302, '00062', '04502');
INSERT INTO `main_kpi_hosp` VALUES (303, '00063', '04502');
INSERT INTO `main_kpi_hosp` VALUES (304, '00064', '04502');
INSERT INTO `main_kpi_hosp` VALUES (305, '00065', '04502');
INSERT INTO `main_kpi_hosp` VALUES (306, '00066', '04502');
INSERT INTO `main_kpi_hosp` VALUES (307, '00067', '04502');
INSERT INTO `main_kpi_hosp` VALUES (308, '00068', '04502');
INSERT INTO `main_kpi_hosp` VALUES (309, '00062', '04701');
INSERT INTO `main_kpi_hosp` VALUES (310, '00063', '04701');
INSERT INTO `main_kpi_hosp` VALUES (311, '00064', '04701');
INSERT INTO `main_kpi_hosp` VALUES (312, '00065', '04701');
INSERT INTO `main_kpi_hosp` VALUES (313, '00066', '04701');
INSERT INTO `main_kpi_hosp` VALUES (314, '00067', '04701');
INSERT INTO `main_kpi_hosp` VALUES (315, '00068', '04701');
INSERT INTO `main_kpi_hosp` VALUES (316, '00062', '04702');
INSERT INTO `main_kpi_hosp` VALUES (317, '00063', '04702');
INSERT INTO `main_kpi_hosp` VALUES (318, '00064', '04702');
INSERT INTO `main_kpi_hosp` VALUES (319, '00065', '04702');
INSERT INTO `main_kpi_hosp` VALUES (320, '00066', '04702');
INSERT INTO `main_kpi_hosp` VALUES (321, '00067', '04702');
INSERT INTO `main_kpi_hosp` VALUES (322, '00068', '04702');
INSERT INTO `main_kpi_hosp` VALUES (323, '00062', '04901');
INSERT INTO `main_kpi_hosp` VALUES (324, '00063', '04901');
INSERT INTO `main_kpi_hosp` VALUES (325, '00064', '04901');
INSERT INTO `main_kpi_hosp` VALUES (326, '00065', '04901');
INSERT INTO `main_kpi_hosp` VALUES (327, '00066', '04901');
INSERT INTO `main_kpi_hosp` VALUES (328, '00067', '04901');
INSERT INTO `main_kpi_hosp` VALUES (329, '00068', '04901');
INSERT INTO `main_kpi_hosp` VALUES (330, '00062', '04902');
INSERT INTO `main_kpi_hosp` VALUES (331, '00063', '04902');
INSERT INTO `main_kpi_hosp` VALUES (332, '00064', '04902');
INSERT INTO `main_kpi_hosp` VALUES (333, '00065', '04902');
INSERT INTO `main_kpi_hosp` VALUES (334, '00066', '04902');
INSERT INTO `main_kpi_hosp` VALUES (335, '00067', '04902');
INSERT INTO `main_kpi_hosp` VALUES (336, '00068', '04902');
INSERT INTO `main_kpi_hosp` VALUES (337, '00062', '04903');
INSERT INTO `main_kpi_hosp` VALUES (338, '00063', '04903');
INSERT INTO `main_kpi_hosp` VALUES (339, '00064', '04903');
INSERT INTO `main_kpi_hosp` VALUES (340, '00065', '04903');
INSERT INTO `main_kpi_hosp` VALUES (341, '00066', '04903');
INSERT INTO `main_kpi_hosp` VALUES (342, '00067', '04903');
INSERT INTO `main_kpi_hosp` VALUES (343, '00068', '04903');

-- ----------------------------
-- Table structure for main_kpi_index
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_index`;
CREATE TABLE `main_kpi_index`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ex` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goal` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cri_type` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hdc` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `respon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `etc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `kpi_year` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `success_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_kpi_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `static_target` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kpi_formular` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `kpi_formular_script` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `a` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `b` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `c` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `d` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `e` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `f` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pa` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `h_kpi` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `active` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `target` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_index
-- ----------------------------
INSERT INTO `main_kpi_index` VALUES (1, '00100', 'อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', 'pp', '17', '<', 'บันทึก', '9', NULL, '2020', '2', NULL, '3', NULL, '(A/B)*100000', 'b', 'A = จำนวนมารดาตายระหว่างตั้งครรภ์ คลอด และหลังคลอดภายใน 42 วัน ทุกสาเหตุ ยกเว้นอุบัติเหตุ ในช่วงเวลาที่กำหนด (คน)', 'B = จำนวนการเกิดมีชีพทั้งหมดในช่วงเวลาเดียวกัน (คน)', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ค่าเป้าหมาย ไม่เกิน 17 ต่อแสนการเกิดประชากร');
INSERT INTO `main_kpi_index` VALUES (2, '00200', 'ระดับความสําเร็จของพัฒนาการเด็กตามเกณฑ์มาตรฐาน', 'pp', NULL, NULL, 'Y', '15', NULL, '2020', '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (3, '00300', 'ร้อยละของเด็กอายุ 0-5 ปี สูงดีสมส่วน และส่วนสูงเฉลี่ยที่อายุ 5 ปี', 'pp', NULL, NULL, 'Y', '15', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=pformated/format1.php&cat_id=46522b5bd1e06d24a5bd81917257a93c&id=67e41dbb1ce5d844d49f6b7b10e30d01', '2020', '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (4, '00400', 'เด็กไทยมีระดับสติปัญญาเฉลี่ยไม่ต่ำกว่า 100', 'pp', NULL, NULL, NULL, '15', NULL, '2020', '1', NULL, '1', 'Y', '(A/B)*100', 'a', '7', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (5, '00500', 'ร้อยละของเด็กวัยเรียน สูงดีสมส่วน', 'pp', NULL, NULL, 'Y', '15', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=pformated/format1.php&cat_id=46522b5bd1e06d24a5bd81917257a93c&id=e28682b2718e6cc82b8dbb3e00f2e28e', '2020', '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (6, '00700', 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', 'pp', '70', '>=', 'บันทึก', '9', NULL, '2020', '1', NULL, '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชน ผ่านเกณฑ์ (ตำบล)', 'B = จำนวนตำบลทั้งหมดในประเทศไทย (ตำบล)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 70');
INSERT INTO `main_kpi_index` VALUES (7, '00800', 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', 'ge', '60', '>=', 'บันทึก', '8', NULL, '2020', '1', NULL, '2', 'Y', '(A/B)*100', NULL, 'A = จำนวนอำเภอที่ผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิต (แห่ง)', 'B = จำนวนอำเภอ (แห่ง)', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 60');
INSERT INTO `main_kpi_index` VALUES (8, '00900', 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', 'pp', '80', '>=', 'บันทึก', '4', NULL, '2020', '1', NULL, '2', 'Y', '(A/B)*100', NULL, 'A = สำนักงานสาธารณสุขจังหวัดที่ดำเนินการได้ทั้ง 5 ขั้นตอน (จังหวัด)', 'B = สำนักงานสาธารณสุขจังหวัด (จังหวัด)', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 90');
INSERT INTO `main_kpi_index` VALUES (9, '01000', 'จำนวนครอบครัวไทยมีความรอบรู้สุขภาพเรื่องกิจกรรมทางกาย', 'pp', NULL, NULL, 'Y', '15', NULL, '2020', '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (10, '01100', 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', 'ge', '70', '>=', NULL, '15', NULL, '2020', '1', NULL, '1', 'Y', '(A/B)*100', 'a', 'A = จำนวนอำเภอที่ผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิต (แห่ง)', 'B = จำนวนอำเภอทั้งหมด (แห่ง)', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (11, '01200', 'ระดับความสำเร็จในการจัดการภาวะฉุกเฉินทางสาธารณสุขของหน่วยงานระดับจังหวัด', 'se', '50', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จำนวนจังหวัด ที่ดำเนินการครบ 5 ขั้นตอน', 'B = จำนวนจังหวัดทั้งหมด 76 จังหวัด', NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (12, '01300', 'ร้อยละของคลินิกหมอครอบครัวที่เปิดดำเนินการในพื้นที่ (Primary Care Cluster)', 'se', '18', '>=', 'บันทึก', '8', NULL, '2020', '1', NULL, '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนทีมของคลินิกหมอครอบครัวที่ รพศ./รพท/รพช./รพ.สต ดำเนินการให้บริการ การแพทย์ปฐมภูมิ เป้าหมายรวม 1,170 ทีม (จำนวนทีมที่เปิดดำเนินการใหม่ในปี 2562 จำนวน = 364 ทีม เป็นข้อมูลสะสมเดิม จากปี 2561 จำนวน 806 ทีม) (ทีม)', 'B = จำนวนทีม บริการการแพทย์ปฐมภูมิเป้าหมาย (6,500 ทีม) (ทีม)', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 18');
INSERT INTO `main_kpi_index` VALUES (13, '01400', 'ร้อยละของจังหวัดมีการขับเคลื่อนมาตรการยุติการใช้สารเคมีทางการเกษตรที่มีอันตรายสูงร่วมกับหน่วยงานที่เกี่ยวข้องในระดับส่วนกลาง และภูมิภาค อย่างน้อยจังหวัดละ 1 เรื่อง', 'pp', '100', '=', 'บันทึก', '15', NULL, '2020', '1', NULL, '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนจังหวัดมีการขับเคลื่อนมาตรการยุติการใช้สารเคมีทางการเกษตรที่มีอันตรายสูง อย่างน้อย 1 เรื่อง', 'B = จำนวนจังหวัดทั้งหมด (76 จังหวัด (ไม่รวม กทม.))', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 60');
INSERT INTO `main_kpi_index` VALUES (14, '01500', 'ร้อยละของจังหวัดมีระบบรับแจ้งข่าว การใช้/ป่วยจากการสัมผัส สารเคมีทางการเกษตร 3 ชนิด (พาราควอต คลอร์ไพริฟอส ไกลโฟเสต) โดยประชาชน/อสม. ผ่าน Mobile Application สู่หน่วยบริการ (คลินิกสารเคมีเกษตร/คลินิกโรคจากการทำงาน)', 'pp', '100', '=', NULL, '15', NULL, '2020', '1', NULL, '1', 'Y', '(A/B)*100', NULL, 'A = จำนวนจังหวัดที่มีข้อมูลการสำรวจการใช้และปริมาณสารเคมีทางการเกษตร และการใช้สารหรือวิธีการอื่นที่ปลอดภัยไม่ใช่สารเคมี', 'B = จำนวนจังหวัดทั้งหมด (76 จังหวัด ไม่รวม กทม.)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (15, '01600', 'ร้อยละของจังหวัดมีการจัดทำฐานข้อมูลอาชีวอนามัยและสิ่งแวดล้อม (Occupational and Environmental Health Profile : OEHP) ด้านเกษตรกรรม และมีการรายงานการเจ็บป่วยหรือเสียชีวิตจากสารเคมีทางการเกษตร (รหัสโรค T60)', 'pp', '100', '=', 'บันทึก', '4', NULL, '2020', NULL, NULL, '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนจังหวัดที่มีการจัดทำฐานข้อมูลอาชีวอนามัยและสิ่งแวดล้อม ด้านเกษตรกรรม และมีการรายงานการเจ็บป่วยหรือเสียชีวิตจากสารเคมีทางการเกษตร (รหัสโรค T60)', 'B = จำนวนจังหวัดทั้งหมด (76 จังหวัด (ไม่รวม กทม.))', NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 'มากกว่าหรือเท่ากับร้อยละ 85 ขึ้นไป');
INSERT INTO `main_kpi_index` VALUES (16, '01700', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบได้มาตรฐานตามเกณฑ์ที่กำหนด', 'pp', '80', '>=', NULL, '1', NULL, '2020', NULL, NULL, '2', 'Y', '(A/B)*100', 'b', 'A = จำนวนผลิตภัณฑ์สุขภาพกลุ่มเสี่ยง ได้แก่ ผักและผลไม้สด, ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมายที่พบสารที่มีฤทธิ์ในการลดน้ำหนักหรือเสริมสร้างสมรรถภาพทางเพศเครื่องสำอาง ที่ได้รับการตรวจสอบทางห้องปฏิบัติการมีความปลอดภัย และ จำนวนผลิตภัณฑ์สมุนไพรที่ปลอดภัยที่ตรวจพบจากชุดทดสอบอย่างง่ายและการตรวจสอบทางห้องปฏิบัติการ (กรณีตรวจยืนยันทางห้องปฏิบัติการเมื่อพบผลการตรวจสอบด้วยชุดทดสอบอย่างง่ายตกมาตรฐาน)', 'B = จำนวนผลิตภัณฑ์สุขภาพกลุ่มเสี่ยง ได้แก่ ผักและผลไม้สด, ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมายที่พบสารที่มีฤทธิ์ในการลดน้ำหนักหรือเสริมสร้างสมรรถภาพทางเพศ เครื่องสำอาง ที่ได้รับผลวิเคราะห์จากห้องปฏิบัติการทั้งหมด และจำนวนผลิตภัณฑ์สมุนไพรที่มีผลตรวจวิเคราะห์จากชุดทดสอบอย่างง่ายทั้งหมด', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (17, '01800', 'ร้อยละของโรงพยาบาลที่มีระบบจัดการการดื้อยาต้านจุลชีพระดับ INTERMEDIATE (AMR)', 'se', '20', '>=', 'บันทึก', '5', NULL, '2020', '1', NULL, '2', 'Y', '(A/B)*100', 'b', 'A = จำนวนโรงพยาบาลศูนย์ โรงพยาบาลทั่วไปที่มีการจัดการ AMR ระดับ intermediate (แห่ง)', 'B = จำนวนโรงพยาบาลศูนย์ โรงพยาบาลทั่วไปทั้งหมด (แห่ง)', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับ ร้อยละ 20 ของ รพศ./รพท. มีระบบการจัดการ AMR อย่างบูรณาการ (intermediate)');
INSERT INTO `main_kpi_index` VALUES (18, '01810', '\"ร้อยละของโรงพยาบาลที่พัฒนาอนามัยสิ่งแวดล้อมได้ตามเกณฑ์ GREEN&CLEAN Hospital\r\n ระดับดีมากขึ้นไป\r\nตัวชี้วัดย่อย\"', 'pp', '75', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จำนวนโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนินกิจกรรม GREEN & CLEAN ระดับดีมาก', 'B = จำนวนโรงพยาบาลสังกัดกระทรวงสาธารณสุขทั้งหมด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (19, '01820', '\"ร้อยละของโรงพยาบาลที่พัฒนาอนามัยสิ่งแวดล้อมได้ตามเกณฑ์ GREEN&CLEAN Hospital\r\n ระดับดีมาก Plus\r\nตัวชี้วัดย่อย\"', 'pp', '30', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จำนวนโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนินกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมาก Plus', 'B = จำนวนโรงพยาบาลสังกัดกระทรวงสาธารณสุขทั้งหมด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (21, '01900', 'ร้อยละของจังหวัดมีระบบจัดการปัจจัยเสี่ยงด้านสิ่งแวดล้อมที่ส่งผลกระทบต่อสุขภาพ ระดับดี', 'se', '80', '>=', 'HDC', '8', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=formated/referout_kpi.php&cat_id=9d8c311d6336373d40437c4423508cad&id=38e40477e601acfba24653ceb9021cd4', '2020', '2', NULL, '2', NULL, '(A/B)*100', 'a', 'A = จำนวนจังหวัดมีระบบจัดการปัจจัยเสี่ยงด้านสิ่งแวดล้อมที่ส่งผลกระทบต่อสุขภาพผ่านเกณฑ์ระดับดี', 'B = จำนวนจังหวัดทั้งหมด', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (22, '02000', 'ร้อยละของหน่วยบริการปฐมภูมิและเครือข่ายหน่วยบริการปฐมภูมิที่เปิดดำเนินการในพื้นที่', 'se', '25', '>=', NULL, '15', NULL, '2020', '2', NULL, '2', NULL, '(A/B)*100', 'a', 'A = จำนวนหน่วยบริการปฐมภูมิและเครือข่ายหน่วยบริการปฐมภูมิ ที่ รพศ./รพท/รพช./รพ.สต ดำเนินการให้บริการสุขภาพปฐมภูมิ', 'B = จำนวนหน่วยบริการปฐมภูมิและเครือข่ายหน่วยบริการปฐมภูมิเป้าหมาย หรือแผนการจัดตั้งหน่วยบริการสุขภาพปฐมภูมิ (กำลังดำเนินการจัดทำแผนการจัดตั้งเพื่อสอดคล้องกับพรบ.ระบบสุขภาพปฐมภูมิ พ.ศ.2562)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (23, '02100', 'ร้อยละของประชาชนในอำเภอที่เป็นที่ตั้งของ รพศ./รพท. มีแพทย์เวชศาสตร์ครอบครัวหรือแพทย์ที่ผ่านการอบรมและคณะผู้ให้บริการสุขภาพปฐมภูมิดูแลด้วยหลักเวชศาสตร์ครอบครัว', 'se', '40', '>=', 'บันทึก', '15', NULL, '2020', '1', NULL, '2', NULL, '(A/B)*100', 'c', 'A = จำนวนประชาชนในอำเภอที่เป็นที่ตั้งของ รพศ./รพท. ที่จัดตั้งหน่วยบริการปฐมภูมิ และเครือข่ายหน่วยบริการปฐมภูมิ', 'B = จำนวนประชากรทั้งหมดในอำเภอที่เป็นที่ตั้งของ รพศ./รพท.(แหล่งข้อมูลประชากร ทะเบียนราษฎร์ ณ 31 ธค. 2562) https://www.dopa.go.th', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 40');
INSERT INTO `main_kpi_index` VALUES (24, '02200', 'ร้อยละของผู้ป่วยกลุ่มเป้าหมายที่ได้รับการดูแลจาก อสม. หมอประจำบ้าน มีคุณภาพชีวิตที่ดี', 'se', '70', '>=', 'HDC', '13', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=pformated/format1.php&cat_id=30bc6364fc06a33a7802e16bc596ac3b&id=4bd243de1e007bf9c7aa7cc799a1a01c', '2020', '1', '04000', '2', 'Y', '(A/B)*100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (25, '02300', 'จำนวน อสม. ที่ได้รับการพัฒนาศักยภาพเป็น อสม. หมอประจำบ้าน', 'se', '63', '>=', 'HDC', '15', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=pformated/formatg.php&cat_id=ea11bc4bbf333b78e6f53a26f7ab6c89&id=706b605192b49d385ba044350af9c46a', '2020', '1', NULL, '4', 'Y', 'A', NULL, 'A=จำนวน อสม.ที่ได้รับการพัฒนาศักยภาพเป็น อสม.หมอประจำบ้าน', NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (26, '02400', 'อัตราการฆ่าตัวตายสำเร็จ', 'se', '6.3', '<', 'บันทึก', '1', NULL, '2020', '2', NULL, '3', 'Y', '(A/B)*100000', 'a', '59', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ค่าเป้าหมาย น้อยกว่าหรือเท่ากับ 6.3 ต่อแสนคน');
INSERT INTO `main_kpi_index` VALUES (27, '02440', 'ร้อยละผู้ป่วยโรคหลอดเลือดสมองตีบ/อุดตันระยะเฉียบพลัน (I63) ที่มีอาการไม่เกิน 4.5 ชั่วโมงได้รับการรักษาด้วยยาละลายลิ่มเลือดทางหลอดเลือดดำภายใน 60 นาที (door to needle time)', 'se', '60', '>=', NULL, '15', NULL, '2020', NULL, NULL, '1', NULL, '(A/B)*100', NULL, 'A = จำนวนผู้ป่วยโรคหลอดเลือดสมองตีบ/อุดตันระยะเฉียบพลัน (I63) ที่มีอาการไม่เกิน 4.5 ชั่วโมงได้รับการรักษาด้วยยาละลายลิ่มเลือดทางหลอดเลือดดำภายใน 60 นาที นับตั้งแต่ผู้ป่วยมาถึงโรงพยาบาล (OPD/ER)', 'B = จำนวนผู้ป่วยโรคหลอดเลือดสมองตีบ/อุดตันระยะเฉียบพลัน (I63) ที่มีอาการไม่เกิน 4.5 ชั่วโมงได้รับการรักษาด้วยยาละลายลิ่มเลือดทางหลอดเลือดดำในช่วงเวลาเดียวกัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (28, '02450', 'ร้อยละผู้ป่วยโรคหลอดเลือดสมอง (I60-I69) ที่มีอาการไม่เกิน 72 ชั่วโมงได้รับการรักษาใน Stroke Unit', 'se', '50', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'a', 'A = จำนวนผู้ป่วยวัณโรคปอดรายใหม่ ที่ขึ้นทะเบียน ในไตรมาสที่ 1 ของปีงบประมาณ 2563 (เดือนตุลาคม – ธันวาคม 2562) โดยมีผลการรักษาหาย (Cured) รวมกับรักษาครบ (Completed) โดยครบรอบรายงานผลการรักษาวันที่ 30 กันยายน 2563', 'B = จำนวนผู้ป่วยวัณโรคปอดรายใหม่ ที่ขึ้นทะเบียน ในไตรมาสที่ 1 ของปีงบประมาณ 2563 (เดือนตุลาคม – ธันวาคม 2562)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (29, '02500', 'อัตราความสำเร็จการรักษาผู้ป่วยวัณโรคปอดรายใหม่', 'se', '88', '>=', 'HDC', '4', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=pformated/format1.php&cat_id=144fdf97a756b3f82dce197287e06316&id=00366a85bd3c2b6932a228df29137252', '2020', '2', NULL, '1', 'Y', '(A/B)*100', 'a', 'A = จำนวนผู้ป่วยวัณโรคปอดรายใหม่ ที่ขึ้นทะเบียน ในไตรมาสที่ 1 ของปีงบประมาณ 2563 (เดือนตุลาคม – ธันวาคม 2562) โดยมีผลการรักษาหาย (Cured) รวมกับรักษาครบ (Completed) โดยครบรอบรายงานผลการรักษาวันที่ 30 กันยายน 2563', 'B = จำนวนผู้ป่วยวัณโรคปอดรายใหม่ ที่ขึ้นทะเบียน ในไตรมาสที่ 1 ของปีงบประมาณ 2563 (เดือนตุลาคม – ธันวาคม 2562)', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (30, '02600', 'ร้อยละของโรงพยาบาลที่มีทีม Refracture Prevention', 'se', NULL, NULL, 'Y', '15', NULL, '2020', '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (31, '02610', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้น 2', 'se', '50', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'b', 'A = จำนวนโรงพยาบาลผ่าน RDU ขั้นที่ 2', 'B = จำนวนโรงพยาบาลทั้งหมด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (32, '02620', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้น 3', 'se', '20', '>=', NULL, '1', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จำนวนโรงพยาบาลที่ผ่าน RDU ขั้น 3', 'B = จำนวนโรงพยาบาลทั้งหมด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (33, '02700', 'ร้อยละการติดเชื้อดื้อยาในกระแสเลือดลดลง', 'se', '7.5', '>=', 'บันทึก', '1', NULL, '2020', '1', NULL, '2', NULL, '(B-A)*100/A', 'b', 'A = อัตราการติดเชื้อดื้อยาในกระแสเลือด รอบปีปฏิทิน 61', 'B = อัตราการติดเชื้อดื้อยาในกระแสเลือด รอบปีปัจจุบัน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 50');
INSERT INTO `main_kpi_index` VALUES (34, '02800', 'อัตราตายของผู้ป่วยโรคหลอดเลือดหัวใจ', 'se', '50', '>=', 'บันทึก', '15', NULL, '2020', '2', NULL, '3', 'Y', '(A/B)*100000', NULL, 'A = จำนวนประชากรที่ป่วยตายจากโรคหลอดเลือดหัวใจ (รหัส ICD-10 =I20-I25) (คน)', 'B = จำนวนประชากรกลางปีในช่วงเวลาเดียวกัน (คน)', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, 'ค่าเป้าหมายน้อยกว่าหรือเท่ากับ 26 ต่อแสนประชากร');
INSERT INTO `main_kpi_index` VALUES (35, '02900', '\"ร้อยละผู้ป่วยมะเร็ง 5 อันดับแรก ได้รับการรักษาภายในระยะเวลาที่กำหนด \r\nตัวชี้วัดย่อย\"', 'se', NULL, NULL, NULL, '1', NULL, '2020', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (36, '02901', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยการผ่าตัดภายในระยะเวลา 4 สัปดาห์', 'se', '75', '>=', 'บันทึก', '1', NULL, '2020', '1', '02900', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนผู้ป่วยที่แพทย์วางแผนการรักษาด้วยการผ่าตัดและได้รับการผ่าตัดรักษา ≤4 สัปดาห์นับตามเกณฑ์ที่กำหนด (คน)', 'B = จำนวนผู้ป่วยที่ได้รับการผ่าตัดเพื่อรักษามะเร็งทั้งหมดในปีที่รายงาน (คน)', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, 'ค่าเป้าหมายมากกว่าหรือเท่ากับ ร้อยละ 75');
INSERT INTO `main_kpi_index` VALUES (37, '02902', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยเคมีบำบัดภายในระยะเวลา 6 สัปดาห์', 'se', '75', '>=', 'บันทึก', '15', NULL, '2020', '1', '02900', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนผู้ป่วยที่แพทย์วางแผนการรักษาด้วยเคมีบำบัดและได้รับการรักษาด้วยเคมีบำบัด ≤ 6 สัปดาห์ นับตามเกณฑ์ที่กำหนด (คน)', 'B = จำนวนผู้ป่วยที่ได้รับเคมีบำบัดเพื่อรักษามะเร็งทั้งหมดในปีที่รายงาน (คน)', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, 'ค่าเป้าหมายมากกว่าหรือเท่ากับ ร้อยละ 75');
INSERT INTO `main_kpi_index` VALUES (38, '02903', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยรังสีรักษาภายในระยะเวลา 6 สัปดาห์', 'se', '65', '>=', 'บันทึก', '15', NULL, '2020', '1', '02900', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนผู้ป่วยที่แพทย์วางแผนการรักษาด้วยรังสีรักษาและได้รับการรักษาด้วยรังสีรักษา ≤ 6 สัปดาห์นับตามเกณฑ์ที่กำหนด (คน)', 'B = จำนวนผู้ป่วยที่ได้รับรังสีรักษาเพื่อรักษามะเร็งทั้งหมดในปีที่รายงาน (คน)', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับ ร้อยละ 65');
INSERT INTO `main_kpi_index` VALUES (39, '03000', 'ร้อยละของผู้ป่วย CKD ที่มีอัตราการลดลงของ eGFR<4 ml/min/1.73m2/yr', 'se', '66', '>=', 'HDC', '12', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=pformated/format1.php&cat_id=e71a73a77b1474e63b71bccf727009ce&id=d843f25a088253c22344d771113cf409', '2020', '1', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (40, '03100', 'ร้อยละผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ได้รับการผ่าตัดภายใน 30 วัน', 'se', '85', '>=', 'บันทึก', '15', NULL, '2020', '1', NULL, '2', NULL, '(A/B)*100', 'f', 'A = จำนวนผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ที่ได้รับการผ่าตัด ภายใน 30 วัน (คน)', 'B = จำนวนผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ที่ได้รับการวินิจฉัย (คน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ค่าเป้าหมายมากกว่าหรือเท่ากับ ร้อยละ 85');
INSERT INTO `main_kpi_index` VALUES (41, '03200', 'อัตราส่วนของจำนวนผู้บริจาคอวัยวะจากผู้ป่วยสมองตายต่อจำนวนผู้ป่วยเสียชีวิตในโรงพยาบาล', 'se', '0.8', '>=', 'บันทึก', '12', NULL, '2020', '1', NULL, '1', 'Y', '(A/B)*100', 'a', 'A = จำนวนผู้บริจาคอวัยวะจากผู้ป่วยสมองตาย (actual donor) (คน)', 'B = จำนวนผู้ป่วยที่เสียชีวิตใน รพ. จากทุกสาเหตุ ในปีงบประมาณ 2561 (คน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ค่าเป้าหมายมากกว่าหรือเท่ากับ 0.8 ต่อร้อยประชากร');
INSERT INTO `main_kpi_index` VALUES (42, '03300', 'ร้อยละผู้ติดยาเสพติด ที่บำบัดครบตามเกณฑ์ที่กำหนดและ ได้รับการติดตามดูแลต่อเนื่อง 1 ปี (Retention Rate 1 year)', 'se', '20', '>=', 'บันทึก', '12', NULL, '2020', '1', NULL, '2', 'Y', '(A/B)*100', NULL, 'A = จำนวนผู้ติดยาเสพติดที่ได้รับการบำบัดรักษาติดตามดูแลต่อเนื่อง 1 ปี หลังจำหน่าย (คน)', 'B = จำนวนผู้ติด ที่รับบการบำบัดรักษาและได้รับการจำหน่ายทั้งหมดในปีงบประมาณ พ.ศ. 2561 จากสถานบำบัดฟื้นฟูผู้เสพผู้ติดยาเสพติด (คน)', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ค่าเป้าหมายมากกว่าหรือเท่ากับ ร้อยละ 20');
INSERT INTO `main_kpi_index` VALUES (43, '03320', 'ร้อยละของผู้พยายามฆ่าตัวตายไม่กลับมาทําร้ายตัวเองซ้ำในระยะเวลา 1 ปี', 'se', '85', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A =  จํานวนผู้พยายามฆ่าตัวตายไม่กลับมาทําร้ายตัวเองซ้ำ ภายใน 1 ปี', 'B =  จํานวนผู้พยายามฆ่าตัวตายที่เข้าถึงบริการที่ยังคงไม่เสียชีวิต', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (44, '03400', 'ร้อยละของผู้ใช้ ผู้เสพที่บำบัดครบตามเกณฑ์ที่กำหนดของแต่ละระบบหยุดเสพต่อเนื่องหลังจำหน่ายจากการบำบัด 3 เดือน  (3 month remission rate)', 'se', '40', '>=', 'บันทึก', '12', NULL, '2020', '1', NULL, '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนผู้ใช้/ผู้เสพยาเสพติดที่บำบัดครบตามเกณฑ์ที่กำหนด แล้วหยุดเสพต่อเนื่อง 3 เดือน หลังจากการบำบัดรักษาครบตามกำหนด และติดตามแล้วพบตัว (คน)', 'B = จำนวนผู้ใช้/ผู้เสพยาเสพติดที่ได้รับการจำหน่ายทั้งหมด ในปีงบประมาณ พ.ศ. 2561 จากสถานบำบัดฟื้นฟูผู้เสพผู้ติดยาเสพติด (คน)', NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 40');
INSERT INTO `main_kpi_index` VALUES (45, '03500', '\"ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)\r\nตัวชี้วัดรอง \"', 'se', NULL, NULL, NULL, '15', NULL, '2020', '2', NULL, '1', 'Y', '(A/B)*100000', 'b', '74', '75', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (46, '03501', 'ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)', 'se', '50', '>=', 'บันทึก', '15', NULL, '2020', '1', '03500', '2', 'Y', '(A/B)*100', NULL, 'A = โรงพยาบาลระดับ M และ F ในจังหวัด ที่ผ่านเกณฑ์ให้บริการการดูแลระยะกลางแบบ ผู้ป่วยใน (intermediate bed/ward) (แห่ง)', 'B = โรงพยาบาลระดับ M และ F ทั้งหมดในจังหวัด (แห่ง)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 50');
INSERT INTO `main_kpi_index` VALUES (47, '03502', 'ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ที่รอดชีวิตและมีคะแนน Barthel index <15 รวมทั้งคะแนน Barthel index >15 with multiple impairment ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20', 'se', '60', '>=', 'บันทึก', '15', NULL, '2020', '1', '03500', '2', NULL, '(A/B)*100', NULL, 'A = ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ภายในจังหวัดที่รอดชีวิตและมีคะแนน Barthel index <15ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20 (ราย)', 'B = ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury รายใหม่หรือกลับเป็นซ้ำทั้งหมดที่เข้ารับการรักษาในโรงพยาบาลภายในจังหวัดรอดชีวิตและมีคะแนน Barthel index <15รวมทั้งคะแนน Barthel index >15 with multipleimpairment (ราย)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 60');
INSERT INTO `main_kpi_index` VALUES (48, '03520', 'การผ่าตัดภายใน 72 ชั่วโมง (Early surgery) > ร้อยละ 30 นับตั้งแต่ รับผู้ป่วยเข้ารักษาในโรงพยาบาล', 'se', '30', '>', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวนผู้ป่วยในโครงการ Refracture Prevention ที่ได้รับการผ่าตัด ภายใน 72 ชั่วโมง', 'B = จํานวนผู้ป่วยที่ได้รับการผ่าตัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (49, '03530', 'Rate Refracture < ร้อยละ 25 * (ตัวชี้วัดนี้ใช้ได้กรณีที่โรงพยาบาลนั้น ทําโครงการ มาแล้ว 1 ปี)', 'se', '25', '<', NULL, '1', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวนผู้ป่วยในโครงการ Refracture Prevention ที่มีกระดูกหักซ้ำ', 'B = จํานวนผู้ป่วยในโครงการ Refracture Prevention ในระยะเวลา 1 ปี', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (50, '03600', 'ร้อยละของผู้ป่วยที่เข้ารับการผ่าตัดแบบ One Day Surgery', 'se', '20', '>=', 'บันทึก', '8', NULL, '2020', '1', NULL, '2', NULL, '(A/B)*100', NULL, 'A = จำนวนผู้ป่วยทั้งหมดที่ได้รับการผ่าตัด One Day Surgery (คน)', 'B = จำนวนผู้ป่วยที่เข้าเงื่อนไขในการเข้ารับการผ่าตัด One Day Surgery ด้วยโรคที่กำหนด(Principle diagnosis) (คน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 20');
INSERT INTO `main_kpi_index` VALUES (51, '03700', 'อัตราเสียชีวิตของผู้ป่วยวิกฤติฉุกเฉิน (triagel level 1) ภายใน 24 ชม. ใน โรงพยาบาล A, S, M1', 'se', '12', '<', 'HDC', '4', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=pformated/format1.php&cat_id=9d8c311d6336373d40437c4423508cad&id=4709220e55ae6c91c872e08b4ac2498c', '2020', '2', NULL, '1', 'Y', '(A/B)*100', 'a', '76', '77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (52, '03710', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยการผ่าตัดภายในระยะเวลา 4 สัปดาห์', 'se', '70', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวนผู้ป่วยที่แพทย์วางแผนการรักษาด้วยการผ่าตัดและได้รับการผ่าตัดรักษา ≤4 สัปดาห์นับตามเกณฑ์ที่กําหนด', 'B = จํานวนผู้ป่วยที่ได้รับการผ่าตัดเพื่อรักษามะเร็งทั้งหมดในปีที่รายงาน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (53, '03720', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยเคมีบำบัดภายในระยะเวลา 6 สัปดาห์', 'se', '70', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'a', 'A = จำนวนผู้ป่วยที่แพทย์วางแผนการรักษาด้วยเคมีบำบัดและได้รับการรักษาด้วยเคมีบำบัด ≤ 6 สัปดาห์ นับตามเกณฑ์ที่กำหนด (คน)', 'B = จํานวนผู้ป่วยที่ได้รับเคมีบําบัดเพื่อรักษามะเร็งทั้งหมดในปีที่รายงาน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (54, '03730', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยรังสีรักษาภายในระยะเวลา 6 สัปดาห์', 'se', '60', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'a', 'A = จํานวนผู้ป่วยที่แพทย์วางแผนการรักษาด้วยรังสีรักษาและได้รับการรักษาด้วย รังสี รักษา ≤ 6 สัปดาห์นับตามเกณฑ์ที่กำหนด', 'B = จํานวนผู้ป่วยที่ได้รับรังสีรักษาเพื่อรักษามะเร็งทั้งหมดในปีที่รายงาน', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (55, '03800', 'ร้อยละของประชากรเข้าถึงบริการการแพทย์ฉุกเฉิน', 'se', '22', '>=', 'HDC', '15', NULL, '2020', '1', NULL, '2', NULL, '(A/B)*100', 'a', 'A = จำนวนครั้งของผู้ป่วยฉุกเฉินวิกฤตที่มาโดยระบบการแพทย์ฉุกเฉิน (EMS) (ครั้ง)', 'B = จำนวนครั้งของผู้ป่วยฉุกเฉินวิกฤตทั้งหมดที่มารับบริการที่ห้องฉุกเฉิน (ER Visit) (ครั้ง)', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, 'ค่าเป้าหมายไม่ต่ำกว่าร้อยละ 22');
INSERT INTO `main_kpi_index` VALUES (56, '03900', 'ร้อยละผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ได้รับการผ่าตัดภายใน 30 วัน', 'se', '85', '>=', 'บันทึก', '15', NULL, '2020', NULL, NULL, '2', 'Y', '(A/B)*100', 'f', 'A = จำนวนผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ที่ได้รับการผ่าตัด ภายใน 30 วัน (คน)', 'B = จำนวนผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ที่ได้รับการวินิจฉัย (คน)', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, 'ค่าเป้าหมายผ่านเกณฑ์พื้นฐาน ร้อยละ 100');
INSERT INTO `main_kpi_index` VALUES (57, '04000', 'อัตราส่วนของจำนวนผู้ยินยอมบริจาคอวัยวะจากผู้ป่วยสมองตายต่อจำนวนผู้ป่วยเสียชีวิตในโรงพยาบาล (โรงพยาบาล A, S)', 'se', '0.9', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'a', 'A = จำนวนผู้บริจาคอวัยวะจากผู้ป่วยสมองตาย (actual donor) (คน)', 'B = จำนวนผู้ป่วยที่เสียชีวิตในโรงพยาบาลจากทุกสาเหตุ ในปีงบประมาณ 2562', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (58, '04002', 'ร้อยละมูลค่าการใช้ยาสมุนไพรต่อยาแผนปัจจุบันเพิ่มขึ้น', 'se', '10', '>=', 'บันทึก', '13', NULL, '2020', '1', NULL, '2', NULL, '(A/B)*100', NULL, 'A = ยาแพทย์แผนไทย (บาท)', 'B = มูลค่ารวม (บาท)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (59, '04100', 'ร้อยละผู้ป่วยยาเสพติดเข้ารับการบำบัดรักษา และติดตามดูแลอย่างต่อเนื่อง 1 ปี (Retention Rate)', 'se', '50', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'b', 'A = จํานวนผู้ใช้ ผู้เสพ และผู้ติดยาเสพติดที่ได้รับการบําบัดรักษาติดตามดูแลต่อเนื่อง ตามเกณฑ์มาตรฐานอย่างน้อย 4 ครั้งภายใน 1 ปี หลังจําหน่าย', 'B = จํานวนผู้ใช้ ผู้เสพ และผู้ติด ที่รับการบําบัดรักษาและได้รับการจําหน่ายทั้งหมดใน ปีงบประมาณ พ.ศ. 2562 จากสถานบําบัดฟื้นฟูผู้เสพผู้ติดยาเสพติด ยกเว้น ถูกจับเสียชีวิต หรือผู้ป่วยที่ได้รับ methadone maintenance treatment : MMT (เนื่องจาก เป็นการดูแลต่อเนื่องไม่มีการจําหน่าย)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (60, '04200', 'ร้อยละของผู้ป่วยยาเสพติดกลุ่มเสี่ยงก่อความรุนแรงได้รับการประเมิน บําบัดรักษาและติดตามดูแลช่วยเหลือตามระดับความรุนแรง อย่างต่อเนื่อง', 'se', '60', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'a', 'A = จํานวนผู้ป่วยกลุ่มเสี่ยงก่อความรุนแรงได้รับการประเมิน บําบัดรักษาและติดตามดูแล ช่วยเหลือตามระดับความรุนแรงอย่างต่อเนื่องอย่างน้อย 4 ครั้ง ภายใน 1 ปี หลังจําหน่าย', 'B = จํานวนผู้ป่วยกลุ่มเสี่ยงก่อความรุนแรงที่ได้รับการประเมิน การบําบัดรักษาและได้รับ การจําหน่ายทั้งหมดในปีงบประมาณ พ.ศ. 2562 จากสถานบําบัดฟื้นฟูผู้เสพผู้ติดยาเสพติด ยกเว้น ถูกจับ เสียชีวิต หรือผู้ป่วยที่ได้รับ methadone maintenance treatment : MMT (เนื่องจากเป็นการดูแลต่อเนื่องไม่มีการจําหน่าย)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (61, '04300', 'จำนวนหน่วยงานที่เป็นองค์กรแห่งความสุข', 'pe', '70', '>=', 'บันทึก', '6', NULL, '2020', '1', NULL, '2', 'Y', '(A/B)*100', NULL, 'A = จำนวนหน่วยงานที่เป็นองค์กรแห่งความสุข (Happy Organization) (หน่วยงาน)', 'B = จำนวนหน่วยงานในสังกัดกระทรวงสาธารณสุข (หน่วยงาน)', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 70');
INSERT INTO `main_kpi_index` VALUES (62, '04310', '\"ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)\r\nตัวชี้วัดรอง \"\"\"', 'se', '75', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'b', 'A = จำนวนโรงพยาบาลระดับ M และ F ในจังหวัดที่ผ่านเกณฑ์ให้บริการการดูแลระยะกลางแบบผู้ป่วยใน (intermediate bed/ward) ตามภาคผนวก 1 และ 2 (ภาคผนวก 1 เกณฑ์การบริบาลฟื้นฟูสภาพระยะกลางแบบ IPD (IPD-IMC protocol) สำหรับโรงพยาบาลระดับ Mและ F ภาคผนวก 2 IPD care protocal ที่ประกอบด้วย 1)Problem list&plan, 2) Standing doctor order sheet 3) Team meeting report และ 4) Activities protocol (short stay)', 'B = จํานวนงโรงพยาบาลระดับ M และ F ในจังหวัดทั้งหมด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (63, '04320', 'เป้าหมาย ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ที่รอดชีวิตและมีคะแนน Barthel index < 15 รวมทั้งคะแนน Barthel index >15 with multiple impairment ได้รับการบริบาลฟื้นสภาพ ระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20', 'se', '60', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ภายในจังหวัดที่ รอดชีวิตและมีคะแนน Barthel index  <15 ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20', 'B = ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury รายใหม่หรือ กลับเป็นซ้ำทั้งหมดที่เข้ารับการรักษาในโรงพยาบาลภายในจังหวัดรอดชีวิตและมีคะแนน Barthel index  <15 รวมทั้งคะแนน Barthel index >15 with multiple impairment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (64, '04400', 'ร้อยละของผู้ป่วยที่เข้ารับการผ่าตัดแบบ One Day Surgery', 'se', '60', '>=', 'บันทึก', '2', NULL, '2020', '1', NULL, '2', 'Y', '(A/B)*100', NULL, 'A = จำนวนผู้ป่วยทั้งหมดที่ได้รับการผ่าตัด One Day Surgery (คน)', 'B = จำนวนผู้ป่วยที่เข้าเงื่อนไขในการเข้ารับการผ่าตัด One Day Surgery ด้วยโรคที่กำหนด(Principle diagnosis) (คน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 90');
INSERT INTO `main_kpi_index` VALUES (65, '04500', 'จํานวนคลินิกการให้บริการกัญชาทางการแพทย์นําร่องอย่างน่อย เขตสุขภาพละ 1 แห่ง', 'se', '1', '>=', NULL, '8', NULL, '2020', '1', NULL, '5', 'Y', NULL, 'a', 'A =จํานวนคลินิกการให้บริการกัญชาทางการแพทย์นําร่องในเขตสุขภาพ', NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (66, '04501', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขจังหวัดที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', 'ge', '70', '>=', 'บันทึก', '8', NULL, '2020', '1', '04500', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนสำนักงานสาธารณสุขจังหวัดที่ดำเนินการผ่านเกณฑ์ที่กำหนด (จังหวัด)', 'B = จำนวนสำนักงานสาธารณสุขจังหวัดทั้งหมด (จังหวัด)', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 70');
INSERT INTO `main_kpi_index` VALUES (67, '04502', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขอำเภอที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', 'ge', '40', '>=', 'บันทึก', '8', NULL, '2020', '1', '04500', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนสำนักงานสาธารณสุขอำเภอที่ดำเนินการผ่านเกณฑ์ที่กำหนด (แห่ง)', 'B = จำนวนสำนักงานสาธารณสุขอำเภอทั้งหมด (จังหวัด)', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 40');
INSERT INTO `main_kpi_index` VALUES (68, '04600', 'ร้อยละของโรงพยาบาลสังกัดกระทรวงสาธารณสุขมีคุณภาพมาตรฐานผ่านการรับรอง HA ขั้น 3', 'ge', NULL, NULL, NULL, '1', NULL, '2020', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (69, '04601', 'รพ.ศ. รพท. ผ่านการรับรอง HA ขั้น 3', 'ge', '100', '>=', 'บันทึก', '8', NULL, '2020', '1', '04600', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนโรงพยาบาลศูนย์ โรงพยาบาลทั่วไป  ที่มีผลการรับรองขั้น 3 + Reaccredit (แห่ง)', 'B = จำนวนโรงพยาบาลศูนย์ โรงพยาบาลทั่วไป(แห่ง)', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ค่าเป้าหมาย รพศ./รพท. ทุกแห่งผ่านการรับรอง HA ขั้น 3');
INSERT INTO `main_kpi_index` VALUES (70, '04602', 'รพ.ชุมชน ผ่านการรับรอง HA ขั้น 3', 'ge', '90', '>=', 'บันทึก', '8', NULL, '2020', '1', '04600', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนโรงพยาบาลชุมชนที่มีผลการรับรองขั้น 3 + Reaccredit (แห่ง)', 'B = จำนวนโรงพยาบาลชุมชน(แห่ง)', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ค่าเป้าหมาย ร้อยละ 90 ของ รพช. ผ่านการรับรอง HA ขั้น 3');
INSERT INTO `main_kpi_index` VALUES (71, '04620', 'อัตราของผู้ป่วย trauma triage level 1 และมีข้อบ่งชี้ในการผ่าตัด ในโรงพยาบาลระดับ A, S, M1 สามารถเข้าห้องผ่าตัดได้ภายใน 60 นาที ไม่ต่ำกว่า ร้อยละ 80', 'se', '80', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวนผู้ป่วย trauma triage level 1 และมีข้อ บ่งชี้ในการผ่าตัด ใน โรงพยาบาลระดับ A, S, M1 สามารถเข้า ห้องผ่าตัดได้ภายใน 60 นาที', 'B = จํานวนผู้ป่วย trauma triage level 1 และมีข้อ บ่งชี้ในการผ่าตัดใน โรงพยาบาลระดับ A, S, M1 และได้รับการ ผ่าตัดทั้งหมด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (72, '04640', 'อัตราตายผู้ป่วยบาดเจ็บรุนแรงต่อสมอง (mortality rate of severe traumatic brain injury) (GCS ≤ 8) ในโรงพยาบาลระดับ A, S, M1 ไม่เกินร้อยละ 45', 'se', '45', '<=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวนผู้ป่วย severe traumatic brain injury (GCS ≤ 8) ที่เสียชีวิตใน โรงพยาบาลระดับ A, S, M1', 'B = จํานวนผู้ป่วย severe traumatic brain injury ทั้งหมดใน โรงพยาบาลระดับ A, S, M1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (73, '04650', 'อัตราของ TEA unit ในโรงพยาบาลระดับ A, S, M1 ที่ผ่านเกณฑ์ประเมิน คุณภาพ (ไม่ต่ำกว่า 20 คะแนน) ไม่ต่ํากว่าร้อยละ 80', 'se', '80', '>=', NULL, '1', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวน TEA unit ในโรงพยาบาล ระดับ A, S, M1 ที่ ผ่านเกณฑ์ประเมิน คุณภาพ (ไม่ต่ำกว่า 20 คะแนน)', 'B = จํานวน TEA unit ที่ประเมิน คุณภาพทั้งหมดใน โรงพยาบาลระดับ A, S, M1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (74, '04660', 'อัตราของโรงพยาบาลระดับ F2 ขึ้นไปที่ผ่านเกณฑ์ประเมิน ECS คุณภาพ (ไม่ต่ำ กว่าร้อยละ 50) ไม่ต่ำกว่าร้อยละ 80', 'se', '80', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวน โรงพยาบาล ระดับ F2 ขึ้นไป ที่ผ่านเกณฑ์ ประเมิน ECS คุณภาพ(ไม่ต่ำ กว่าร้อยละ 50)', 'B = จํานวน โรงพยาบาล ระดับ F2 ขึ้นไป ที่ประเมิน ECS คุณภาพทั้งหมด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (75, '04700', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว', 'se', NULL, NULL, NULL, '8', NULL, '2020', '1', NULL, '1', NULL, '(A/B)*100', 'a', '100', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (76, '04701', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 5ดาว(สะสม)', 'se', '60', '>=', 'บันทึก', '8', NULL, '2020', '1', '04700', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนโรงพยาบาลส่งเสริมสุขภาพตำบลระดับ 5 ดาว (สะสม) (แห่ง)', 'B = จำนวนโรงพยาบาลส่งเสริมสุขภาพตำบลทั้งหมด (แห่ง)', NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 60');
INSERT INTO `main_kpi_index` VALUES (77, '04702', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 3ดาวขึ้นไป(สะสม)', 'se', '100', '>=', 'บันทึก', '8', NULL, '2020', '1', '04700', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนโรงพยาบาลส่งเสริมสุขภาพตำบลระดับ 3 ดาวขึ้นไป (สะสม) (แห่ง)', 'B = จำนวนโรงพยาบาลส่งเสริมสุขภาพตำบลทั้งหมด (แห่ง)', NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 100');
INSERT INTO `main_kpi_index` VALUES (78, '04800', 'ร้อยละของโรงพยาบาลศูนย์ผ่านเกณฑ์ ER คุณภาพ', 'se', '80', '>=', NULL, '15', NULL, '2020', '1', NULL, '2', NULL, '(A/B)*100', 'a', 'A = จํานวนโรงพยาบาล ระดับ A ที่ผ่านเกณฑ์ประเมิน ER คุณภาพ', 'B = จํานวนโรงพยาบาล ระดับ A ทั้งหมด ในสังกัดสํานักงานปลัดกระทรวงสาธารณสุข', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (79, '04900', 'จํานวนผู้ป่วยที่ไม่ฉุกเฉินในห้องฉุกเฉินระดับ 4 และ 5 (Non trauma) ลดลง', 'se', '5', '>=', NULL, '1', NULL, '2020', '1', NULL, '2', NULL, '(A-B)*100/A', 'a', 'A = จํานวนผู้ป่วยที่ไม่ฉุกเฉินในห้องฉุกเฉินระดับ 4 และ 5 (Non trauma) ปีงบประมาณ 2562', 'B = จํานวนผู้ป่วยที่ไม่ฉุกเฉินในห้องฉุกเฉินระดับ 4 และ 5 (Non trauma) ปีงบประมาณ 2563', NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (80, '04901', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital ( รพศ./รพท )', 'ge', '100', '>=', 'บันทึก', '1', NULL, '2020', '1', '04900', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวน รพศ./รพท ในจังหวัดมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital ผ่านเกณฑ์ ระดับ 2 ขึ้นไป (แห่ง)', 'B = จำนวนโรงพยาบาลศูนย์ โรงพยาบาลทั่วไปทั้งหมดในจังหวัด (แห่ง)', NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 100');
INSERT INTO `main_kpi_index` VALUES (81, '04902', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (รพช)', 'ge', '50', '>=', 'บันทึก', '1', NULL, '2020', '1', '04900', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนโรงพยาบาลชุมชนที่มีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital ผ่านตามเกณฑ์ที่กำหนด (แห่ง)', 'B = จำนวนโรงพยาบาลชุมชนทั้งหมดในจังหวัด (แห่ง)', NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 50');
INSERT INTO `main_kpi_index` VALUES (82, '04903', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (โรงพยาบาลสังกัดกรมวิชาการ)', 'ge', '50', '>=', 'บันทึก', '1', NULL, '2020', '1', '04900', '2', 'Y', '(A/B)*100', 'a', 'A = จำนวนโรงพยาบาลสังกัดกรมวิชากรที่มีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital ผ่านตามเกณฑ์ที่กำหนด (แห่ง)', 'B = จำนวนโรงพยาบาลสังกัดกรมวิชาการ (แห่ง )', NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL, 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 50');
INSERT INTO `main_kpi_index` VALUES (83, '05000', 'ร้อยละของจังหวัดเป้าหมายที่มีหน่วยบริการตั้งอยู่ในพื้นที่เกาะมีการจัดระบบ บริการสุขภาพสําหรับการท่องเที่ยวทางทะเลที่มีประสิทธิภาพ', 'se', '100', '=', 'บันทึก', '1', NULL, '2020', '1', NULL, '2', 'Y', '(A/B)*100', NULL, 'A = จํานวนจังหวัดกลุ่มเป้าหมายที่ผ่านเกณฑ์ ( 5 ระดับ)', 'B = จํานวนจังหวัดกลุ่มเป้าหมาย ตามเป้าหมาย ปีงบประมาณ 2563', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ทีม PCC ทั้งหมด ที่ขึ้นทะเบียนคลินิกหมอครอบครัวตามเกณฑ์ของ สสป. ปี 2562 ใช้ app. PCC ในการปฏิบัติงาน');
INSERT INTO `main_kpi_index` VALUES (84, '05100', 'ร้อยละที่เพิ่มขึ้นของรายได้จากการท่องเที่ยวเชิงสุขภาพ ความงามและแพทย์ แผนไทย', 'se', '5', '>=', NULL, '15', NULL, '2020', '2', NULL, '2', NULL, '(A-B) / B * 100', 'a', 'A = รายได้จากการท่องเที่ยวเชิงสุขภาพ ความงาม และแพทย์แผนไทย ในปี 2563 ของ ประเทศไทย (1 มกราคม 2563 – 31 ธันวาคม 2563 จาก Global Wellness Institute)', 'B = รายได้จากการท่องเที่ยวเชิงสุขภาพ ความงาม และแพทย์แผนไทย ในปี 2562 ของ ประเทศไทย(1 มกราคม 2562 – 31 ธันวาคม 2562 จาก Global Wellness Institute', NULL, NULL, NULL, NULL, NULL, 'Y', NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (85, '05200', 'ระดับความสำเร็จของเขตสุขภาพที่มีการบริหารจัดการระบบการผลิตและพัฒนากำลังคนได้ตามเกณฑ์', 'pe', '1', '=', NULL, '15', NULL, '2020', '1', NULL, '8', NULL, 'A', 'b', 'A = จํานวนเขตสุขภาพที่ผ่านเกณฑ์เป้าหมายที่กําหนด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (86, '05300', 'ร้อยละของเขตสุขภาพที่มีการบริหารจัดการกําลังคนที่มีประสิทธิภาพ', 'pe', '4', '<=', 'บันทึก', '2', NULL, '2020', '2', NULL, '2', 'Y', '(A/B)*100', 'a', 'A = จํานวนตําแหน่งว่างเป้าหมายทั้งหมด (ข้าราชการ + พนักงานราชการ) ณ วันที่ รายงานผล', 'B = จํานวนตําแหน่งทั้งหมด (ข้าราชการ + พนักงานราชการ) ณ วันที่รายงานผล', NULL, NULL, NULL, NULL, 'Y', 'Y', NULL, NULL, 'ค่าเป้าหมาย ไม่เกินร้อยละ 4');
INSERT INTO `main_kpi_index` VALUES (87, '05400', 'ร้อยละของหน่วยงานในสังกัดกระทรวงสาธารณสุขผ่านเกณฑ์การประเมิน ITA', 'ge', '90', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'a', 'A = จํานวนหน่วยงานที่ผ่านเกณฑ์การประเมินตนเองตามแบบสํารวจหลักฐานเชิง ประจักษ์(Evidence-Based) ผ่านเกณฑ์ร้อยละ 90 (ใน 1 ปี)', 'B = จํานวนหน่วยงานทั้งหมดที่เข้ารับการประเมิน ITA (1,850 หน่วยงาน)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (88, '05500', 'ร้อยละของกฎหมายที่ควรปรับปรุงได้รับการแก้ไข และมีการบังคับใช้', 'ge', NULL, NULL, NULL, '15', NULL, '2020', '1', NULL, '1', NULL, '(A/B)*100', 'a', '110', '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (89, '05501', 'ระดับความสำเร็จในการพัฒนากฎหมายด้านสุขภาพ', 'ge', NULL, NULL, NULL, '15', NULL, '2020', '1', '05500', '1', NULL, '(A/B)*100', 'a', '110', '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (90, '05502', 'ระดับความสำเร็จของการบังคับใช้กฎหมายครบองค์ประกอบที่กำหนดของสำนักงานสาธารณสุขจังหวัดทั่วประเทศ', 'ge', NULL, NULL, NULL, '1', NULL, '2020', '1', '05500', '1', NULL, '(A/B)*100', 'a', '110', '111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (91, '05510', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขจังหวัดที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', 'ge', '90', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, 'A', 'a', 'A = จำนวนสํานักงานสาธารณสุขจังหวัดที่ดําเนินการผ่านเกณฑ์ที่กําหนด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (92, '05520', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขอำเภอที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', 'ge', '90', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวนสํานักงานสาธารณสุขอําเภอที่ดําเนินการผ่านเกณฑ์ที่กําหนด', 'B = จํานวนสํานักงานสาธารณสุขอําเภอทั้งหมด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (93, '05610', 'ร้อยละของโรงพยาบาลศูนย์/โรงพยาบาลทั่วไป สังกัดกระทรวงสาธารณสุขมีคุณภาพมาตรฐานผ่านการรับรอง HA ขั้น 3', 'ge', '100', '=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวนโรงพยาบาลศูนย์ โรงพยาบาลทั่วไปในสังกัดสํานักงานปลัดกระทรวง สาธารณสุขที่มีผลการรับรองขั้น 3 + Reaccredit', 'B = จํานวนโรงพยาบาลศูนย์ โรงพยาบาลทั่วไปในสังกัดสํานักงานปลัดกระทรวงสาธารณสุข', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (94, '05620', 'ร้อยละของโรงพยาบาลสังกัดกรมการแพทย์, กรมควบคุมโรค และกรมสุขภาพจิต มีคุณภาพมาตรฐานผ่านการรับรอง HA ขั้น 4', 'ge', '100', '=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวนโรงพยาบาลสังกัดกรมการแพทย์ กรมควบคุมโรค และ กรมสุขภาพจิต ที่มีผลการรับรองขั้น 3 + Reaccredit', 'B = จํานวนโรงพยาบาลสังกัดกรมการแพทย์ กรมควบคุมโรค และกรมสุขภาพจิต', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (95, '05630', 'ร้อยละของโรงพยาบาลชุมชน สังกัดกระทรวงสาธารณสุขมีคุณภาพมาตรฐานผ่านการรับรอง HA ขั้น 3', 'ge', '90', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวนโรงพยาบาลชุมชนในสังกัดสํานักงานปลัดกระทรวงสาธารณสุขที่มีผลการรับรองขั้น 3 + Reaccredit', 'B = โรงพยาบาลชุมชนในสังกัดสํานักงานปลัดกระทรวงสาธารณสุข', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (96, '05700', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 5 ดาว', 'se', '75', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'a', 'A = จํานวนโรงพยาบาลส่งเสริมสุขภาพตําบลระดับ 5 ดาว (สะสมปีงบประมาณ (2561 – 2563) ผ่านเกณฑ์พัฒนาคุณภาพ รพ.สต.ติดดาว ระดับ 5 ดาว ใน ปีงบประมาณ 2563', 'B = จํานวนโรงพยาบาลส่งเสริมสุขภาพตําบลทั้งหมด โดยไม่รวม รพ.สต. ที่ถ่าย โอนไปยังองค์กรปกครองส่วนท้องถิ่น', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (97, '05810', 'จํานวน รพศ./รพท./สสจ. เป็นองค์กรแห่งความสุข ที่มีคุณภาพมาตรฐาน', 'ge', '1', '=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, 'A', 'A = รพศ./รพท./สสจ. (อย่างน้อยเขตละ 1 แห่ง)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (98, '05820', 'จํานวน รพช./สสอ. เป็นองค์กรแห่งความสุข ที่มีคุณภาพมาตรฐาน', 'ge', '10', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวน รพช./สสอ.ในจังหวัด ที่มีผลการประเมินผ่านเกณฑ์คุณภาพมาตรฐาน องค์กรแห่งความสุข', 'B = จํานวน รพช./สสอ.ทั้งหมดในจังหวัด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (99, '05900', 'ร้อยละของจังหวัดที่ผ่านเกณฑ์คุณภาพข้อมูล', 'ge', '80', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, 'A', 'a', 'A = จํานวนจังหวัดที่ผ่านเกณฑ์คุณภาพข้อมูลบริการสุขภาพ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (100, '06010', 'ร้อยละของหน่วยบริการ กลุ่มที่ 1 เป็น Smart Hospital', 'ge', '80', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'a', 'A = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 1 เป็น Smart Hospital', 'B = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 1 ทั้งหมด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (101, '06020', 'ร้อยละของหน่วยบริการ กลุ่มที่ 2 เป็น Smart Hospital', 'ge', '50', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 2 เป็น Smart Hospital', 'B = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 2 ทั้งหมด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (102, '06030', 'ร้อยละของหน่วยบริการ กลุ่มที่ 3 เป็น Smart Hospital', 'ge', '80', '>=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', NULL, 'A = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 3 เป็น Smart Hospital', 'B = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 3 ทั้งหมด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (103, '06100', 'จํานวนโรงพยาบาลที่มีบริการรับยาที่ร้านยา', 'ge', NULL, NULL, NULL, '15', NULL, '2020', NULL, NULL, '5', NULL, NULL, 'A', 'A = จํานวนโรงพยาบาลที่มีบริการรับยาที่ร้านยา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (104, '06200', 'ความแตกต่างอัตราการใช้สิทธิ(compliance rate) เมื่อไปใช้บริการผู้ป่วยใน (IP) ของผู้มีสิทธิใน 3 ระบบ', 'ge', '1.5', '<=', NULL, '15', NULL, '2020', NULL, NULL, '6', NULL, 'ค่าเฉลี่ย { CRdif.-CS, CRdif-SS, CRdif-UC }', 'a', '-อัตราการใช้สิทธิ ของแต่ละสิทธิ : CR-CS, CR-SS, CR-UC', 'ความต่างอัตราการใช้สิทธิแต่ละสิทธิเทียบกับอัตราการใช้สิทธิภาพรวมประเทศ : CRdif.-CS, CRdif-SS, CRdif-UC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (105, '06300', 'ระดับความสำเร็จของการจัดทำสิทธิประโยชน์กลางผู้ป่วยใน ของระบบหลักประกันสุขภาพ 3 ระบบ', 'ge', NULL, NULL, NULL, '15', NULL, '2020', NULL, NULL, '1', NULL, NULL, 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (106, '06410', 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน ระดับ 7', 'ge', '4', '<=', NULL, '15', NULL, '2020', NULL, NULL, '2', NULL, '(A/B)*100', 'a', 'A = จำนวนหน่วยบริการสังกัดสำนักงานปลัดกระทรวงสาธารณสุขที่ประสบภาวะวิกฤติทางการเงินระดับ 7', 'B = จำนวนหน่วยบริการสังกัดสำนักงานปลัดกระทรวงสาธารณสุขทั้งหมด (หน่วยบริการที่จัดส่งรายงานงบทดลอง)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (107, '06420', 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน ระดับ 6', 'ge', '8', '>=', NULL, '15', NULL, '2020', NULL, NULL, '7', NULL, 'A', NULL, 'A = จํานวนนวัตกรรม หรือเทคโนโลยีสุขภาพที่คิดค้นใหม่ หรือที่พัฒนาต่อยอดที่เพิ่มขึ้น จากฐานข้อมูลนวัตกรรมกรมวิทยาศาสตร์การแพทย์ของปีที่ผ่านมา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (108, '06510', 'จำนวนนวัตกรรม หรือเทคโนโลยีสุขภาพที่คิดค้นใหม่', 'ge', '8', NULL, NULL, '15', NULL, '2020', NULL, NULL, '7', NULL, 'A', NULL, 'A = จํานวนนวัตกรรม หรือเทคโนโลยีสุขภาพที่คิดค้นใหม่ หรือที่พัฒนาต่อยอดที่เพิ่มขึ้น จากฐานข้อมูลนวัตกรรมกรมวิทยาศาสตร์การแพทย์ของปีที่ผ่านมา', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (109, '06520', 'จำนวนนวัตกรรม หรือเทคโนโลยีสุขภาพที่พัฒนาต่อยอด', 'ge', '4', '>=', NULL, '15', NULL, '2020', NULL, NULL, '7', NULL, 'B', NULL, NULL, 'B = จํานวนนวัตกรรมหรือเทคโนโลยีสุขภาพที่คิดค้นใหม่หรือที่พัฒนาต่อยอด ในปีงบประมาณ 2563 มีการใช้ประโยชน์ทางการแพทย์ หรือการคุ้มครองผู้บริโภค หรือเชิง พาณิชย์', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (110, '06600', 'ร้อยละของเขตสุขภาพมีการพัฒนาระบบบริหารจัดการที่มีประสิทธิภาพ', 'ge', '1', '=', NULL, '15', NULL, '2020', NULL, NULL, '8', NULL, 'A', 'a', 'A = จํานวนเขตสุขภาพที่ดําเนินการผ่านเกณฑ์ที่กําหนด', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (111, '06710', 'ร้อยละของกฎหมายที่ได้รับการปรับปรุงและพัฒนา', 'ge', '100', '=', NULL, '15', NULL, '2020', NULL, NULL, '9', NULL, '(A/B)*100', 'a', 'A = จํานวนกฎหมายที่ทําได้ในปีงบประมาณ 2563', 'B = กฎหมาย 10 ฉบับ ตามเป้าหมาย', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (112, '11300', 'จำนวนผู้สูบบุหรี่เลิกสูบบุหรี่', 'pp', '20', '>=', 'HDC', '12', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=pformated/format1.php&cat_id=06b9ffbd9fa83f29fef3a7e7ba8119d6&id=e175f4c1757b3bb0e171f4711757bbfc', '2020', '1', '11300', '1', NULL, '(A/B)*100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (113, '11401', 'ร้อยละผู้ป่วยโรคเบาหวานที่ควบคุมระดับน้ำตาลได้ดี', 'pp', '40', '>=', 'HDC', '12', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=pformated/format1.php&cat_id=cf7d9da207c0f9a7ee6c4fe3f09f67dd&id=137a726340e4dfde7bbbc5d8aeee3ac3', '2020', '1', '11400', '1', NULL, '(A/B)*100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (114, '11402', 'ร้อยละผู้ป่วยโรคความดันโลหิตสูงที่ควบคุมความดันโลหิตได้ดี', 'pp', '50', '>=', 'HDC', '12', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=pformated/format1.php&cat_id=cf7d9da207c0f9a7ee6c4fe3f09f67dd&id=2e3813337b6b5377c2f68affe247d5f9', '2020', '1', '11400', '1', NULL, '(A/B)*100', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (115, '40701', 'อัตราตายของผู้ป่วยโรคหลอดเลือดสมองตีบ/อุดตัน (Ischemic Stroke ;I63)', 'se', '5', '<', 'HDC', '12', NULL, '2020', '2', '01500', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (116, '40702', 'อัตราตายของผู้ป่วยโรคหลอดเลือดสมองแตก (Hemorrhagic Stroke ;I60-I62)', 'se', '25', '<', 'HDC', '12', NULL, '2020', '2', '01500', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `main_kpi_index` VALUES (117, '40703', 'อัตราตายของผู้ป่วยโรคหลอดเลือดสมอง (Stroke ;I60-I69)การรักษาใน Stroke Unit', 'se', '7', '<', 'HDC', '12', 'https://hdcservice.moph.go.th/hdc/reports/report.php?source=pformated/format1.php&cat_id=39fd60c25235db479930db85a0e97dd3&id=7ac059f4e4e3d08750d2ee23600556af', '2020', '2', '01500', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for main_kpi_index_old
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_index_old`;
CREATE TABLE `main_kpi_index_old`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ex` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goal` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cri_type` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hdc` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `respon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `etc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_year` date NULL DEFAULT NULL,
  `success_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `main_kpi_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unit` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `static_target` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_formular` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_formular_script` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `c` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `e` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `f` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pa` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `h_kpi` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `target` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_index_old
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi_input
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_input`;
CREATE TABLE `main_kpi_input`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
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
  `kpi_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 351 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_input
-- ----------------------------
INSERT INTO `main_kpi_input` VALUES (1, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '00100', NULL);
INSERT INTO `main_kpi_input` VALUES (2, '00063', '0000-00-00', '1900-01-20', '0', '552', '0', '574', '0', '570', '0', '528', '1', '449', '0', '525', '0', '517', '', '', '', '', '', '', '', '', '', '', 'อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:45:22.000000', '00100', NULL);
INSERT INTO `main_kpi_input` VALUES (3, '00064', '0000-00-00', '1900-01-20', '0', '187', '1', '176', '0', '168', '0', '190', '0', '140', '0', '157', '0', '180', '1', '156', '0', '138', '', '', '', '', '', '', 'อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:49:59.000000', '00100', NULL);
INSERT INTO `main_kpi_input` VALUES (4, '00065', '0000-00-00', '1900-01-20', '0', '518', '0', '586', '0', '567', '0', '540', '0', '512', '0', '582', '0', '503', '0', '520', '', '', '', '', '', '', '', '', 'อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', '', '0000-00-00 00:00:00.000000', '1900-01-20 18:18:22.000000', '00100', 'สรุป : ไตรมาส 1 - 3 (ตค.61-พค.62) ภูเก็ต A = มารดาไทยไม่ตาย\r\n                                                B = เด็กไทยเกิดมีชีพทั้งหมด 4,328 ราย (รวมภาครัฐและเอกชน)');
INSERT INTO `main_kpi_input` VALUES (5, '00066', '0000-00-00', '1900-01-20', '1', '1175', '0', '1068', '0', '1021', '1', '1064', '1', '949', '0', '1021', '0', '935', '0', '991', '0', '937', '1', '1003', '0', '988', '0', '1432', 'อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:34:50.000000', '00100', NULL);
INSERT INTO `main_kpi_input` VALUES (6, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '1044', '', '', '', '', '', '', 'อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:30:02.000000', '00100', NULL);
INSERT INTO `main_kpi_input` VALUES (7, '00068', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '00100', NULL);
INSERT INTO `main_kpi_input` VALUES (8, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '00700', NULL);
INSERT INTO `main_kpi_input` VALUES (9, '00063', '0000-00-00', '1900-01-20', '', '53', '', '', '', '', '50', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:06:37.000000', '00700', NULL);
INSERT INTO `main_kpi_input` VALUES (10, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '48', '48', '48', '48', '48', '48', '48', '48', '', '', '', '', '', '', 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:19:06.000000', '00700', NULL);
INSERT INTO `main_kpi_input` VALUES (11, '00065', '0000-00-00', '1900-01-20', '12', '17', '', '', '', '', '5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:45:41.000000', '00700', NULL);
INSERT INTO `main_kpi_input` VALUES (12, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '118', '131', '', '', '', '', '', '', 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:23:10.000000', '00700', NULL);
INSERT INTO `main_kpi_input` VALUES (13, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '29', '30', '', '', '', '', '', '', 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:32:23.000000', '00700', NULL);
INSERT INTO `main_kpi_input` VALUES (14, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '68', '70', '', '', '', '', '', '', 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:12:08.000000', '00700', NULL);
INSERT INTO `main_kpi_input` VALUES (15, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '00800', NULL);
INSERT INTO `main_kpi_input` VALUES (16, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8', '8', '', '', '', '', '', '', 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:00:21.000000', '00800', NULL);
INSERT INTO `main_kpi_input` VALUES (17, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '00800', NULL);
INSERT INTO `main_kpi_input` VALUES (18, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '3', '3', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:28:23.000000', '00800', NULL);
INSERT INTO `main_kpi_input` VALUES (19, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '19', '19', '', '', '', '', '', '', 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:35:11.000000', '00800', NULL);
INSERT INTO `main_kpi_input` VALUES (20, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '', '', '', '', '', '', 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:48:55.000000', '00800', NULL);
INSERT INTO `main_kpi_input` VALUES (21, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8', '8', '', '', '', '', 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', '', '0000-00-00 00:00:00.000000', '1900-01-20 09:52:07.000000', '00800', NULL);
INSERT INTO `main_kpi_input` VALUES (22, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ระดับความสำเร็จของจังหวัดในการพัฒนาศูนย์ปฏิบัติการภาวะฉุกเฉิน (EOC) และทีมตระหนักรู้สถานการณ์ (SAT) ที่สามารถปฏิบัติงานได้จริง', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '00900', NULL);
INSERT INTO `main_kpi_input` VALUES (23, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ระดับความสำเร็จของจังหวัดในการพัฒนาศูนย์ปฏิบัติการภาวะฉุกเฉิน (EOC) และทีมตระหนักรู้สถานการณ์ (SAT) ที่สามารถปฏิบัติงานได้จริง', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '00900', NULL);
INSERT INTO `main_kpi_input` VALUES (24, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ระดับความสำเร็จของจังหวัดในการพัฒนาศูนย์ปฏิบัติการภาวะฉุกเฉิน (EOC) และทีมตระหนักรู้สถานการณ์ (SAT) ที่สามารถปฏิบัติงานได้จริง', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '00900', NULL);
INSERT INTO `main_kpi_input` VALUES (25, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '1', '1', '', '', '', '', '1', '1', '', '', '', '', '1', '1', '1', '1', '', '', '', '', 'ระดับความสำเร็จของจังหวัดในการพัฒนาศูนย์ปฏิบัติการภาวะฉุกเฉิน (EOC) และทีมตระหนักรู้สถานการณ์ (SAT) ที่สามารถปฏิบัติงานได้จริง', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:17:16.000000', '00900', NULL);
INSERT INTO `main_kpi_input` VALUES (26, '00066', '0000-00-00', '1900-01-20', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', '', '', 'ระดับความสำเร็จของจังหวัดในการพัฒนาศูนย์ปฏิบัติการภาวะฉุกเฉิน (EOC) และทีมตระหนักรู้สถานการณ์ (SAT) ที่สามารถปฏิบัติงานได้จริง', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:39:12.000000', '00900', NULL);
INSERT INTO `main_kpi_input` VALUES (27, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '', 'ระดับความสำเร็จของจังหวัดในการพัฒนาศูนย์ปฏิบัติการภาวะฉุกเฉิน (EOC) และทีมตระหนักรู้สถานการณ์ (SAT) ที่สามารถปฏิบัติงานได้จริง', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:37:55.000000', '00900', NULL);
INSERT INTO `main_kpi_input` VALUES (28, '00068', '0000-00-00', '1900-01-20', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ระดับความสำเร็จของจังหวัดในการพัฒนาศูนย์ปฏิบัติการภาวะฉุกเฉิน (EOC) และทีมตระหนักรู้สถานการณ์ (SAT) ที่สามารถปฏิบัติงานได้จริง', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:18:49.000000', '00900', NULL);
INSERT INTO `main_kpi_input` VALUES (29, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของคลินิกหมอครอบครัวที่เปิดดำเนินการในพื้นที่ (Primary Care Cluster)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01300', NULL);
INSERT INTO `main_kpi_input` VALUES (30, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของคลินิกหมอครอบครัวที่เปิดดำเนินการในพื้นที่ (Primary Care Cluster)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01300', NULL);
INSERT INTO `main_kpi_input` VALUES (31, '00064', '0000-00-00', '1900-01-20', '6', '8', '6', '8', '6', '8', '6', '8', '6', '8', '6', '8', '6', '8', '6', '8', '6', '8', '', '', '', '', '', '', 'ร้อยละของคลินิกหมอครอบครัวที่เปิดดำเนินการในพื้นที่ (Primary Care Cluster)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:16:04.000000', '01300', NULL);
INSERT INTO `main_kpi_input` VALUES (32, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '5', '7', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของคลินิกหมอครอบครัวที่เปิดดำเนินการในพื้นที่ (Primary Care Cluster)', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:04:25.000000', '01300', NULL);
INSERT INTO `main_kpi_input` VALUES (33, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '17', '90', '', '', '', '', '', '', 'ร้อยละของคลินิกหมอครอบครัวที่เปิดดำเนินการในพื้นที่ (Primary Care Cluster)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:30:54.000000', '01300', '-');
INSERT INTO `main_kpi_input` VALUES (34, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9', '17', '', '', '', '', '', '', 'ร้อยละของคลินิกหมอครอบครัวที่เปิดดำเนินการในพื้นที่ (Primary Care Cluster)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:49:13.000000', '01300', NULL);
INSERT INTO `main_kpi_input` VALUES (35, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4', '12', '0', '0', '0', '0', '', '', '', '', 'ร้อยละของคลินิกหมอครอบครัวที่เปิดดำเนินการในพื้นที่ (Primary Care Cluster)', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:23:18.000000', '01300', 'เมื่อวันที่ 19 มีนาคม 2562 สำนักงานสาธารณสุขจังหวัดชุมพร ได้จัดประชุมพิจารณาปรับแผนและเป้าหมายการจัดตั้งคลินิกหมอครอบครัว (Primary Care Cluster) จังหวัดชุมพร ตั้งแต่ปี 2559 – 2569 จากเป้าหมายเดิมจะเปิดดำเนินการ 50 ทีม ปรับเป็น 12 ทีม อยู่ระหว่างประสานในแต่ละอำเภอพิจารณาชี้เป้าหมายเปิดดำเนินการ PCC ให้มีความสอดคล้องกับแพทย์และทีมสหวิชาชีพ รวมถึงความพร้อมและทรัพยากรทุกๆ ด้้าน             ');
INSERT INTO `main_kpi_input` VALUES (36, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของครอบครัวที่มีศักยภาพในการดูแลสุขภาพตนเองได้ตามเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01400', NULL);
INSERT INTO `main_kpi_input` VALUES (37, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '743', '1367', '334', '', '', '', '', '', 'ร้อยละของครอบครัวที่มีศักยภาพในการดูแลสุขภาพตนเองได้ตามเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 17:48:06.000000', '01400', '1. การประเมินครอบครัว ร้อยละ 30  ของครอบครัวเป้าหมาย (เป้าหมาย อสค. จำนวน 4556 ครอบครัว) \r\n2. ครอบครัวที่ได้รับการประเมินต้องผ่านเกณฑ์ ร้อยละ 60 \r\n3. หน่วยบริการอยู่ระหว่างการประเมิน และบันทึกข้อมูล ');
INSERT INTO `main_kpi_input` VALUES (38, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของครอบครัวที่มีศักยภาพในการดูแลสุขภาพตนเองได้ตามเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01400', NULL);
INSERT INTO `main_kpi_input` VALUES (39, '00065', '0000-00-00', '1900-01-20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '76', '1710', '196', '0', '277', '0', '', '', 'ร้อยละของครอบครัวที่มีศักยภาพในการดูแลสุขภาพตนเองได้ตามเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:24:47.000000', '01400', 'เป้าหมาย ปี 2562\r\nจำนวน 1,710 คน (เป้าหมายจากHDC) เฉลี่ยอำเภอละ 570 คน \r\n      (เน้นกลุ่มผู้สูงอายุ LTC, CKD,NCD)\r\n ผู้สูงอายุติดบ้าน ติดเตียงทุกคนต้องมี อสค. ดูแล 100 %\r\nวิธีการ\r\n1. ถ่ายทอดนโยบาย แนวทาง และวิธีการดำเนินงานสู่การปฏิบัติ\r\n- วันที่ 27 กุมภาพันธ์ 2562 ณ สสจ.ภูเก็ต\r\n2. ลงทะเบียน อสค. ในฐานข้อมูล ก.พ. – มิ.ย 62\r\n- โดย เจ้าหน้าที่ / อสค.\r\n');
INSERT INTO `main_kpi_input` VALUES (40, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6524', '10820', '1912', '0', '', '', 'ร้อยละของครอบครัวที่มีศักยภาพในการดูแลสุขภาพตนเองได้ตามเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 01:29:49.000000', '01400', NULL);
INSERT INTO `main_kpi_input` VALUES (41, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของครอบครัวที่มีศักยภาพในการดูแลสุขภาพตนเองได้ตามเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01400', NULL);
INSERT INTO `main_kpi_input` VALUES (42, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '653', '4556', '', '', '', '', '', '', 'ร้อยละของครอบครัวที่มีศักยภาพในการดูแลสุขภาพตนเองได้ตามเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:17:40.000000', '01400', NULL);
INSERT INTO `main_kpi_input` VALUES (43, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'อัตราความสำเร็จการรักษาผู้ป่วยวัณโรคปอดรายใหม่', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01600', NULL);
INSERT INTO `main_kpi_input` VALUES (44, '00063', '0000-00-00', '1900-01-20', '', '87', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '87', '', 'อัตราความสำเร็จการรักษาผู้ป่วยวัณโรคปอดรายใหม่', '', '0000-00-00 00:00:00.000000', '1900-01-20 01:59:01.000000', '01600', 'จำนวนผู้ป่วยวัณโรคปอดรายใหม่ ที่ขึ้นทะเบียนในไตรมาส 1 /2562 ตั้งแต่ ตุลาคม -ธันวาคม 2561 จำนวน 87 ราย รักษา หายและครบ 87 ราย  ร้อยละ 100   ในรอบนี้ ไม่มีผู้ป่วยล้มเหลว ไม่มีเสียชีวิต และไม่มีผู้ป่วยขาดยา');
INSERT INTO `main_kpi_input` VALUES (45, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '43', '50', '', '', 'อัตราความสำเร็จการรักษาผู้ป่วยวัณโรคปอดรายใหม่', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:24:16.000000', '01600', NULL);
INSERT INTO `main_kpi_input` VALUES (46, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '0', '104', '', '', '', '', '18', '', '', '', '', '', '41', '', '', '', '', '', '34', '', 'อัตราความสำเร็จการรักษาผู้ป่วยวัณโรคปอดรายใหม่', '', '0000-00-00 00:00:00.000000', '1900-01-20 07:39:31.000000', '01600', NULL);
INSERT INTO `main_kpi_input` VALUES (47, '00066', '0000-00-00', '1900-01-20', '0', '58', '0', '69', '0', '47', '1', '', '1', '', '15', '', '34', '', '55', '', '52', '', '2', '', '2', '', '4', '', 'อัตราความสำเร็จการรักษาผู้ป่วยวัณโรคปอดรายใหม่', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:29:10.000000', '01600', NULL);
INSERT INTO `main_kpi_input` VALUES (48, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'อัตราความสำเร็จการรักษาผู้ป่วยวัณโรคปอดรายใหม่', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01600', NULL);
INSERT INTO `main_kpi_input` VALUES (49, '00068', '0000-00-00', '1900-01-20', '', '89', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '51', '', '', '', '', '', 'อัตราความสำเร็จการรักษาผู้ป่วยวัณโรคปอดรายใหม่', '', '0000-00-00 00:00:00.000000', '1900-01-20 17:13:32.000000', '01600', NULL);
INSERT INTO `main_kpi_input` VALUES (50, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่มีระบบจัดการการดื้อยาต้านจุลชีพระดับ INTERMEDIATE (AMR)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01800', NULL);
INSERT INTO `main_kpi_input` VALUES (51, '00063', '0000-00-00', '1900-01-20', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่มีระบบจัดการการดื้อยาต้านจุลชีพระดับ INTERMEDIATE (AMR)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:11:52.000000', '01800', NULL);
INSERT INTO `main_kpi_input` VALUES (52, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', '2', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่มีระบบจัดการการดื้อยาต้านจุลชีพระดับ INTERMEDIATE (AMR)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:53:43.000000', '01800', NULL);
INSERT INTO `main_kpi_input` VALUES (53, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่มีระบบจัดการการดื้อยาต้านจุลชีพระดับ INTERMEDIATE (AMR)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:23:16.000000', '01800', NULL);
INSERT INTO `main_kpi_input` VALUES (54, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', '2', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่มีระบบจัดการการดื้อยาต้านจุลชีพระดับ INTERMEDIATE (AMR)', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:18:08.000000', '01800', NULL);
INSERT INTO `main_kpi_input` VALUES (55, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่มีระบบจัดการการดื้อยาต้านจุลชีพระดับ INTERMEDIATE (AMR)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:56:33.000000', '01800', NULL);
INSERT INTO `main_kpi_input` VALUES (56, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '1', '1', '', '', '', '', '1', '1', '', '', '', '', '1', '1', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่มีระบบจัดการการดื้อยาต้านจุลชีพระดับ INTERMEDIATE (AMR)', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:54:56.000000', '01800', NULL);
INSERT INTO `main_kpi_input` VALUES (57, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละการบรรเทาอาการปวดและจัดการอาการต่างๆ ด้วย Strong Opioid Medication ในผู้ป่วยประคับประคองอย่างมีคุณภาพ', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02100', NULL);
INSERT INTO `main_kpi_input` VALUES (58, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละการบรรเทาอาการปวดและจัดการอาการต่างๆ ด้วย Strong Opioid Medication ในผู้ป่วยประคับประคองอย่างมีคุณภาพ', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02100', NULL);
INSERT INTO `main_kpi_input` VALUES (59, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละการบรรเทาอาการปวดและจัดการอาการต่างๆ ด้วย Strong Opioid Medication ในผู้ป่วยประคับประคองอย่างมีคุณภาพ', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02100', NULL);
INSERT INTO `main_kpi_input` VALUES (60, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '278', '366', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละการบรรเทาอาการปวดและจัดการอาการต่างๆ ด้วย Strong Opioid Medication ในผู้ป่วยประคับประคองอย่างมีคุณภาพ', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:16:41.000000', '02100', NULL);
INSERT INTO `main_kpi_input` VALUES (61, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '506', '1001', '', '', '', '', '', '', 'ร้อยละการบรรเทาอาการปวดและจัดการอาการต่างๆ ด้วย Strong Opioid Medication ในผู้ป่วยประคับประคองอย่างมีคุณภาพ', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:04:25.000000', '02100', NULL);
INSERT INTO `main_kpi_input` VALUES (62, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '285', '268', '', '', '', '', '', '', 'ร้อยละการบรรเทาอาการปวดและจัดการอาการต่างๆ ด้วย Strong Opioid Medication ในผู้ป่วยประคับประคองอย่างมีคุณภาพ', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:52:19.000000', '02100', NULL);
INSERT INTO `main_kpi_input` VALUES (63, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '191', '389', '', '', '', '', '', '', 'ร้อยละการบรรเทาอาการปวดและจัดการอาการต่างๆ ด้วย Strong Opioid Medication ในผู้ป่วยประคับประคองอย่างมีคุณภาพ', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:03:02.000000', '02100', NULL);
INSERT INTO `main_kpi_input` VALUES (64, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'อัตราการฆ่าตัวตายสำเร็จ', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02400', NULL);
INSERT INTO `main_kpi_input` VALUES (65, '00063', '0000-00-00', '1900-01-20', '2', '469910', '2', '', '1', '', '4', '', '1', '', '4', '', '3', '', '2', '', '', '', '', '', '', '', '', '', 'อัตราการฆ่าตัวตายสำเร็จ', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:11:23.000000', '02400', NULL);
INSERT INTO `main_kpi_input` VALUES (66, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8', '251816', '', '', '', '', '', '', 'อัตราการฆ่าตัวตายสำเร็จ', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:30:04.000000', '02400', NULL);
INSERT INTO `main_kpi_input` VALUES (67, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '11', '402707', '', '', '', '', '', '', '', '', 'อัตราการฆ่าตัวตายสำเร็จ', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:54:06.000000', '02400', NULL);
INSERT INTO `main_kpi_input` VALUES (68, '00066', '0000-00-00', '1900-01-20', '13', '1063501', '4', '1063501', '9', '1063501', '8', '1063501', '5', '1063501', '2', '1063501', '3', '1063501', '1', '1063501', '9', '1063501', '', '', '', '', '', '', 'อัตราการฆ่าตัวตายสำเร็จ', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:05:47.000000', '02400', NULL);
INSERT INTO `main_kpi_input` VALUES (69, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '14', '190399', '', '', '', '', '', '', 'อัตราการฆ่าตัวตายสำเร็จ', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:00:19.000000', '02400', NULL);
INSERT INTO `main_kpi_input` VALUES (70, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '39', '507604', '5', '', '3', '', '', '', '', '', 'อัตราการฆ่าตัวตายสำเร็จ', '', '0000-00-00 00:00:00.000000', '1900-01-20 09:09:30.000000', '02400', NULL);
INSERT INTO `main_kpi_input` VALUES (71, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03501', NULL);
INSERT INTO `main_kpi_input` VALUES (72, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', '8', '', '', '', '', '', '', ' ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:30:18.000000', '03501', NULL);
INSERT INTO `main_kpi_input` VALUES (73, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7', '7', '', '', '', '', '', '', ' ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:29:56.000000', '03501', NULL);
INSERT INTO `main_kpi_input` VALUES (74, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', '2', '', '', '', '', '', '', '', '', ' ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:28:37.000000', '03501', NULL);
INSERT INTO `main_kpi_input` VALUES (75, '00066', '0000-00-00', '1900-01-20', '16', '19', '16', '19', '16', '19', '16', '19', '16', '19', '16', '19', '16', '19', '16', '19', '16', '19', '16', '19', '16', '19', '16', '19', ' ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:40:43.000000', '03501', NULL);
INSERT INTO `main_kpi_input` VALUES (76, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', '4', '', '', '', '', '', '', ' ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:40:08.000000', '03501', NULL);
INSERT INTO `main_kpi_input` VALUES (77, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '4', '10', '', '', '1', '0', '', '', '', '', '', '', '', '', ' ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:34:16.000000', '03501', 'รพ ท่าแซะ หลังสวน ปะทิว ละแม สวี ');
INSERT INTO `main_kpi_input` VALUES (78, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของการให้การรักษาผู้ป่วย STEMI ได้ตามมาตรฐานเวลาที่กำหนด', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02700', NULL);
INSERT INTO `main_kpi_input` VALUES (79, '00063', '0000-00-00', '1900-01-20', '0', '0', '0', '0', '12', '52', '0', '0', '0', '0', '11', '61', '0', '0', '0', '0', '9', '38', '', '', '', '', '', '', 'ร้อยละของการให้การรักษาผู้ป่วย STEMI ได้ตามมาตรฐานเวลาที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:44:59.000000', '02700', NULL);
INSERT INTO `main_kpi_input` VALUES (80, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '28', '51', '', '', '', '', '', '', 'ร้อยละของการให้การรักษาผู้ป่วย STEMI ได้ตามมาตรฐานเวลาที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:35:07.000000', '02700', NULL);
INSERT INTO `main_kpi_input` VALUES (81, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '67', '152', '80', '178', '92', '215', '97', '227', '99', '238', 'ร้อยละของการให้การรักษาผู้ป่วย STEMI ได้ตามมาตรฐานเวลาที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:19:02.000000', '02700', NULL);
INSERT INTO `main_kpi_input` VALUES (82, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '106', '303', '', '', '', '', '', '', 'ร้อยละของการให้การรักษาผู้ป่วย STEMI ได้ตามมาตรฐานเวลาที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:54:43.000000', '02700', NULL);
INSERT INTO `main_kpi_input` VALUES (83, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของการให้การรักษาผู้ป่วย STEMI ได้ตามมาตรฐานเวลาที่กำหนด', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02700', NULL);
INSERT INTO `main_kpi_input` VALUES (84, '00068', '0000-00-00', '1900-01-20', '2', '12', '6', '11', '5', '15', '10', '15', '7', '12', '6', '14', '14', '18', '3', '4', '', '', '', '', '', '', '', '', 'ร้อยละของการให้การรักษาผู้ป่วย STEMI ได้ตามมาตรฐานเวลาที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:10:36.000000', '02700', 'นับจำนวนผู้ป่วยทั้งจังหวัด มีรพ.ท่าแซะ ปะทิว สวี พะโต๊ะ ละแม เมื่อให้ยาแล้วส่งรพ.ชุมพรทุกราย ยกเว้น รพ.หลังสวนซึ่งให้ยาและดูแลเอง ติดตามขอข้อมูล\r\n*** ในปี 2560-2561 แม่ข่ายรพ.ชุมพรฯ โดยพญ.ปาริชาติและทีมงาน CCU ลงซ้อมสถานการณ์การให้ SK ที่ ER ทุกรพช.ส่วน ER รพ.ชุมพรฯหลังจาย้ายตึกใหม่ เริ่มให้ยาเองครั้งแรกวันที่ 29 พค 2562 โดยทีมCCU วิ่งมาฉีดให้ (ระยะทางไกลพอสมควร) รายที่ 2 วันที่ 10 มิย.2562 โดยทีม ER ทั้ง 2 รายผ่านไปได้ด้วยดี');
INSERT INTO `main_kpi_input` VALUES (85, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'อัตราตายของผู้ป่วยโรคหลอดเลือดหัวใจ', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02800', NULL);
INSERT INTO `main_kpi_input` VALUES (86, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '65', '469610', '', '', '', '', '', '', 'อัตราตายของผู้ป่วยโรคหลอดเลือดหัวใจ', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:27:49.000000', '02800', NULL);
INSERT INTO `main_kpi_input` VALUES (87, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7', '251816', '', '', '', '', '', '', 'อัตราตายของผู้ป่วยโรคหลอดเลือดหัวใจ', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:36:44.000000', '02800', NULL);
INSERT INTO `main_kpi_input` VALUES (88, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '27', '402707', '28', '402707', '32', '402707', '40', '402707', '41', '402707', 'อัตราตายของผู้ป่วยโรคหลอดเลือดหัวใจ', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:17:30.000000', '02800', NULL);
INSERT INTO `main_kpi_input` VALUES (89, '00066', '0000-00-00', '1900-01-20', '', '1063501', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '162', '', '', '', '', '', '', '', 'อัตราตายของผู้ป่วยโรคหลอดเลือดหัวใจ', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:57:46.000000', '02800', NULL);
INSERT INTO `main_kpi_input` VALUES (90, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '190399', '', '', '', '', '', '', 'อัตราตายของผู้ป่วยโรคหลอดเลือดหัวใจ', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:29:18.000000', '02800', NULL);
INSERT INTO `main_kpi_input` VALUES (91, '00068', '0000-00-00', '1900-01-20', '17', '509650', '16', '', '17', '', '20', '', '16', '', '12', '', '21', '', '', '', '', '', '', '', '', '', '', '', 'อัตราตายของผู้ป่วยโรคหลอดเลือดหัวใจ', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:52:36.000000', '02800', '509,650 เป็นประชากรกลางปี 2561 ใช้คำนวนแทนก่อน จนกว่าจะได้จำนวนประชากรของปี 2562');
INSERT INTO `main_kpi_input` VALUES (92, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยการผ่าตัดภายในระยะเวลา 4 สัปดาห์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02901', NULL);
INSERT INTO `main_kpi_input` VALUES (93, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยการผ่าตัดภายในระยะเวลา 4 สัปดาห์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02901', NULL);
INSERT INTO `main_kpi_input` VALUES (94, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '24', '24', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยการผ่าตัดภายในระยะเวลา 4 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:54:51.000000', '02901', NULL);
INSERT INTO `main_kpi_input` VALUES (95, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '125', '87', '14', '8', '21', '14', '5', '2', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยการผ่าตัดภายในระยะเวลา 4 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:12:48.000000', '02901', NULL);
INSERT INTO `main_kpi_input` VALUES (96, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '72', '111', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยการผ่าตัดภายในระยะเวลา 4 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:39:50.000000', '02901', NULL);
INSERT INTO `main_kpi_input` VALUES (97, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '30', '30', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยการผ่าตัดภายในระยะเวลา 4 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:20:23.000000', '02901', NULL);
INSERT INTO `main_kpi_input` VALUES (98, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '25', '27', '', '', '', '', '51', '56', '', '', '', '', '6', '0', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยการผ่าตัดภายในระยะเวลา 4 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:40:25.000000', '02901', NULL);
INSERT INTO `main_kpi_input` VALUES (99, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยเคมีบำบัดภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02902', NULL);
INSERT INTO `main_kpi_input` VALUES (100, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยเคมีบำบัดภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02902', NULL);
INSERT INTO `main_kpi_input` VALUES (101, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4', '4', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยเคมีบำบัดภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:55:36.000000', '02902', NULL);
INSERT INTO `main_kpi_input` VALUES (102, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '132', '85', '7', '6', '17', '11', '12', '6', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยเคมีบำบัดภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:20:21.000000', '02902', NULL);
INSERT INTO `main_kpi_input` VALUES (103, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '130', '145', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยเคมีบำบัดภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:40:29.000000', '02902', NULL);
INSERT INTO `main_kpi_input` VALUES (104, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', '2', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยเคมีบำบัดภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:20:45.000000', '02902', NULL);
INSERT INTO `main_kpi_input` VALUES (105, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '13', '14', '', '', '', '', '21', '21', '', '', '', '', '5', '6', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยเคมีบำบัดภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:42:46.000000', '02902', NULL);
INSERT INTO `main_kpi_input` VALUES (106, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยรังสีรักษาภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02903', NULL);
INSERT INTO `main_kpi_input` VALUES (107, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยรังสีรักษาภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02903', NULL);
INSERT INTO `main_kpi_input` VALUES (108, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยรังสีรักษาภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:56:17.000000', '02903', NULL);
INSERT INTO `main_kpi_input` VALUES (109, '00065', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยรังสีรักษาภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02903', NULL);
INSERT INTO `main_kpi_input` VALUES (110, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '93', '130', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยรังสีรักษาภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:43:06.000000', '02903', NULL);
INSERT INTO `main_kpi_input` VALUES (111, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยรังสีรักษาภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:20:59.000000', '02903', NULL);
INSERT INTO `main_kpi_input` VALUES (112, '00068', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยรังสีรักษาภายในระยะเวลา 6 สัปดาห์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '02903', NULL);
INSERT INTO `main_kpi_input` VALUES (113, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ได้รับการผ่าตัดภายใน 30 วัน', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03100', NULL);
INSERT INTO `main_kpi_input` VALUES (114, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '180', '191', '', '', '', '', '', '', 'ร้อยละผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ได้รับการผ่าตัดภายใน 30 วัน', '', '0000-00-00 00:00:00.000000', '1900-01-20 12:37:58.000000', '03100', NULL);
INSERT INTO `main_kpi_input` VALUES (115, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '68', '71', '', '', '', '', '116', '127', '', '', '', '', '135', '137', '', '', '', '', '', '', 'ร้อยละผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ได้รับการผ่าตัดภายใน 30 วัน', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:25:24.000000', '03100', NULL);
INSERT INTO `main_kpi_input` VALUES (116, '00065', '0000-00-00', '1900-01-20', '28', '28', '30', '31', '34', '34', '38', '38', '34', '34', '39', '39', '33', '33', '39', '39', '35', '35', '', '', '', '', '', '', 'ร้อยละผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ได้รับการผ่าตัดภายใน 30 วัน', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:24:21.000000', '03100', NULL);
INSERT INTO `main_kpi_input` VALUES (117, '00066', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ได้รับการผ่าตัดภายใน 30 วัน', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03100', NULL);
INSERT INTO `main_kpi_input` VALUES (118, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ได้รับการผ่าตัดภายใน 30 วัน', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03100', NULL);
INSERT INTO `main_kpi_input` VALUES (119, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '73', '77', '', '', '', '', '76', '81', '', '', '', '', '42', '51', '', '', '', '', '', '', 'ร้อยละผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ได้รับการผ่าตัดภายใน 30 วัน', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:52:04.000000', '03100', NULL);
INSERT INTO `main_kpi_input` VALUES (120, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'อัตราส่วนของจำนวนผู้บริจาคอวัยวะจากผู้ป่วยสมองตายต่อจำนวนผู้ป่วยเสียชีวิตในโรงพยาบาล', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03200', NULL);
INSERT INTO `main_kpi_input` VALUES (121, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', 'อัตราส่วนของจำนวนผู้บริจาคอวัยวะจากผู้ป่วยสมองตายต่อจำนวนผู้ป่วยเสียชีวิตในโรงพยาบาล', '', '0000-00-00 00:00:00.000000', '1900-01-20 12:40:58.000000', '03200', NULL);
INSERT INTO `main_kpi_input` VALUES (122, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '0', '278', '', '', '', '', '', '', '', '', '', '', 'อัตราส่วนของจำนวนผู้บริจาคอวัยวะจากผู้ป่วยสมองตายต่อจำนวนผู้ป่วยเสียชีวิตในโรงพยาบาล', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:47:52.000000', '03200', NULL);
INSERT INTO `main_kpi_input` VALUES (123, '00065', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'อัตราส่วนของจำนวนผู้บริจาคอวัยวะจากผู้ป่วยสมองตายต่อจำนวนผู้ป่วยเสียชีวิตในโรงพยาบาล', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03200', NULL);
INSERT INTO `main_kpi_input` VALUES (124, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '1539', '', '', '', '', '', '', 'อัตราส่วนของจำนวนผู้บริจาคอวัยวะจากผู้ป่วยสมองตายต่อจำนวนผู้ป่วยเสียชีวิตในโรงพยาบาล', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:48:03.000000', '03200', NULL);
INSERT INTO `main_kpi_input` VALUES (125, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '7', '', '', '', '', '', '', 'อัตราส่วนของจำนวนผู้บริจาคอวัยวะจากผู้ป่วยสมองตายต่อจำนวนผู้ป่วยเสียชีวิตในโรงพยาบาล', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:11:34.000000', '03200', NULL);
INSERT INTO `main_kpi_input` VALUES (126, '00068', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'อัตราส่วนของจำนวนผู้บริจาคอวัยวะจากผู้ป่วยสมองตายต่อจำนวนผู้ป่วยเสียชีวิตในโรงพยาบาล', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03200', NULL);
INSERT INTO `main_kpi_input` VALUES (127, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละผู้ติดยาเสพติด ที่บำบัดครบตามเกณฑ์ที่กำหนดและ ได้รับการติดตามดูแลต่อเนื่อง 1 ปี (Retention Rate 1 year)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03300', NULL);
INSERT INTO `main_kpi_input` VALUES (128, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '32', '82', '', '', '', '', '', '', 'ร้อยละผู้ติดยาเสพติด ที่บำบัดครบตามเกณฑ์ที่กำหนดและ ได้รับการติดตามดูแลต่อเนื่อง 1 ปี (Retention Rate 1 year)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:00:57.000000', '03300', NULL);
INSERT INTO `main_kpi_input` VALUES (129, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '37', '50', '', '', '', '', '', '', 'ร้อยละผู้ติดยาเสพติด ที่บำบัดครบตามเกณฑ์ที่กำหนดและ ได้รับการติดตามดูแลต่อเนื่อง 1 ปี (Retention Rate 1 year)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:01:38.000000', '03300', NULL);
INSERT INTO `main_kpi_input` VALUES (130, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '23', '118', '2', '5', '', '', '', '', '', '', 'ร้อยละผู้ติดยาเสพติด ที่บำบัดครบตามเกณฑ์ที่กำหนดและ ได้รับการติดตามดูแลต่อเนื่อง 1 ปี (Retention Rate 1 year)', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:26:17.000000', '03300', NULL);
INSERT INTO `main_kpi_input` VALUES (131, '00066', '0000-00-00', '1900-01-20', '31', '102', '51', '105', '29', '63', '26', '87', '34', '88', '40', '209', '39', '150', '49', '109', '35', '129', '92', '170', '40', '170', '', '', 'ร้อยละผู้ติดยาเสพติด ที่บำบัดครบตามเกณฑ์ที่กำหนดและ ได้รับการติดตามดูแลต่อเนื่อง 1 ปี (Retention Rate 1 year)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:02:58.000000', '03300', NULL);
INSERT INTO `main_kpi_input` VALUES (132, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '17', '42', '', '', '', '', '', '', 'ร้อยละผู้ติดยาเสพติด ที่บำบัดครบตามเกณฑ์ที่กำหนดและ ได้รับการติดตามดูแลต่อเนื่อง 1 ปี (Retention Rate 1 year)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:58:49.000000', '03300', NULL);
INSERT INTO `main_kpi_input` VALUES (133, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '39', '149', '', '', '', '', '', '', 'ร้อยละผู้ติดยาเสพติด ที่บำบัดครบตามเกณฑ์ที่กำหนดและ ได้รับการติดตามดูแลต่อเนื่อง 1 ปี (Retention Rate 1 year)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:47:02.000000', '03300', NULL);
INSERT INTO `main_kpi_input` VALUES (134, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ใช้ ผู้เสพที่บำบัดครบตามเกณฑ์ที่กำหนดของแต่ละระบบหยุดเสพต่อเนื่องหลังจำหน่ายจากการบำบัด 3 เดือน  (3 month remission rate)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03400', NULL);
INSERT INTO `main_kpi_input` VALUES (135, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '564', '805', '', '', '', '', '', '', 'ร้อยละของผู้ใช้ ผู้เสพที่บำบัดครบตามเกณฑ์ที่กำหนดของแต่ละระบบหยุดเสพต่อเนื่องหลังจำหน่ายจากการบำบัด 3 เดือน  (3 month remission rate)', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:58:19.000000', '03400', NULL);
INSERT INTO `main_kpi_input` VALUES (136, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '52', '107', '', '', '', '', '', '', 'ร้อยละของผู้ใช้ ผู้เสพที่บำบัดครบตามเกณฑ์ที่กำหนดของแต่ละระบบหยุดเสพต่อเนื่องหลังจำหน่ายจากการบำบัด 3 เดือน  (3 month remission rate)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:03:17.000000', '03400', NULL);
INSERT INTO `main_kpi_input` VALUES (137, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '258', '540', '71', '144', '', '', '', '', '', '', 'ร้อยละของผู้ใช้ ผู้เสพที่บำบัดครบตามเกณฑ์ที่กำหนดของแต่ละระบบหยุดเสพต่อเนื่องหลังจำหน่ายจากการบำบัด 3 เดือน  (3 month remission rate)', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:30:04.000000', '03400', NULL);
INSERT INTO `main_kpi_input` VALUES (138, '00066', '0000-00-00', '1900-01-20', '162', '237', '40', '95', '28', '133', '25', '117', '39', '135', '104', '193', '215', '309', '130', '221', '33', '76', '43', '111', '78', '150', '', '', 'ร้อยละของผู้ใช้ ผู้เสพที่บำบัดครบตามเกณฑ์ที่กำหนดของแต่ละระบบหยุดเสพต่อเนื่องหลังจำหน่ายจากการบำบัด 3 เดือน  (3 month remission rate)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:00:20.000000', '03400', NULL);
INSERT INTO `main_kpi_input` VALUES (139, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ใช้ ผู้เสพที่บำบัดครบตามเกณฑ์ที่กำหนดของแต่ละระบบหยุดเสพต่อเนื่องหลังจำหน่ายจากการบำบัด 3 เดือน  (3 month remission rate)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03400', NULL);
INSERT INTO `main_kpi_input` VALUES (140, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '297', '726', '', '', '', '', '', '', 'ร้อยละของผู้ใช้ ผู้เสพที่บำบัดครบตามเกณฑ์ที่กำหนดของแต่ละระบบหยุดเสพต่อเนื่องหลังจำหน่ายจากการบำบัด 3 เดือน  (3 month remission rate)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:52:05.000000', '03400', NULL);
INSERT INTO `main_kpi_input` VALUES (141, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่เข้ารับการผ่าตัดแบบ One Day Surgery', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03600', NULL);
INSERT INTO `main_kpi_input` VALUES (142, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่เข้ารับการผ่าตัดแบบ One Day Surgery', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03600', NULL);
INSERT INTO `main_kpi_input` VALUES (143, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '9', '9', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่เข้ารับการผ่าตัดแบบ One Day Surgery', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:48:24.000000', '03600', NULL);
INSERT INTO `main_kpi_input` VALUES (144, '00065', '0000-00-00', '1900-01-20', '0', '0', '0', '0', '0', '0', '51', '48', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่เข้ารับการผ่าตัดแบบ One Day Surgery', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:55:56.000000', '03600', NULL);
INSERT INTO `main_kpi_input` VALUES (145, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '46', '82', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่เข้ารับการผ่าตัดแบบ One Day Surgery', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:49:18.000000', '03600', NULL);
INSERT INTO `main_kpi_input` VALUES (146, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่เข้ารับการผ่าตัดแบบ One Day Surgery', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:12:12.000000', '03600', NULL);
INSERT INTO `main_kpi_input` VALUES (147, '00068', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผู้ป่วยที่เข้ารับการผ่าตัดแบบ One Day Surgery', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03600', NULL);
INSERT INTO `main_kpi_input` VALUES (148, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของประชากรเข้าถึงบริการการแพทย์ฉุกเฉิน', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03800', NULL);
INSERT INTO `main_kpi_input` VALUES (149, '00063', '0000-00-00', '1900-01-20', '74', '117', '84', '131', '88', '134', '101', '156', '83', '107', '90', '135', '85', '136', '63', '112', '69', '125', '', '', '', '', '', '', 'ร้อยละของประชากรเข้าถึงบริการการแพทย์ฉุกเฉิน', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:22:35.000000', '03800', NULL);
INSERT INTO `main_kpi_input` VALUES (150, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '679', '2795', '', '', '', '', '', '', 'ร้อยละของประชากรเข้าถึงบริการการแพทย์ฉุกเฉิน', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:43:14.000000', '03800', NULL);
INSERT INTO `main_kpi_input` VALUES (151, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '693', '3267', '', '', '', '', '', '', '', '', 'ร้อยละของประชากรเข้าถึงบริการการแพทย์ฉุกเฉิน', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:09:57.000000', '03800', NULL);
INSERT INTO `main_kpi_input` VALUES (152, '00066', '0000-00-00', '1900-01-20', '348', '2600', '376', '2562', '407', '2695', '450', '2665', '347', '2417', '387', '2404', '347', '2180', '354', '2151', '331', '2187', '', '', '', '', '', '', 'ร้อยละของประชากรเข้าถึงบริการการแพทย์ฉุกเฉิน', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:50:12.000000', '03800', NULL);
INSERT INTO `main_kpi_input` VALUES (153, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของประชากรเข้าถึงบริการการแพทย์ฉุกเฉิน', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03800', NULL);
INSERT INTO `main_kpi_input` VALUES (154, '00068', '0000-00-00', '1900-01-20', '210', '1064', '202', '1085', '255', '1105', '235', '1008', '217', '900', '202', '958', '195', '867', '178', '925', '193', '863', '', '', '', '', '', '', 'ร้อยละของประชากรเข้าถึงบริการการแพทย์ฉุกเฉิน', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:36:07.000000', '03800', NULL);
INSERT INTO `main_kpi_input` VALUES (155, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของจังหวัดที่มีระบบจัดการปัจจัยเสี่ยงจากสิ่งแวดล้อมและสุขภาพอย่างบูรณาการมีประสิทธิภาพและยั่งยืน', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03900', NULL);
INSERT INTO `main_kpi_input` VALUES (156, '00063', '0000-00-00', '1900-01-20', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', '', '', '', '', 'ร้อยละของจังหวัดที่มีระบบจัดการปัจจัยเสี่ยงจากสิ่งแวดล้อมและสุขภาพอย่างบูรณาการมีประสิทธิภาพและยั่งยืน', '', '0000-00-00 00:00:00.000000', '1900-01-20 17:07:13.000000', '03900', 'ประเมินตนเองผ่านเกณฑืระดับพื้นฐาน ');
INSERT INTO `main_kpi_input` VALUES (157, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของจังหวัดที่มีระบบจัดการปัจจัยเสี่ยงจากสิ่งแวดล้อมและสุขภาพอย่างบูรณาการมีประสิทธิภาพและยั่งยืน', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03900', NULL);
INSERT INTO `main_kpi_input` VALUES (158, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของจังหวัดที่มีระบบจัดการปัจจัยเสี่ยงจากสิ่งแวดล้อมและสุขภาพอย่างบูรณาการมีประสิทธิภาพและยั่งยืน', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:47:31.000000', '03900', NULL);
INSERT INTO `main_kpi_input` VALUES (159, '00066', '0000-00-00', '1900-01-20', '', '1', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของจังหวัดที่มีระบบจัดการปัจจัยเสี่ยงจากสิ่งแวดล้อมและสุขภาพอย่างบูรณาการมีประสิทธิภาพและยั่งยืน', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:28:30.000000', '03900', NULL);
INSERT INTO `main_kpi_input` VALUES (160, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของจังหวัดที่มีระบบจัดการปัจจัยเสี่ยงจากสิ่งแวดล้อมและสุขภาพอย่างบูรณาการมีประสิทธิภาพและยั่งยืน', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03900', NULL);
INSERT INTO `main_kpi_input` VALUES (161, '00068', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของจังหวัดที่มีระบบจัดการปัจจัยเสี่ยงจากสิ่งแวดล้อมและสุขภาพอย่างบูรณาการมีประสิทธิภาพและยั่งยืน', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03900', NULL);
INSERT INTO `main_kpi_input` VALUES (162, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จำนวนหน่วยงานที่เป็นองค์กรแห่งความสุข', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04300', NULL);
INSERT INTO `main_kpi_input` VALUES (163, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จำนวนหน่วยงานที่เป็นองค์กรแห่งความสุข', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04300', NULL);
INSERT INTO `main_kpi_input` VALUES (164, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18', '18', '', '', '', '', '', '', 'จำนวนหน่วยงานที่เป็นองค์กรแห่งความสุข', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:14:42.000000', '04300', NULL);
INSERT INTO `main_kpi_input` VALUES (165, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7', '7', '', '', '', '', '', '', '', '', 'จำนวนหน่วยงานที่เป็นองค์กรแห่งความสุข', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:23:54.000000', '04300', NULL);
INSERT INTO `main_kpi_input` VALUES (166, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '40', '40', '', '', '', '', '', '', 'จำนวนหน่วยงานที่เป็นองค์กรแห่งความสุข', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:59:56.000000', '04300', NULL);
INSERT INTO `main_kpi_input` VALUES (167, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '', 'จำนวนหน่วยงานที่เป็นองค์กรแห่งความสุข', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:14:46.000000', '04300', NULL);
INSERT INTO `main_kpi_input` VALUES (168, '00068', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'จำนวนหน่วยงานที่เป็นองค์กรแห่งความสุข', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04300', NULL);
INSERT INTO `main_kpi_input` VALUES (169, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของหน่วยงานในสังกัดกระทรวงสาธารณสุขผ่านเกณฑ์การประเมิน ITA', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04400', NULL);
INSERT INTO `main_kpi_input` VALUES (170, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของหน่วยงานในสังกัดกระทรวงสาธารณสุขผ่านเกณฑ์การประเมิน ITA', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04400', NULL);
INSERT INTO `main_kpi_input` VALUES (171, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '7', '18', '', '', '', '', '12', '18', '', '', '', '', '18', '18', '', '', '', '', '', '', 'ร้อยละของหน่วยงานในสังกัดกระทรวงสาธารณสุขผ่านเกณฑ์การประเมิน ITA', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:29:41.000000', '04400', NULL);
INSERT INTO `main_kpi_input` VALUES (172, '00065', '0000-00-00', '1900-01-20', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', 'ร้อยละของหน่วยงานในสังกัดกระทรวงสาธารณสุขผ่านเกณฑ์การประเมิน ITA', '', '0000-00-00 00:00:00.000000', '1900-01-20 12:44:57.000000', '04400', NULL);
INSERT INTO `main_kpi_input` VALUES (173, '00066', '0000-00-00', '1900-01-20', '', '40', '', '', '5', '', '', '', '', '', '4', '', '', '', '', '', '28', '', '', '', '', '', '', '', 'ร้อยละของหน่วยงานในสังกัดกระทรวงสาธารณสุขผ่านเกณฑ์การประเมิน ITA', '', '0000-00-00 00:00:00.000000', '1900-01-20 07:56:20.000000', '04400', NULL);
INSERT INTO `main_kpi_input` VALUES (174, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '11', '11', '', '', '', '', '', '', 'ร้อยละของหน่วยงานในสังกัดกระทรวงสาธารณสุขผ่านเกณฑ์การประเมิน ITA', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:18:01.000000', '04400', NULL);
INSERT INTO `main_kpi_input` VALUES (175, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '11', '20', '', '', '', '', '9', '20', '', '', '', '', '9', '20', '', '', '', '', '', '', 'ร้อยละของหน่วยงานในสังกัดกระทรวงสาธารณสุขผ่านเกณฑ์การประเมิน ITA', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:01:05.000000', '04400', NULL);
INSERT INTO `main_kpi_input` VALUES (176, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'รพ.ศ. รพท. ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04601', NULL);
INSERT INTO `main_kpi_input` VALUES (177, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '', 'รพ.ศ. รพท. ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:25:39.000000', '04601', NULL);
INSERT INTO `main_kpi_input` VALUES (178, '00064', '0000-00-00', '1900-01-20', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '', '', '', '', 'รพ.ศ. รพท. ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:09:02.000000', '04601', NULL);
INSERT INTO `main_kpi_input` VALUES (179, '00065', '0000-00-00', '1900-01-20', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', 'รพ.ศ. รพท. ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:00:25.000000', '04601', NULL);
INSERT INTO `main_kpi_input` VALUES (180, '00066', '0000-00-00', '1900-01-20', '2', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'รพ.ศ. รพท. ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:41:29.000000', '04601', '-');
INSERT INTO `main_kpi_input` VALUES (181, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '', 'รพ.ศ. รพท. ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:15:58.000000', '04601', NULL);
INSERT INTO `main_kpi_input` VALUES (182, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '0', '1', '', '', '', '', '0', '1', '', '', '', '', '1', '1', '', '', '', '', '', '', 'รพ.ศ. รพท. ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:52:09.000000', '04601', NULL);
INSERT INTO `main_kpi_input` VALUES (183, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'รพ.ชุมชน ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04602', NULL);
INSERT INTO `main_kpi_input` VALUES (184, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '8', '', '', '', '', '', '', 'รพ.ชุมชน ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:26:07.000000', '04602', NULL);
INSERT INTO `main_kpi_input` VALUES (185, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'รพ.ชุมชน ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04602', NULL);
INSERT INTO `main_kpi_input` VALUES (186, '00065', '0000-00-00', '1900-01-20', '2', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', 'รพ.ชุมชน ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:03:44.000000', '04602', NULL);
INSERT INTO `main_kpi_input` VALUES (187, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '17', '18', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'รพ.ชุมชน ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:43:46.000000', '04602', '-');
INSERT INTO `main_kpi_input` VALUES (188, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4', '4', '', '', '', '', '', '', 'รพ.ชุมชน ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:16:19.000000', '04602', NULL);
INSERT INTO `main_kpi_input` VALUES (189, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '7', '10', '', '', '', '', '8', '10', '', '', '', '', '8', '10', '', '', '', '', '', '', 'รพ.ชุมชน ผ่านการรับรอง HA ขั้น 3', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:47:36.000000', '04602', NULL);
INSERT INTO `main_kpi_input` VALUES (190, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'มีการใช้ Application สำหรับ PCC ใน PCC ทุกแห่ง', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '05000', NULL);
INSERT INTO `main_kpi_input` VALUES (191, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'มีการใช้ Application สำหรับ PCC ใน PCC ทุกแห่ง', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '05000', NULL);
INSERT INTO `main_kpi_input` VALUES (192, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'มีการใช้ Application สำหรับ PCC ใน PCC ทุกแห่ง', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '05000', NULL);
INSERT INTO `main_kpi_input` VALUES (193, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', '3', '', '', '', '', '', '', 'มีการใช้ Application สำหรับ PCC ใน PCC ทุกแห่ง', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:47:09.000000', '05000', NULL);
INSERT INTO `main_kpi_input` VALUES (194, '00066', '0000-00-00', '1900-01-20', '0', '17', '0', '', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '17', '', '', '', '', '', '', '', 'มีการใช้ Application สำหรับ PCC ใน PCC ทุกแห่ง', '', '0000-00-00 00:00:00.000000', '1900-01-20 07:31:36.000000', '05000', NULL);
INSERT INTO `main_kpi_input` VALUES (195, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '9', '', '', '', '', '', '', 'มีการใช้ Application สำหรับ PCC ใน PCC ทุกแห่ง', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:44:20.000000', '05000', NULL);
INSERT INTO `main_kpi_input` VALUES (196, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '0', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'มีการใช้ Application สำหรับ PCC ใน PCC ทุกแห่ง', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:19:45.000000', '05000', NULL);
INSERT INTO `main_kpi_input` VALUES (197, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน ระดับ 7', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '05300', NULL);
INSERT INTO `main_kpi_input` VALUES (198, '00063', '0000-00-00', '1900-01-20', '0', '9', '0', '', '0', '', '0', '', '0', '', '0', '', '0', '', '0', '', '', '', '', '', '', '', '', '', 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน ระดับ 7', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:54:48.000000', '05300', NULL);
INSERT INTO `main_kpi_input` VALUES (199, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน ระดับ 7', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:17:35.000000', '05300', NULL);
INSERT INTO `main_kpi_input` VALUES (200, '00065', '0000-00-00', '1900-01-20', '0', '3', '0', '3', '0', '3', '0', '3', '0', '3', '0', '3', '0', '3', '0', '3', '0', '3', '', '', '', '', '', '', 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน ระดับ 7', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:13:51.000000', '05300', NULL);
INSERT INTO `main_kpi_input` VALUES (201, '00066', '0000-00-00', '1900-01-20', '0', '20', '0', '', '0', '', '0', '', '0', '', '0', '', '0', '', '0', '', '0', '', '0', '', '', '', '', '', 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน ระดับ 7', '', '0000-00-00 00:00:00.000000', '1900-01-20 09:33:46.000000', '05300', NULL);
INSERT INTO `main_kpi_input` VALUES (202, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '5', '', '', '', '', '', '', 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน ระดับ 7', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:19:08.000000', '05300', NULL);
INSERT INTO `main_kpi_input` VALUES (203, '00068', '0000-00-00', '1900-01-20', '0', '11', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '', '0', '', '0', '', '0', 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน ระดับ 7', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:12:29.000000', '05300', NULL);
INSERT INTO `main_kpi_input` VALUES (204, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(ผักและผลไม้สด)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01101', NULL);
INSERT INTO `main_kpi_input` VALUES (205, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(ผักและผลไม้สด)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:23:17.000000', '01101', 'อยู่ในช่วงการรอผลการตรวจวิเคราะห์');
INSERT INTO `main_kpi_input` VALUES (206, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7', '7', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(ผักและผลไม้สด)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:33:44.000000', '01101', NULL);
INSERT INTO `main_kpi_input` VALUES (207, '00065', '0000-00-00', '1900-01-20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5', '7', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(ผักและผลไม้สด)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:17:25.000000', '01101', NULL);
INSERT INTO `main_kpi_input` VALUES (208, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(ผักและผลไม้สด)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:05:50.000000', '01101', 'รอผลวิเคราะห์');
INSERT INTO `main_kpi_input` VALUES (209, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(ผักและผลไม้สด)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01101', NULL);
INSERT INTO `main_kpi_input` VALUES (210, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '0', '0', '', '', '', '', '0', '0', '', '', '', '', '0', '0', '', '', '', '', '7', '7', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(ผักและผลไม้สด)', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:29:19.000000', '01101', NULL);
INSERT INTO `main_kpi_input` VALUES (211, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(นมโรงเรียน)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01102', NULL);
INSERT INTO `main_kpi_input` VALUES (212, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(นมโรงเรียน)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:24:29.000000', '01102', 'ไม่มีสถานที่ผลิตนมโรงเรียน จึงไม่สามารถเก็บตัวอย่างตรวจวิเคราะห์ได้\r\n');
INSERT INTO `main_kpi_input` VALUES (213, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(นมโรงเรียน)', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:24:26.000000', '01102', 'ไม่มีการส่งตรวจวิเคราะห์');
INSERT INTO `main_kpi_input` VALUES (214, '00065', '0000-00-00', '1900-01-20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(นมโรงเรียน)', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:18:41.000000', '01102', 'ไม่มีสถานที่ผลิตนมโรงเรียนในจังหวัดภูเก็ต');
INSERT INTO `main_kpi_input` VALUES (215, '00066', '0000-00-00', '1900-01-20', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '1', '1', '1', '1', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(นมโรงเรียน)', '', '0000-00-00 00:00:00.000000', '1900-01-20 09:31:47.000000', '01102', NULL);
INSERT INTO `main_kpi_input` VALUES (216, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(นมโรงเรียน)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01102', NULL);
INSERT INTO `main_kpi_input` VALUES (217, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '0', '0', '', '', '', '', '0', '0', '', '', '', '', '0', '0', '', '', '', '', '0', '0', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด(นมโรงเรียน)', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:32:25.000000', '01102', 'สถานที่ผลิตนมในจังหวัดชุมพร 1 แห่ง แจ้งระงับการผลิต และไม่ได้ขอโควต้าผลิตนมโรงเรียน');
INSERT INTO `main_kpi_input` VALUES (218, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับพื้นฐานขึ้นไป', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01201', NULL);
INSERT INTO `main_kpi_input` VALUES (219, '00063', '0000-00-00', '1900-01-20', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับพื้นฐานขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:43:31.000000', '01201', NULL);
INSERT INTO `main_kpi_input` VALUES (220, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับพื้นฐานขึ้นไป', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01201', NULL);
INSERT INTO `main_kpi_input` VALUES (221, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '3', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับพื้นฐานขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:58:02.000000', '01201', NULL);
INSERT INTO `main_kpi_input` VALUES (222, '00066', '0000-00-00', '1900-01-20', '23', '23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับพื้นฐานขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:47:26.000000', '01201', NULL);
INSERT INTO `main_kpi_input` VALUES (223, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับพื้นฐานขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:45:40.000000', '01201', NULL);
INSERT INTO `main_kpi_input` VALUES (224, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '11', '11', '', '', '', '', '11', '11', '', '', '', '', '11', '11', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับพื้นฐานขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:26:57.000000', '01201', NULL);
INSERT INTO `main_kpi_input` VALUES (225, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีขึ้นไป', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01202', NULL);
INSERT INTO `main_kpi_input` VALUES (226, '00063', '0000-00-00', '1900-01-20', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:43:14.000000', '01202', NULL);
INSERT INTO `main_kpi_input` VALUES (227, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีขึ้นไป', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01202', NULL);
INSERT INTO `main_kpi_input` VALUES (228, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '3', '3', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:57:52.000000', '01202', NULL);
INSERT INTO `main_kpi_input` VALUES (229, '00066', '0000-00-00', '1900-01-20', '', '23', '', '', '', '', '', '', '23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:47:08.000000', '01202', NULL);
INSERT INTO `main_kpi_input` VALUES (230, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:46:31.000000', '01202', NULL);
INSERT INTO `main_kpi_input` VALUES (231, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '11', '11', '', '', '', '', '11', '11', '', '', '', '', '11', '11', '11', '11', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:37:23.000000', '01202', NULL);
INSERT INTO `main_kpi_input` VALUES (232, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมากขึ้นไป', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01203', NULL);
INSERT INTO `main_kpi_input` VALUES (233, '00063', '0000-00-00', '1900-01-20', '6', '9', '6', '9', '6', '9', '6', '9', '6', '9', '6', '9', '6', '9', '9', '9', '9', '9', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมากขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 17:08:21.000000', '01203', 'เริ่มประเมินปี ๖๒ เดือนพฤษภาคม ๖๒');
INSERT INTO `main_kpi_input` VALUES (234, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมากขึ้นไป', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01203', NULL);
INSERT INTO `main_kpi_input` VALUES (235, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '3', '3', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมากขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:55:54.000000', '01203', NULL);
INSERT INTO `main_kpi_input` VALUES (236, '00066', '0000-00-00', '1900-01-20', '', '23', '', '', '', '', '', '', '', '', '', '', '', '', '19', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมากขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:48:18.000000', '01203', NULL);
INSERT INTO `main_kpi_input` VALUES (237, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมากขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:46:56.000000', '01203', NULL);
INSERT INTO `main_kpi_input` VALUES (238, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '3', '11', '', '', '', '', '3', '11', '', '', '', '', '5', '11', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมากขึ้นไป', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:19:37.000000', '01203', NULL);
INSERT INTO `main_kpi_input` VALUES (239, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมาก Plus', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01204', NULL);
INSERT INTO `main_kpi_input` VALUES (240, '00063', '0000-00-00', '1900-01-20', '0', '9', '0', '9', '0', '9', '0', '9', '0', '9', '0', '9', '0', '9', '3', '9', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมาก Plus', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:57:49.000000', '01204', 'ศอ.11 ประเมินรับรองแล้ว ๓ แห่\r\n รอผลอีก ๒ แห่ง รพ.อ่าวลึก  รพ.คลองท่อม');
INSERT INTO `main_kpi_input` VALUES (241, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมาก Plus', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01204', NULL);
INSERT INTO `main_kpi_input` VALUES (242, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '3', '3', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมาก Plus', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:57:07.000000', '01204', NULL);
INSERT INTO `main_kpi_input` VALUES (243, '00066', '0000-00-00', '1900-01-20', '', '23', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมาก Plus', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:48:41.000000', '01204', NULL);
INSERT INTO `main_kpi_input` VALUES (244, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', '1', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมาก Plus', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:47:33.000000', '01204', NULL);
INSERT INTO `main_kpi_input` VALUES (245, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '0', '11', '', '', '', '', '0', '11', '', '', '', '', '1', '11', '', '', '', '', '', '', 'ร้อยละโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนิน\r\nกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมาก Plus', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:26:28.000000', '01204', NULL);
INSERT INTO `main_kpi_input` VALUES (246, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 1', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01701', NULL);
INSERT INTO `main_kpi_input` VALUES (247, '00063', '0000-00-00', '1900-01-20', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 1', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:12:14.000000', '01701', NULL);
INSERT INTO `main_kpi_input` VALUES (248, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9', '9', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 1', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:19:02.000000', '01701', NULL);
INSERT INTO `main_kpi_input` VALUES (249, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', '3', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 1', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:24:44.000000', '01701', NULL);
INSERT INTO `main_kpi_input` VALUES (250, '00066', '0000-00-00', '1900-01-20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '20', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 1', '', '0000-00-00 00:00:00.000000', '1900-01-20 20:26:25.000000', '01701', NULL);
INSERT INTO `main_kpi_input` VALUES (251, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 1', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:56:52.000000', '01701', NULL);
INSERT INTO `main_kpi_input` VALUES (252, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '11', '11', '', '', '', '', '11', '11', '', '', '', '', '11', '11', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 1', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:53:10.000000', '01701', NULL);
INSERT INTO `main_kpi_input` VALUES (253, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 2', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01702', NULL);
INSERT INTO `main_kpi_input` VALUES (254, '00063', '0000-00-00', '1900-01-20', '4', '9', '5', '9', '5', '9', '5', '9', '6', '9', '6', '9', '6', '9', '6', '9', '6', '9', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 2', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:12:30.000000', '01702', NULL);
INSERT INTO `main_kpi_input` VALUES (255, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', '9', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 2', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:19:25.000000', '01702', NULL);
INSERT INTO `main_kpi_input` VALUES (256, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '3', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 2', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:24:06.000000', '01702', NULL);
INSERT INTO `main_kpi_input` VALUES (257, '00066', '0000-00-00', '1900-01-20', '9', '20', '11', '20', '11', '20', '13', '20', '13', '20', '13', '20', '14', '20', '13', '20', '15', '20', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 2', '', '0000-00-00 00:00:00.000000', '1900-01-20 20:27:44.000000', '01702', NULL);
INSERT INTO `main_kpi_input` VALUES (258, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 2', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:57:05.000000', '01702', NULL);
INSERT INTO `main_kpi_input` VALUES (259, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '5', '11', '', '', '', '', '7', '11', '', '', '', '', '8', '11', '', '', '', '', '', '', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้นที่ 2', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:59:39.000000', '01702', NULL);
INSERT INTO `main_kpi_input` VALUES (260, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละมูลค่าการใช้ยาสมุนไพรต่อยาแผนปัจจุบันเพิ่มขึ้น', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04002', NULL);
INSERT INTO `main_kpi_input` VALUES (261, '00063', '0000-00-00', '1900-01-20', '2427649', '79322129', '', '', '', '', '2300215', '78345051', '', '', '', '', '1352150', '52491221', '', '', '', '', '', '', '', '', '', '', 'ร้อยละมูลค่าการใช้ยาสมุนไพรต่อยาแผนปัจจุบันเพิ่มขึ้น', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:27:11.000000', '04002', NULL);
INSERT INTO `main_kpi_input` VALUES (262, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '915621', '62409299', '', '', '', '', '883202', '62060618', '', '', '', '', '436605', '38013149', '', '', '', '', '', '', 'ร้อยละมูลค่าการใช้ยาสมุนไพรต่อยาแผนปัจจุบันเพิ่มขึ้น', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:47:48.000000', '04002', NULL);
INSERT INTO `main_kpi_input` VALUES (263, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18332512', '7431036672', '', '', '', '', '', '', '', '', 'ร้อยละมูลค่าการใช้ยาสมุนไพรต่อยาแผนปัจจุบันเพิ่มขึ้น', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:18:37.000000', '04002', NULL);
INSERT INTO `main_kpi_input` VALUES (264, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '7184691', '472286527', '', '', '', '', '8121844', '424511802', '', '', '', '', '6442442', '398967847', '', '', '', '', '4887727', '231870060', 'ร้อยละมูลค่าการใช้ยาสมุนไพรต่อยาแผนปัจจุบันเพิ่มขึ้น', '', '0000-00-00 00:00:00.000000', '1900-01-20 07:58:42.000000', '04002', NULL);
INSERT INTO `main_kpi_input` VALUES (265, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละมูลค่าการใช้ยาสมุนไพรต่อยาแผนปัจจุบันเพิ่มขึ้น', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04002', NULL);
INSERT INTO `main_kpi_input` VALUES (266, '00068', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละมูลค่าการใช้ยาสมุนไพรต่อยาแผนปัจจุบันเพิ่มขึ้น', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04002', NULL);
INSERT INTO `main_kpi_input` VALUES (267, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด( ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมาย)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01103', NULL);
INSERT INTO `main_kpi_input` VALUES (268, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด( ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมาย)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01103', NULL);
INSERT INTO `main_kpi_input` VALUES (269, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6', '7', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด( ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมาย)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:43:20.000000', '01103', NULL);
INSERT INTO `main_kpi_input` VALUES (270, '00065', '0000-00-00', '1900-01-20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '6', '0', '0', '0', '0', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด( ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมาย)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:50:56.000000', '01103', NULL);
INSERT INTO `main_kpi_input` VALUES (271, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '0', '6', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด( ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมาย)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:06:05.000000', '01103', NULL);
INSERT INTO `main_kpi_input` VALUES (272, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด( ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมาย)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01103', NULL);
INSERT INTO `main_kpi_input` VALUES (273, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '0', '0', '', '', '', '', '0', '0', '', '', '', '', '0', '0', '', '', '', '', '4', '4', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด( ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมาย)', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:32:45.000000', '01103', NULL);
INSERT INTO `main_kpi_input` VALUES (274, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด (เครื่องสำอางค์)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01104', NULL);
INSERT INTO `main_kpi_input` VALUES (275, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด (เครื่องสำอางค์)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01104', NULL);
INSERT INTO `main_kpi_input` VALUES (276, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '0', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด (เครื่องสำอางค์)', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:25:23.000000', '01104', 'ไม่มีการส่งตรวจวิเคราะห์');
INSERT INTO `main_kpi_input` VALUES (277, '00065', '0000-00-00', '1900-01-20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '3', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด (เครื่องสำอางค์)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:51:14.000000', '01104', 'เครื่องสำอาง OTOP');
INSERT INTO `main_kpi_input` VALUES (278, '00066', '0000-00-00', '1900-01-20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3', '3', '3', '3', '0', '0', '0', '0', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด (เครื่องสำอางค์)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:51:38.000000', '01104', NULL);
INSERT INTO `main_kpi_input` VALUES (279, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด (เครื่องสำอางค์)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01104', NULL);
INSERT INTO `main_kpi_input` VALUES (280, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '0', '0', '', '', '', '', '0', '0', '', '', '', '', '0', '0', '', '', '', '', '0', '0', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบมีความปลอดภัยตามเกณฑ์ที่กำหนด (เครื่องสำอางค์)', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:33:01.000000', '01104', 'จังหวัดชุมพร ไม่ได้อยู่ในเป้าหมายที่ถูกคัดเลือกให้เป็นตัวแทนภาคในการสุ่มเก็บตัวอย่างตรวจวิเคราะห์');
INSERT INTO `main_kpi_input` VALUES (281, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของยาแผนโบราณกลุ่มเสี่ยงปลอดภัย ไม่พบการปลอมปนสเตียรอยด์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01105', NULL);
INSERT INTO `main_kpi_input` VALUES (282, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของยาแผนโบราณกลุ่มเสี่ยงปลอดภัย ไม่พบการปลอมปนสเตียรอยด์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01105', NULL);
INSERT INTO `main_kpi_input` VALUES (283, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '11', '12', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของยาแผนโบราณกลุ่มเสี่ยงปลอดภัย ไม่พบการปลอมปนสเตียรอยด์', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:06:19.000000', '01105', NULL);
INSERT INTO `main_kpi_input` VALUES (284, '00065', '0000-00-00', '1900-01-20', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '1', '1', '0', '0', '', '', '', '', '', '', 'ร้อยละของยาแผนโบราณกลุ่มเสี่ยงปลอดภัย ไม่พบการปลอมปนสเตียรอยด์', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:57:14.000000', '01105', NULL);
INSERT INTO `main_kpi_input` VALUES (285, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9', '12', '', '', '', '', '', '', 'ร้อยละของยาแผนโบราณกลุ่มเสี่ยงปลอดภัย ไม่พบการปลอมปนสเตียรอยด์', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:31:16.000000', '01105', NULL);
INSERT INTO `main_kpi_input` VALUES (286, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของยาแผนโบราณกลุ่มเสี่ยงปลอดภัย ไม่พบการปลอมปนสเตียรอยด์', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01105', NULL);
INSERT INTO `main_kpi_input` VALUES (287, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '0', '0', '', '', '', '', '0', '0', '', '', '', '', '36', '38', '', '', '', '', '', '', 'ร้อยละของยาแผนโบราณกลุ่มเสี่ยงปลอดภัย ไม่พบการปลอมปนสเตียรอยด์', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:24:13.000000', '01105', NULL);
INSERT INTO `main_kpi_input` VALUES (288, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ที่รอดชีวิตและมีคะแนน Barthel index <15 รวมทั้งคะแนน Barthel index >15 with multiple impairment ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20\r\n', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03502', NULL);
INSERT INTO `main_kpi_input` VALUES (289, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '11', '14', '15', '18', '22', '23', '', '', '', '', '', '', 'ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ที่รอดชีวิตและมีคะแนน Barthel index <15 รวมทั้งคะแนน Barthel index >15 with multiple impairment ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20\r\n', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:35:01.000000', '03502', NULL);
INSERT INTO `main_kpi_input` VALUES (290, '00064', '0000-00-00', '1900-01-20', '25', '25', '41', '41', '12', '18', '21', '31', '9', '32', '11', '31', '4', '22', '5', '26', '0', '32', '', '', '', '', '', '', 'ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ที่รอดชีวิตและมีคะแนน Barthel index <15 รวมทั้งคะแนน Barthel index >15 with multiple impairment ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20\r\n', '', '0000-00-00 00:00:00.000000', '1900-01-20 09:17:32.000000', '03502', 'ตั้งแต่เดือนมกราคมเป็นต้นไปเยี่ยมไม่ครบ 6 เดือน จำนวนที่ได้คือคนที่มีBI น้อยกว่า 20 ');
INSERT INTO `main_kpi_input` VALUES (291, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '108', '121', '', '', '', '', '', '', 'ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ที่รอดชีวิตและมีคะแนน Barthel index <15 รวมทั้งคะแนน Barthel index >15 with multiple impairment ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20\r\n', '', '0000-00-00 00:00:00.000000', '1900-01-20 11:31:50.000000', '03502', NULL);
INSERT INTO `main_kpi_input` VALUES (292, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '119', '160', '', '', '', '', '', '', 'ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ที่รอดชีวิตและมีคะแนน Barthel index <15 รวมทั้งคะแนน Barthel index >15 with multiple impairment ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20\r\n', '', '0000-00-00 00:00:00.000000', '1900-01-20 08:58:38.000000', '03502', NULL);
INSERT INTO `main_kpi_input` VALUES (293, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ที่รอดชีวิตและมีคะแนน Barthel index <15 รวมทั้งคะแนน Barthel index >15 with multiple impairment ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20\r\n', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03502', NULL);
INSERT INTO `main_kpi_input` VALUES (294, '00068', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ที่รอดชีวิตและมีคะแนน Barthel index <15 รวมทั้งคะแนน Barthel index >15 with multiple impairment ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20\r\n', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '03502', NULL);
INSERT INTO `main_kpi_input` VALUES (295, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขจังหวัดที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04501', NULL);
INSERT INTO `main_kpi_input` VALUES (296, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขจังหวัดที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04501', NULL);
INSERT INTO `main_kpi_input` VALUES (297, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขจังหวัดที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:30:57.000000', '04501', NULL);
INSERT INTO `main_kpi_input` VALUES (298, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขจังหวัดที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 09:39:09.000000', '04501', NULL);
INSERT INTO `main_kpi_input` VALUES (299, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขจังหวัดที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:46:25.000000', '04501', '-');
INSERT INTO `main_kpi_input` VALUES (300, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขจังหวัดที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:22:57.000000', '04501', NULL);
INSERT INTO `main_kpi_input` VALUES (301, '00068', '0000-00-00', '1900-01-20', '1', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขจังหวัดที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:48:47.000000', '04501', NULL);
INSERT INTO `main_kpi_input` VALUES (302, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขอำเภอที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04502', NULL);
INSERT INTO `main_kpi_input` VALUES (303, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '100', '100', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขอำเภอที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:20:31.000000', '04502', NULL);
INSERT INTO `main_kpi_input` VALUES (304, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8', '8', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขอำเภอที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:29:11.000000', '04502', NULL);
INSERT INTO `main_kpi_input` VALUES (305, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', '3', '', '', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขอำเภอที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:14:05.000000', '04502', NULL);
INSERT INTO `main_kpi_input` VALUES (306, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '19', '19', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขอำเภอที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:47:39.000000', '04502', '-');
INSERT INTO `main_kpi_input` VALUES (307, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '5', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขอำเภอที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:23:09.000000', '04502', NULL);
INSERT INTO `main_kpi_input` VALUES (308, '00068', '0000-00-00', '1900-01-20', '8', '8', '', '', '', '', '', '', '', '', '8', '8', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขอำเภอที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:35:30.000000', '04502', NULL);
INSERT INTO `main_kpi_input` VALUES (309, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 5ดาว(สะสม)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04701', NULL);
INSERT INTO `main_kpi_input` VALUES (310, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '54', '72', '', '', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 5ดาว(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:03:27.000000', '04701', NULL);
INSERT INTO `main_kpi_input` VALUES (311, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '52', '64', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 5ดาว(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:20:49.000000', '04701', NULL);
INSERT INTO `main_kpi_input` VALUES (312, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '6', '21', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 5ดาว(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:54:53.000000', '04701', NULL);
INSERT INTO `main_kpi_input` VALUES (313, '00066', '0000-00-00', '1900-01-20', '77', '166', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '120', '166', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 5ดาว(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:37:05.000000', '04701', NULL);
INSERT INTO `main_kpi_input` VALUES (314, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '42', '45', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 5ดาว(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:52:01.000000', '04701', NULL);
INSERT INTO `main_kpi_input` VALUES (315, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '72', '94', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 5ดาว(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:44:34.000000', '04701', 'จังหวัดชุมพร มี รพ.สต.ผ่านเกณฑ์ฯ ระดับ 5 ดาว (สะสม) รวม 72 แห่ง คิดเป็นร้อยละ 76.60');
INSERT INTO `main_kpi_input` VALUES (316, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 3ดาวขึ้นไป(สะสม)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04702', NULL);
INSERT INTO `main_kpi_input` VALUES (317, '00063', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '72', '72', '', '', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 3ดาวขึ้นไป(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:06:15.000000', '04702', NULL);
INSERT INTO `main_kpi_input` VALUES (318, '00064', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '64', '64', '', '', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 3ดาวขึ้นไป(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:22:36.000000', '04702', NULL);
INSERT INTO `main_kpi_input` VALUES (319, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '21', '21', '', '', '', '', '0', '0', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 3ดาวขึ้นไป(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 14:52:09.000000', '04702', NULL);
INSERT INTO `main_kpi_input` VALUES (320, '00066', '0000-00-00', '1900-01-20', '166', '166', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '166', '166', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 3ดาวขึ้นไป(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:46:58.000000', '04702', NULL);
INSERT INTO `main_kpi_input` VALUES (321, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '42', '47', '', '', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 3ดาวขึ้นไป(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 15:52:40.000000', '04702', NULL);
INSERT INTO `main_kpi_input` VALUES (322, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '94', '94', '', '', '', '', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 3ดาวขึ้นไป(สะสม)', '', '0000-00-00 00:00:00.000000', '1900-01-20 13:25:25.000000', '04702', NULL);
INSERT INTO `main_kpi_input` VALUES (323, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital ( รพศ./รพท )', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04901', NULL);
INSERT INTO `main_kpi_input` VALUES (324, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital ( รพศ./รพท )', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04901', NULL);
INSERT INTO `main_kpi_input` VALUES (325, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital ( รพศ./รพท )', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04901', NULL);
INSERT INTO `main_kpi_input` VALUES (326, '00065', '0000-00-00', '1900-01-20', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital ( รพศ./รพท )', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:04:47.000000', '04901', NULL);
INSERT INTO `main_kpi_input` VALUES (327, '00066', '0000-00-00', '1900-01-20', '0', '2', '0', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital ( รพศ./รพท )', '', '0000-00-00 00:00:00.000000', '1900-01-20 07:38:18.000000', '04901', NULL);
INSERT INTO `main_kpi_input` VALUES (328, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital ( รพศ./รพท )', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:36:20.000000', '04901', NULL);
INSERT INTO `main_kpi_input` VALUES (329, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0', '1', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital ( รพศ./รพท )', '', '0000-00-00 00:00:00.000000', '1900-01-20 02:35:35.000000', '04901', NULL);
INSERT INTO `main_kpi_input` VALUES (330, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (รพช)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04902', NULL);
INSERT INTO `main_kpi_input` VALUES (331, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (รพช)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04902', NULL);
INSERT INTO `main_kpi_input` VALUES (332, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (รพช)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04902', NULL);
INSERT INTO `main_kpi_input` VALUES (333, '00065', '0000-00-00', '1900-01-20', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '0', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (รพช)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:11:17.000000', '04902', NULL);
INSERT INTO `main_kpi_input` VALUES (334, '00066', '0000-00-00', '1900-01-20', '', '18', '', '', '5', '', '', '', '', '', '5', '', '', '', '', '', '2', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (รพช)', '', '0000-00-00 00:00:00.000000', '1900-01-20 07:41:56.000000', '04902', NULL);
INSERT INTO `main_kpi_input` VALUES (335, '00067', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', '4', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (รพช)', '', '0000-00-00 00:00:00.000000', '1900-01-20 10:36:46.000000', '04902', NULL);
INSERT INTO `main_kpi_input` VALUES (336, '00068', '0000-00-00', '1900-01-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', '10', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (รพช)', '', '0000-00-00 00:00:00.000000', '1900-01-20 02:36:27.000000', '04902', NULL);
INSERT INTO `main_kpi_input` VALUES (337, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (โรงพยาบาลสังกัดกรมวิชาการ)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04903', NULL);
INSERT INTO `main_kpi_input` VALUES (338, '00063', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (โรงพยาบาลสังกัดกรมวิชาการ)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04903', NULL);
INSERT INTO `main_kpi_input` VALUES (339, '00064', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (โรงพยาบาลสังกัดกรมวิชาการ)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04903', NULL);
INSERT INTO `main_kpi_input` VALUES (340, '00065', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (โรงพยาบาลสังกัดกรมวิชาการ)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04903', NULL);
INSERT INTO `main_kpi_input` VALUES (341, '00066', '0000-00-00', '1900-01-20', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (โรงพยาบาลสังกัดกรมวิชาการ)', '', '0000-00-00 00:00:00.000000', '1900-01-20 20:06:08.000000', '04903', NULL);
INSERT INTO `main_kpi_input` VALUES (342, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (โรงพยาบาลสังกัดกรมวิชาการ)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04903', NULL);
INSERT INTO `main_kpi_input` VALUES (343, '00068', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'เขตสุขภาพมีการดำเนินงาน Digital Transformation เพื่อก้าวสู่การเป็น Smart Hospital (โรงพยาบาลสังกัดกรมวิชาการ)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '04903', NULL);
INSERT INTO `main_kpi_input` VALUES (344, '00062', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละความครอบคลุมการรักษาผู้ป่วยวัณโรครายใหม่และกลับเป็นซ้ำ (TB Treatment Coverage)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01601', NULL);
INSERT INTO `main_kpi_input` VALUES (345, '00063', '0000-00-00', '1900-01-20', '27', '733', '38', '', '46', '', '37', '', '30', '', '32', '', '28', '', '55', '', '29', '', '35', '', '59', '', '45', '', 'ร้อยละความครอบคลุมการรักษาผู้ป่วยวัณโรครายใหม่และกลับเป็นซ้ำ (TB Treatment Coverage)', '', '0000-00-00 00:00:00.000000', '1900-01-20 01:58:03.000000', '01601', 'Pop :Krabi ณ 30 กย 61 จำนวน ปชช 469610 จำนวนคาดปะมาณการผู้ป่วยวัณโรครายใหม่และกลับเป็นซ้ำ 156/100000 ปชก เท่ากับ 156X469610/100000=733 ราย ต้องค้นหาและขึ้นทะเบียนรักษา ร้อยละ82.5 เท่ากับจำนวน 604 ราย  /จำนวนผู้ป่วยวัณโรคใหม่และกลับเป็นซ้ำ ขึ้นทะเบียนรักษา ณ 30 กย 62 จำนวน 4ุ61 ราย ร้อยละ 62.89');
INSERT INTO `main_kpi_input` VALUES (346, '00064', '0000-00-00', '1900-01-20', '21', '417', '22', '', '18', '', '25', '', '24', '', '24', '', '20', '', '16', '', '28', '', '49', '', '20', '', '3', '', 'ร้อยละความครอบคลุมการรักษาผู้ป่วยวัณโรครายใหม่และกลับเป็นซ้ำ (TB Treatment Coverage)', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:34:48.000000', '01601', NULL);
INSERT INTO `main_kpi_input` VALUES (347, '00065', '0000-00-00', '1900-01-20', '', '', '', '', '207', '630', '', '', '', '', '205', '', '', '', '', '', '180', '', '', '', '', '', '268', '', 'ร้อยละความครอบคลุมการรักษาผู้ป่วยวัณโรครายใหม่และกลับเป็นซ้ำ (TB Treatment Coverage)', '', '0000-00-00 00:00:00.000000', '1900-01-20 07:40:41.000000', '01601', NULL);
INSERT INTO `main_kpi_input` VALUES (348, '00066', '0000-00-00', '1900-01-20', '', '', '', '', '273', '', '', '', '', '', '269', '', '', '', '', '', '259', '1650', '', '', '', '', '181', '', 'ร้อยละความครอบคลุมการรักษาผู้ป่วยวัณโรครายใหม่และกลับเป็นซ้ำ (TB Treatment Coverage)', '', '0000-00-00 00:00:00.000000', '1900-01-20 04:26:36.000000', '01601', NULL);
INSERT INTO `main_kpi_input` VALUES (349, '00067', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ร้อยละความครอบคลุมการรักษาผู้ป่วยวัณโรครายใหม่และกลับเป็นซ้ำ (TB Treatment Coverage)', '', '0000-00-00 00:00:00.000000', '0000-00-00 00:00:00.000000', '01601', NULL);
INSERT INTO `main_kpi_input` VALUES (350, '00068', '0000-00-00', '1900-01-20', '', '792', '', '', '122', '', '', '', '', '', '152', '', '', '', '', '', '123', '', '19', '', '', '', '', '', 'ร้อยละความครอบคลุมการรักษาผู้ป่วยวัณโรครายใหม่และกลับเป็นซ้ำ (TB Treatment Coverage)', '', '0000-00-00 00:00:00.000000', '1900-01-20 16:08:58.000000', '01601', NULL);

-- ----------------------------
-- Table structure for main_kpi_prov
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_prov`;
CREATE TABLE `main_kpi_prov`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `ex` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_year` date NULL DEFAULT NULL,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hosname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `b1` decimal(19, 2) NOT NULL,
  `a1` decimal(19, 2) NOT NULL,
  `p1` decimal(19, 2) NOT NULL,
  `b2` decimal(19, 2) NOT NULL,
  `a2` decimal(19, 2) NOT NULL,
  `p2` decimal(19, 2) NOT NULL,
  `b3` decimal(19, 2) NOT NULL,
  `a3` decimal(19, 2) NOT NULL,
  `p3` decimal(19, 2) NOT NULL,
  `b4` decimal(19, 2) NOT NULL,
  `a4` decimal(19, 2) NOT NULL,
  `p4` decimal(19, 2) NOT NULL,
  `bt` decimal(19, 2) NOT NULL,
  `at` decimal(19, 2) NOT NULL,
  `pt` decimal(19, 2) NOT NULL,
  `goal` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` datetime(6) NULL DEFAULT NULL,
  `kpi_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 344 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_kpi_prov
-- ----------------------------
INSERT INTO `main_kpi_prov` VALUES (1, 'pp', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '17', '2019-10-08 10:03:41.000000', '00100');
INSERT INTO `main_kpi_prov` VALUES (2, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '6.3', '2019-10-08 10:03:41.000000', '02400');
INSERT INTO `main_kpi_prov` VALUES (3, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '26', '2019-10-08 10:03:41.000000', '02800');
INSERT INTO `main_kpi_prov` VALUES (4, 'pp', '1900-01-20', '00063', 'กระบี่', 1696.00, 0.00, 0.00, 1502.00, 1.00, 66.58, 517.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3715.00, 1.00, 26.92, '17', '2019-10-08 10:03:41.000000', '00100');
INSERT INTO `main_kpi_prov` VALUES (5, 'se', '1900-01-20', '00063', 'กระบี่', 469910.00, 5.00, 1.06, 0.00, 9.00, 0.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 469910.00, 19.00, 4.04, '6.3', '2019-10-08 10:03:41.000000', '02400');
INSERT INTO `main_kpi_prov` VALUES (6, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 469610.00, 65.00, 13.84, 0.00, 0.00, 0.00, 469610.00, 65.00, 13.84, '26', '2019-10-08 10:03:41.000000', '02800');
INSERT INTO `main_kpi_prov` VALUES (7, 'pp', '1900-01-20', '00064', 'พังงา', 531.00, 1.00, 188.32, 487.00, 0.00, 0.00, 474.00, 1.00, 210.97, 0.00, 0.00, 0.00, 1492.00, 2.00, 134.05, '17', '2019-10-08 10:03:41.000000', '00100');
INSERT INTO `main_kpi_prov` VALUES (8, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 251816.00, 8.00, 3.18, 0.00, 0.00, 0.00, 251816.00, 8.00, 3.18, '6.3', '2019-10-08 10:03:41.000000', '02400');
INSERT INTO `main_kpi_prov` VALUES (9, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 251816.00, 7.00, 2.78, 0.00, 0.00, 0.00, 251816.00, 7.00, 2.78, '26', '2019-10-08 10:03:41.000000', '02800');
INSERT INTO `main_kpi_prov` VALUES (10, 'pp', '1900-01-20', '00065', 'ภูเก็ต', 1671.00, 0.00, 0.00, 1634.00, 0.00, 0.00, 1023.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4328.00, 0.00, 0.00, '17', '2019-10-08 10:03:41.000000', '00100');
INSERT INTO `main_kpi_prov` VALUES (11, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 402707.00, 11.00, 2.73, 0.00, 0.00, 0.00, 402707.00, 11.00, 2.73, '6.3', '2019-10-08 10:03:41.000000', '02400');
INSERT INTO `main_kpi_prov` VALUES (12, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 805414.00, 55.00, 6.83, 1208121.00, 113.00, 9.35, 2013535.00, 168.00, 8.34, '26', '2019-10-08 10:03:41.000000', '02800');
INSERT INTO `main_kpi_prov` VALUES (13, 'pp', '1900-01-20', '00066', 'สุราษฎร์ธานี', 3264.00, 1.00, 30.64, 3034.00, 2.00, 65.92, 2863.00, 0.00, 0.00, 1991.00, 1.00, 50.23, 11152.00, 4.00, 35.87, '17', '2019-10-08 10:03:41.000000', '00100');
INSERT INTO `main_kpi_prov` VALUES (14, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 3190503.00, 26.00, 0.81, 3190503.00, 15.00, 0.47, 3190503.00, 13.00, 0.41, 0.00, 0.00, 0.00, 9571509.00, 54.00, 0.56, '6.3', '2019-10-08 10:03:41.000000', '02400');
INSERT INTO `main_kpi_prov` VALUES (15, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 1063501.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 162.00, 0.00, 0.00, 0.00, 0.00, 1063501.00, 162.00, 15.23, '26', '2019-10-08 10:03:41.000000', '02800');
INSERT INTO `main_kpi_prov` VALUES (16, 'pp', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1044.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1044.00, 0.00, 0.00, '17', '2019-10-08 10:03:41.000000', '00100');
INSERT INTO `main_kpi_prov` VALUES (17, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 190399.00, 14.00, 7.35, 0.00, 0.00, 0.00, 190399.00, 14.00, 7.35, '6.3', '2019-10-08 10:03:41.000000', '02400');
INSERT INTO `main_kpi_prov` VALUES (18, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 190399.00, 5.00, 2.63, 0.00, 0.00, 0.00, 190399.00, 5.00, 2.63, '26', '2019-10-08 10:03:41.000000', '02800');
INSERT INTO `main_kpi_prov` VALUES (19, 'pp', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '17', '2019-10-08 10:03:41.000000', '00100');
INSERT INTO `main_kpi_prov` VALUES (20, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 507604.00, 44.00, 8.67, 0.00, 3.00, 0.00, 507604.00, 47.00, 9.26, '6.3', '2019-10-08 10:03:41.000000', '02400');
INSERT INTO `main_kpi_prov` VALUES (21, 'se', '1900-01-20', '00068', 'ชุมพร', 509650.00, 50.00, 9.81, 0.00, 48.00, 0.00, 0.00, 21.00, 0.00, 0.00, 0.00, 0.00, 509650.00, 119.00, 23.35, '26', '2019-10-08 10:03:41.000000', '02800');
INSERT INTO `main_kpi_prov` VALUES (22, 'pp', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '70', '2019-10-08 10:03:41.000000', '00700');
INSERT INTO `main_kpi_prov` VALUES (23, 'ge', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '60', '2019-10-08 10:03:41.000000', '00800');
INSERT INTO `main_kpi_prov` VALUES (24, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '90', '2019-10-08 10:03:41.000000', '00900');
INSERT INTO `main_kpi_prov` VALUES (25, 'pp', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01101');
INSERT INTO `main_kpi_prov` VALUES (26, 'pp', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01102');
INSERT INTO `main_kpi_prov` VALUES (27, 'pp', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01103');
INSERT INTO `main_kpi_prov` VALUES (28, 'pp', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01104');
INSERT INTO `main_kpi_prov` VALUES (29, 'pp', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01105');
INSERT INTO `main_kpi_prov` VALUES (30, 'pp', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '01201');
INSERT INTO `main_kpi_prov` VALUES (31, 'pp', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '85', '2019-10-08 10:03:41.000000', '01202');
INSERT INTO `main_kpi_prov` VALUES (32, 'pp', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '40', '2019-10-08 10:03:41.000000', '01203');
INSERT INTO `main_kpi_prov` VALUES (33, 'pp', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '1', '2019-10-08 10:03:41.000000', '01204');
INSERT INTO `main_kpi_prov` VALUES (34, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '18', '2019-10-08 10:03:41.000000', '01300');
INSERT INTO `main_kpi_prov` VALUES (35, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '60', '2019-10-08 10:03:41.000000', '01400');
INSERT INTO `main_kpi_prov` VALUES (36, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '85', '2019-10-08 10:03:41.000000', '01600');
INSERT INTO `main_kpi_prov` VALUES (37, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '85', '2019-10-08 10:03:41.000000', '01601');
INSERT INTO `main_kpi_prov` VALUES (38, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20', '2019-10-08 10:03:41.000000', '01800');
INSERT INTO `main_kpi_prov` VALUES (39, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '40', '2019-10-08 10:03:41.000000', '02100');
INSERT INTO `main_kpi_prov` VALUES (40, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '02700');
INSERT INTO `main_kpi_prov` VALUES (41, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '75', '2019-10-08 10:03:41.000000', '02901');
INSERT INTO `main_kpi_prov` VALUES (42, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '75', '2019-10-08 10:03:41.000000', '02902');
INSERT INTO `main_kpi_prov` VALUES (43, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '65', '2019-10-08 10:03:41.000000', '02903');
INSERT INTO `main_kpi_prov` VALUES (44, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0.8', '2019-10-08 10:03:41.000000', '03200');
INSERT INTO `main_kpi_prov` VALUES (45, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20', '2019-10-08 10:03:41.000000', '03300');
INSERT INTO `main_kpi_prov` VALUES (46, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '40', '2019-10-08 10:03:41.000000', '03400');
INSERT INTO `main_kpi_prov` VALUES (47, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '03501');
INSERT INTO `main_kpi_prov` VALUES (48, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '60', '2019-10-08 10:03:41.000000', '03502');
INSERT INTO `main_kpi_prov` VALUES (49, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20', '2019-10-08 10:03:41.000000', '03600');
INSERT INTO `main_kpi_prov` VALUES (50, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '22', '2019-10-08 10:03:41.000000', '03800');
INSERT INTO `main_kpi_prov` VALUES (51, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '03900');
INSERT INTO `main_kpi_prov` VALUES (52, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '10', '2019-10-08 10:03:41.000000', '04002');
INSERT INTO `main_kpi_prov` VALUES (53, 'pe', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '70', '2019-10-08 10:03:41.000000', '04300');
INSERT INTO `main_kpi_prov` VALUES (54, 'ge', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '90', '2019-10-08 10:03:41.000000', '04400');
INSERT INTO `main_kpi_prov` VALUES (55, 'ge', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '70', '2019-10-08 10:03:41.000000', '04501');
INSERT INTO `main_kpi_prov` VALUES (56, 'ge', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '40', '2019-10-08 10:03:41.000000', '04502');
INSERT INTO `main_kpi_prov` VALUES (57, 'ge', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '04601');
INSERT INTO `main_kpi_prov` VALUES (58, 'ge', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '90', '2019-10-08 10:03:41.000000', '04602');
INSERT INTO `main_kpi_prov` VALUES (59, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '60', '2019-10-08 10:03:41.000000', '04701');
INSERT INTO `main_kpi_prov` VALUES (60, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '04702');
INSERT INTO `main_kpi_prov` VALUES (61, 'ge', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '04901');
INSERT INTO `main_kpi_prov` VALUES (62, 'ge', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '04902');
INSERT INTO `main_kpi_prov` VALUES (63, 'ge', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '04903');
INSERT INTO `main_kpi_prov` VALUES (64, 'ge', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '05000');
INSERT INTO `main_kpi_prov` VALUES (65, 'ge', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '4', '2019-10-08 10:03:41.000000', '05300');
INSERT INTO `main_kpi_prov` VALUES (66, 'pp', '1900-01-20', '00063', 'กระบี่', 53.00, 0.00, 0.00, 0.00, 50.00, 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 53.00, 51.00, 96.23, '70', '2019-10-08 10:03:41.000000', '00700');
INSERT INTO `main_kpi_prov` VALUES (67, 'ge', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 8.00, 8.00, 100.00, 0.00, 0.00, 0.00, 8.00, 8.00, 100.00, '60', '2019-10-08 10:03:41.000000', '00800');
INSERT INTO `main_kpi_prov` VALUES (68, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '90', '2019-10-08 10:03:41.000000', '00900');
INSERT INTO `main_kpi_prov` VALUES (69, 'pp', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01101');
INSERT INTO `main_kpi_prov` VALUES (70, 'pp', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01102');
INSERT INTO `main_kpi_prov` VALUES (71, 'pp', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01103');
INSERT INTO `main_kpi_prov` VALUES (72, 'pp', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01104');
INSERT INTO `main_kpi_prov` VALUES (73, 'pp', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01105');
INSERT INTO `main_kpi_prov` VALUES (74, 'pp', '1900-01-20', '00063', 'กระบี่', 27.00, 27.00, 100.00, 27.00, 27.00, 100.00, 27.00, 27.00, 100.00, 0.00, 0.00, 0.00, 81.00, 81.00, 100.00, '100', '2019-10-08 10:03:41.000000', '01201');
INSERT INTO `main_kpi_prov` VALUES (75, 'pp', '1900-01-20', '00063', 'กระบี่', 27.00, 27.00, 100.00, 27.00, 27.00, 100.00, 27.00, 27.00, 100.00, 0.00, 0.00, 0.00, 81.00, 81.00, 100.00, '85', '2019-10-08 10:03:41.000000', '01202');
INSERT INTO `main_kpi_prov` VALUES (76, 'pp', '1900-01-20', '00063', 'กระบี่', 27.00, 18.00, 66.67, 27.00, 18.00, 66.67, 27.00, 24.00, 88.89, 0.00, 0.00, 0.00, 81.00, 60.00, 74.07, '40', '2019-10-08 10:03:41.000000', '01203');
INSERT INTO `main_kpi_prov` VALUES (77, 'pp', '1900-01-20', '00063', 'กระบี่', 27.00, 0.00, 0.00, 27.00, 0.00, 0.00, 18.00, 3.00, 16.67, 0.00, 0.00, 0.00, 72.00, 3.00, 4.17, '1', '2019-10-08 10:03:41.000000', '01204');
INSERT INTO `main_kpi_prov` VALUES (78, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '18', '2019-10-08 10:03:41.000000', '01300');
INSERT INTO `main_kpi_prov` VALUES (79, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1367.00, 743.00, 54.35, 0.00, 334.00, 0.00, 1367.00, 1077.00, 78.79, '60', '2019-10-08 10:03:41.000000', '01400');
INSERT INTO `main_kpi_prov` VALUES (80, 'se', '1900-01-20', '00063', 'กระบี่', 87.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 87.00, 0.00, 87.00, 87.00, 100.00, '85', '2019-10-08 10:03:41.000000', '01600');
INSERT INTO `main_kpi_prov` VALUES (81, 'se', '1900-01-20', '00063', 'กระบี่', 733.00, 111.00, 15.14, 0.00, 99.00, 0.00, 0.00, 112.00, 0.00, 0.00, 139.00, 0.00, 733.00, 461.00, 62.89, '85', '2019-10-08 10:03:41.000000', '01601');
INSERT INTO `main_kpi_prov` VALUES (82, 'se', '1900-01-20', '00063', 'กระบี่', 3.00, 3.00, 100.00, 3.00, 3.00, 100.00, 2.00, 2.00, 100.00, 0.00, 0.00, 0.00, 8.00, 8.00, 100.00, '20', '2019-10-08 10:03:41.000000', '01800');
INSERT INTO `main_kpi_prov` VALUES (83, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '40', '2019-10-08 10:03:41.000000', '02100');
INSERT INTO `main_kpi_prov` VALUES (84, 'se', '1900-01-20', '00063', 'กระบี่', 52.00, 12.00, 23.08, 61.00, 11.00, 18.03, 38.00, 9.00, 23.68, 0.00, 0.00, 0.00, 151.00, 32.00, 21.19, '50', '2019-10-08 10:03:41.000000', '02700');
INSERT INTO `main_kpi_prov` VALUES (85, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '75', '2019-10-08 10:03:41.000000', '02901');
INSERT INTO `main_kpi_prov` VALUES (86, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '75', '2019-10-08 10:03:41.000000', '02902');
INSERT INTO `main_kpi_prov` VALUES (87, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '65', '2019-10-08 10:03:41.000000', '02903');
INSERT INTO `main_kpi_prov` VALUES (88, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0.8', '2019-10-08 10:03:41.000000', '03200');
INSERT INTO `main_kpi_prov` VALUES (89, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 82.00, 32.00, 39.02, 0.00, 0.00, 0.00, 82.00, 32.00, 39.02, '20', '2019-10-08 10:03:41.000000', '03300');
INSERT INTO `main_kpi_prov` VALUES (90, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 805.00, 564.00, 70.06, 0.00, 0.00, 0.00, 805.00, 564.00, 70.06, '40', '2019-10-08 10:03:41.000000', '03400');
INSERT INTO `main_kpi_prov` VALUES (91, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 8.00, 2.00, 25.00, 0.00, 0.00, 0.00, 8.00, 2.00, 25.00, '50', '2019-10-08 10:03:41.000000', '03501');
INSERT INTO `main_kpi_prov` VALUES (92, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 55.00, 48.00, 87.27, 0.00, 0.00, 0.00, 55.00, 48.00, 87.27, '60', '2019-10-08 10:03:41.000000', '03502');
INSERT INTO `main_kpi_prov` VALUES (93, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20', '2019-10-08 10:03:41.000000', '03600');
INSERT INTO `main_kpi_prov` VALUES (94, 'se', '1900-01-20', '00063', 'กระบี่', 382.00, 246.00, 64.40, 398.00, 274.00, 68.84, 373.00, 217.00, 58.18, 0.00, 0.00, 0.00, 1153.00, 737.00, 63.92, '22', '2019-10-08 10:03:41.000000', '03800');
INSERT INTO `main_kpi_prov` VALUES (95, 'se', '1900-01-20', '00063', 'กระบี่', 3.00, 3.00, 100.00, 3.00, 3.00, 100.00, 3.00, 3.00, 100.00, 0.00, 0.00, 0.00, 9.00, 9.00, 100.00, '100', '2019-10-08 10:03:41.000000', '03900');
INSERT INTO `main_kpi_prov` VALUES (96, 'se', '1900-01-20', '00063', 'กระบี่', 79322129.00, 2427649.00, 3.06, 78345051.00, 2300215.00, 2.94, 52491221.00, 1352150.00, 2.58, 0.00, 0.00, 0.00, 210158401.00, 6080014.00, 2.89, '10', '2019-10-08 10:03:41.000000', '04002');
INSERT INTO `main_kpi_prov` VALUES (97, 'pe', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '70', '2019-10-08 10:03:41.000000', '04300');
INSERT INTO `main_kpi_prov` VALUES (98, 'ge', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '90', '2019-10-08 10:03:41.000000', '04400');
INSERT INTO `main_kpi_prov` VALUES (99, 'ge', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '70', '2019-10-08 10:03:41.000000', '04501');
INSERT INTO `main_kpi_prov` VALUES (100, 'ge', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, 100.00, 100.00, 0.00, 0.00, 0.00, 100.00, 100.00, 100.00, '40', '2019-10-08 10:03:41.000000', '04502');
INSERT INTO `main_kpi_prov` VALUES (101, 'ge', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04601');
INSERT INTO `main_kpi_prov` VALUES (102, 'ge', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 8.00, 5.00, 62.50, 0.00, 0.00, 0.00, 8.00, 5.00, 62.50, '90', '2019-10-08 10:03:41.000000', '04602');
INSERT INTO `main_kpi_prov` VALUES (103, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 72.00, 54.00, 75.00, 0.00, 0.00, 0.00, 72.00, 54.00, 75.00, '60', '2019-10-08 10:03:41.000000', '04701');
INSERT INTO `main_kpi_prov` VALUES (104, 'se', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 72.00, 72.00, 100.00, 0.00, 0.00, 0.00, 72.00, 72.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04702');
INSERT INTO `main_kpi_prov` VALUES (105, 'ge', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '04901');
INSERT INTO `main_kpi_prov` VALUES (106, 'ge', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '04902');
INSERT INTO `main_kpi_prov` VALUES (107, 'ge', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '04903');
INSERT INTO `main_kpi_prov` VALUES (108, 'ge', '1900-01-20', '00063', 'กระบี่', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '05000');
INSERT INTO `main_kpi_prov` VALUES (109, 'ge', '1900-01-20', '00063', 'กระบี่', 9.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9.00, 0.00, 0.00, '4', '2019-10-08 10:03:41.000000', '05300');
INSERT INTO `main_kpi_prov` VALUES (110, 'pp', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 48.00, 48.00, 100.00, 144.00, 144.00, 100.00, 0.00, 0.00, 0.00, 192.00, 192.00, 100.00, '70', '2019-10-08 10:03:41.000000', '00700');
INSERT INTO `main_kpi_prov` VALUES (111, 'ge', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '60', '2019-10-08 10:03:41.000000', '00800');
INSERT INTO `main_kpi_prov` VALUES (112, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '90', '2019-10-08 10:03:41.000000', '00900');
INSERT INTO `main_kpi_prov` VALUES (113, 'pp', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 7.00, 100.00, 0.00, 0.00, 0.00, 7.00, 7.00, 100.00, '80', '2019-10-08 10:03:41.000000', '01101');
INSERT INTO `main_kpi_prov` VALUES (114, 'pp', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01102');
INSERT INTO `main_kpi_prov` VALUES (115, 'pp', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 6.00, 85.71, 0.00, 0.00, 0.00, 7.00, 6.00, 85.71, '80', '2019-10-08 10:03:41.000000', '01103');
INSERT INTO `main_kpi_prov` VALUES (116, 'pp', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01104');
INSERT INTO `main_kpi_prov` VALUES (117, 'pp', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 12.00, 11.00, 91.67, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12.00, 11.00, 91.67, '80', '2019-10-08 10:03:41.000000', '01105');
INSERT INTO `main_kpi_prov` VALUES (118, 'pp', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '01201');
INSERT INTO `main_kpi_prov` VALUES (119, 'pp', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '85', '2019-10-08 10:03:41.000000', '01202');
INSERT INTO `main_kpi_prov` VALUES (120, 'pp', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '40', '2019-10-08 10:03:41.000000', '01203');
INSERT INTO `main_kpi_prov` VALUES (121, 'pp', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '1', '2019-10-08 10:03:41.000000', '01204');
INSERT INTO `main_kpi_prov` VALUES (122, 'se', '1900-01-20', '00064', 'พังงา', 24.00, 18.00, 75.00, 24.00, 18.00, 75.00, 24.00, 18.00, 75.00, 0.00, 0.00, 0.00, 72.00, 54.00, 75.00, '18', '2019-10-08 10:03:41.000000', '01300');
INSERT INTO `main_kpi_prov` VALUES (123, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '60', '2019-10-08 10:03:41.000000', '01400');
INSERT INTO `main_kpi_prov` VALUES (124, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 50.00, 43.00, 86.00, 50.00, 43.00, 86.00, '85', '2019-10-08 10:03:41.000000', '01600');
INSERT INTO `main_kpi_prov` VALUES (125, 'se', '1900-01-20', '00064', 'พังงา', 417.00, 61.00, 14.63, 0.00, 73.00, 0.00, 0.00, 64.00, 0.00, 0.00, 72.00, 0.00, 417.00, 270.00, 64.75, '85', '2019-10-08 10:03:41.000000', '01601');
INSERT INTO `main_kpi_prov` VALUES (126, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, '20', '2019-10-08 10:03:41.000000', '01800');
INSERT INTO `main_kpi_prov` VALUES (127, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '40', '2019-10-08 10:03:41.000000', '02100');
INSERT INTO `main_kpi_prov` VALUES (128, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 51.00, 28.00, 54.90, 0.00, 0.00, 0.00, 51.00, 28.00, 54.90, '50', '2019-10-08 10:03:41.000000', '02700');
INSERT INTO `main_kpi_prov` VALUES (129, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 24.00, 24.00, 100.00, 0.00, 0.00, 0.00, 24.00, 24.00, 100.00, '75', '2019-10-08 10:03:41.000000', '02901');
INSERT INTO `main_kpi_prov` VALUES (130, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 100.00, 0.00, 0.00, 0.00, 4.00, 4.00, 100.00, '75', '2019-10-08 10:03:41.000000', '02902');
INSERT INTO `main_kpi_prov` VALUES (131, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '65', '2019-10-08 10:03:41.000000', '02903');
INSERT INTO `main_kpi_prov` VALUES (132, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 278.00, 0.00, 0.00, 0.00, 0.00, 0.00, 278.00, 0.00, 0.00, '0.8', '2019-10-08 10:03:41.000000', '03200');
INSERT INTO `main_kpi_prov` VALUES (133, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 50.00, 37.00, 74.00, 0.00, 0.00, 0.00, 50.00, 37.00, 74.00, '20', '2019-10-08 10:03:41.000000', '03300');
INSERT INTO `main_kpi_prov` VALUES (134, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 107.00, 52.00, 48.60, 0.00, 0.00, 0.00, 107.00, 52.00, 48.60, '40', '2019-10-08 10:03:41.000000', '03400');
INSERT INTO `main_kpi_prov` VALUES (135, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 7.00, 100.00, 0.00, 0.00, 0.00, 7.00, 7.00, 100.00, '50', '2019-10-08 10:03:41.000000', '03501');
INSERT INTO `main_kpi_prov` VALUES (136, 'se', '1900-01-20', '00064', 'พังงา', 84.00, 78.00, 92.86, 94.00, 41.00, 43.62, 80.00, 9.00, 11.25, 0.00, 0.00, 0.00, 258.00, 128.00, 49.61, '60', '2019-10-08 10:03:41.000000', '03502');
INSERT INTO `main_kpi_prov` VALUES (137, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9.00, 9.00, 100.00, 0.00, 0.00, 0.00, 9.00, 9.00, 100.00, '20', '2019-10-08 10:03:41.000000', '03600');
INSERT INTO `main_kpi_prov` VALUES (138, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2795.00, 679.00, 24.29, 0.00, 0.00, 0.00, 2795.00, 679.00, 24.29, '22', '2019-10-08 10:03:41.000000', '03800');
INSERT INTO `main_kpi_prov` VALUES (139, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '03900');
INSERT INTO `main_kpi_prov` VALUES (140, 'se', '1900-01-20', '00064', 'พังงา', 62409299.00, 915621.00, 1.47, 62060618.00, 883202.00, 1.42, 38013149.00, 436605.00, 1.15, 0.00, 0.00, 0.00, 162483066.00, 2235428.00, 1.38, '10', '2019-10-08 10:03:41.000000', '04002');
INSERT INTO `main_kpi_prov` VALUES (141, 'pe', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 18.00, 18.00, 100.00, 0.00, 0.00, 0.00, 18.00, 18.00, 100.00, '70', '2019-10-08 10:03:41.000000', '04300');
INSERT INTO `main_kpi_prov` VALUES (142, 'ge', '1900-01-20', '00064', 'พังงา', 18.00, 7.00, 38.89, 18.00, 12.00, 66.67, 18.00, 18.00, 100.00, 0.00, 0.00, 0.00, 54.00, 37.00, 68.52, '90', '2019-10-08 10:03:41.000000', '04400');
INSERT INTO `main_kpi_prov` VALUES (143, 'ge', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '70', '2019-10-08 10:03:41.000000', '04501');
INSERT INTO `main_kpi_prov` VALUES (144, 'ge', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 8.00, 8.00, 100.00, 0.00, 0.00, 0.00, 8.00, 8.00, 100.00, '40', '2019-10-08 10:03:41.000000', '04502');
INSERT INTO `main_kpi_prov` VALUES (145, 'ge', '1900-01-20', '00064', 'พังงา', 6.00, 6.00, 100.00, 6.00, 6.00, 100.00, 6.00, 6.00, 100.00, 2.00, 2.00, 100.00, 20.00, 20.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04601');
INSERT INTO `main_kpi_prov` VALUES (146, 'ge', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '90', '2019-10-08 10:03:41.000000', '04602');
INSERT INTO `main_kpi_prov` VALUES (147, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 64.00, 52.00, 81.25, 0.00, 0.00, 0.00, 64.00, 52.00, 81.25, '60', '2019-10-08 10:03:41.000000', '04701');
INSERT INTO `main_kpi_prov` VALUES (148, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 64.00, 64.00, 100.00, 0.00, 0.00, 0.00, 64.00, 64.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04702');
INSERT INTO `main_kpi_prov` VALUES (149, 'ge', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '04901');
INSERT INTO `main_kpi_prov` VALUES (150, 'ge', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '04902');
INSERT INTO `main_kpi_prov` VALUES (151, 'ge', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '04903');
INSERT INTO `main_kpi_prov` VALUES (152, 'ge', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '05000');
INSERT INTO `main_kpi_prov` VALUES (153, 'ge', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '4', '2019-10-08 10:03:41.000000', '05300');
INSERT INTO `main_kpi_prov` VALUES (154, 'pp', '1900-01-20', '00065', 'ภูเก็ต', 17.00, 12.00, 70.59, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 17.00, 17.00, 100.00, '70', '2019-10-08 10:03:41.000000', '00700');
INSERT INTO `main_kpi_prov` VALUES (155, 'ge', '1900-01-20', '00065', 'ภูเก็ต', 3.00, 3.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, '60', '2019-10-08 10:03:41.000000', '00800');
INSERT INTO `main_kpi_prov` VALUES (156, 'se', '1900-01-20', '00065', 'ภูเก็ต', 1.00, 1.00, 100.00, 1.00, 1.00, 100.00, 1.00, 1.00, 100.00, 1.00, 1.00, 100.00, 4.00, 4.00, 100.00, '90', '2019-10-08 10:03:41.000000', '00900');
INSERT INTO `main_kpi_prov` VALUES (157, 'pp', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 5.00, 71.43, 0.00, 0.00, 0.00, 7.00, 5.00, 71.43, '80', '2019-10-08 10:03:41.000000', '01101');
INSERT INTO `main_kpi_prov` VALUES (158, 'pp', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01102');
INSERT INTO `main_kpi_prov` VALUES (159, 'pp', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 6.00, 6.00, 100.00, 0.00, 0.00, 0.00, 6.00, 6.00, 100.00, '80', '2019-10-08 10:03:41.000000', '01103');
INSERT INTO `main_kpi_prov` VALUES (160, 'pp', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, '80', '2019-10-08 10:03:41.000000', '01104');
INSERT INTO `main_kpi_prov` VALUES (161, 'pp', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, '80', '2019-10-08 10:03:41.000000', '01105');
INSERT INTO `main_kpi_prov` VALUES (162, 'pp', '1900-01-20', '00065', 'ภูเก็ต', 3.00, 3.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, '100', '2019-10-08 10:03:41.000000', '01201');
INSERT INTO `main_kpi_prov` VALUES (163, 'pp', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, '85', '2019-10-08 10:03:41.000000', '01202');
INSERT INTO `main_kpi_prov` VALUES (164, 'pp', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, '40', '2019-10-08 10:03:41.000000', '01203');
INSERT INTO `main_kpi_prov` VALUES (165, 'pp', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, '1', '2019-10-08 10:03:41.000000', '01204');
INSERT INTO `main_kpi_prov` VALUES (166, 'se', '1900-01-20', '00065', 'ภูเก็ต', 7.00, 5.00, 71.43, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 5.00, 71.43, '18', '2019-10-08 10:03:41.000000', '01300');
INSERT INTO `main_kpi_prov` VALUES (167, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1710.00, 76.00, 4.44, 0.00, 473.00, 0.00, 1710.00, 549.00, 32.11, '60', '2019-10-08 10:03:41.000000', '01400');
INSERT INTO `main_kpi_prov` VALUES (168, 'se', '1900-01-20', '00065', 'ภูเก็ต', 104.00, 0.00, 0.00, 0.00, 18.00, 0.00, 0.00, 41.00, 0.00, 0.00, 0.00, 0.00, 104.00, 59.00, 56.73, '85', '2019-10-08 10:03:41.000000', '01600');
INSERT INTO `main_kpi_prov` VALUES (169, 'se', '1900-01-20', '00065', 'ภูเก็ต', 630.00, 207.00, 32.86, 0.00, 205.00, 0.00, 0.00, 180.00, 0.00, 0.00, 0.00, 0.00, 630.00, 592.00, 93.97, '85', '2019-10-08 10:03:41.000000', '01601');
INSERT INTO `main_kpi_prov` VALUES (170, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '20', '2019-10-08 10:03:41.000000', '01800');
INSERT INTO `main_kpi_prov` VALUES (171, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 366.00, 278.00, 75.96, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 366.00, 278.00, 75.96, '40', '2019-10-08 10:03:41.000000', '02100');
INSERT INTO `main_kpi_prov` VALUES (172, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 330.00, 147.00, 44.55, 680.00, 288.00, 42.35, 1010.00, 435.00, 43.07, '50', '2019-10-08 10:03:41.000000', '02700');
INSERT INTO `main_kpi_prov` VALUES (173, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 95.00, 139.00, 146.32, 16.00, 26.00, 162.50, 111.00, 165.00, 148.65, '75', '2019-10-08 10:03:41.000000', '02901');
INSERT INTO `main_kpi_prov` VALUES (174, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 91.00, 139.00, 152.75, 17.00, 29.00, 170.59, 108.00, 168.00, 155.56, '75', '2019-10-08 10:03:41.000000', '02902');
INSERT INTO `main_kpi_prov` VALUES (175, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '65', '2019-10-08 10:03:41.000000', '02903');
INSERT INTO `main_kpi_prov` VALUES (176, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0.8', '2019-10-08 10:03:41.000000', '03200');
INSERT INTO `main_kpi_prov` VALUES (177, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 123.00, 25.00, 20.33, 0.00, 0.00, 0.00, 123.00, 25.00, 20.33, '20', '2019-10-08 10:03:41.000000', '03300');
INSERT INTO `main_kpi_prov` VALUES (178, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 684.00, 329.00, 48.10, 0.00, 0.00, 0.00, 684.00, 329.00, 48.10, '40', '2019-10-08 10:03:41.000000', '03400');
INSERT INTO `main_kpi_prov` VALUES (179, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, '50', '2019-10-08 10:03:41.000000', '03501');
INSERT INTO `main_kpi_prov` VALUES (180, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 121.00, 108.00, 89.26, 0.00, 0.00, 0.00, 121.00, 108.00, 89.26, '60', '2019-10-08 10:03:41.000000', '03502');
INSERT INTO `main_kpi_prov` VALUES (181, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 48.00, 51.00, 106.25, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 48.00, 51.00, 106.25, '20', '2019-10-08 10:03:41.000000', '03600');
INSERT INTO `main_kpi_prov` VALUES (182, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3267.00, 693.00, 21.21, 0.00, 0.00, 0.00, 3267.00, 693.00, 21.21, '22', '2019-10-08 10:03:41.000000', '03800');
INSERT INTO `main_kpi_prov` VALUES (183, 'se', '1900-01-20', '00065', 'ภูเก็ต', 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '100', '2019-10-08 10:03:41.000000', '03900');
INSERT INTO `main_kpi_prov` VALUES (184, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7431036672.00, 18332512.00, 0.25, 0.00, 0.00, 0.00, 7431036672.00, 18332512.00, 0.25, '10', '2019-10-08 10:03:41.000000', '04002');
INSERT INTO `main_kpi_prov` VALUES (185, 'pe', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 7.00, 100.00, 0.00, 0.00, 0.00, 7.00, 7.00, 100.00, '70', '2019-10-08 10:03:41.000000', '04300');
INSERT INTO `main_kpi_prov` VALUES (186, 'ge', '1900-01-20', '00065', 'ภูเก็ต', 21.00, 21.00, 100.00, 21.00, 21.00, 100.00, 21.00, 21.00, 100.00, 21.00, 21.00, 100.00, 84.00, 84.00, 100.00, '90', '2019-10-08 10:03:41.000000', '04400');
INSERT INTO `main_kpi_prov` VALUES (187, 'ge', '1900-01-20', '00065', 'ภูเก็ต', 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '70', '2019-10-08 10:03:41.000000', '04501');
INSERT INTO `main_kpi_prov` VALUES (188, 'ge', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, '40', '2019-10-08 10:03:41.000000', '04502');
INSERT INTO `main_kpi_prov` VALUES (189, 'ge', '1900-01-20', '00065', 'ภูเก็ต', 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04601');
INSERT INTO `main_kpi_prov` VALUES (190, 'ge', '1900-01-20', '00065', 'ภูเก็ต', 2.00, 2.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, '90', '2019-10-08 10:03:41.000000', '04602');
INSERT INTO `main_kpi_prov` VALUES (191, 'se', '1900-01-20', '00065', 'ภูเก็ต', 21.00, 6.00, 28.57, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 21.00, 6.00, 28.57, '60', '2019-10-08 10:03:41.000000', '04701');
INSERT INTO `main_kpi_prov` VALUES (192, 'se', '1900-01-20', '00065', 'ภูเก็ต', 21.00, 21.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 21.00, 21.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04702');
INSERT INTO `main_kpi_prov` VALUES (193, 'ge', '1900-01-20', '00065', 'ภูเก็ต', 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04901');
INSERT INTO `main_kpi_prov` VALUES (194, 'ge', '1900-01-20', '00065', 'ภูเก็ต', 3.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '04902');
INSERT INTO `main_kpi_prov` VALUES (195, 'ge', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '04903');
INSERT INTO `main_kpi_prov` VALUES (196, 'ge', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, '100', '2019-10-08 10:03:41.000000', '05000');
INSERT INTO `main_kpi_prov` VALUES (197, 'ge', '1900-01-20', '00065', 'ภูเก็ต', 9.00, 0.00, 0.00, 9.00, 0.00, 0.00, 9.00, 0.00, 0.00, 0.00, 0.00, 0.00, 27.00, 0.00, 0.00, '4', '2019-10-08 10:03:41.000000', '05300');
INSERT INTO `main_kpi_prov` VALUES (198, 'pp', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 131.00, 118.00, 90.08, 0.00, 0.00, 0.00, 131.00, 118.00, 90.08, '70', '2019-10-08 10:03:41.000000', '00700');
INSERT INTO `main_kpi_prov` VALUES (199, 'ge', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 19.00, 100.00, 0.00, 0.00, 0.00, 19.00, 19.00, 100.00, '60', '2019-10-08 10:03:41.000000', '00800');
INSERT INTO `main_kpi_prov` VALUES (200, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 3.00, 3.00, 100.00, 3.00, 3.00, 100.00, 3.00, 3.00, 100.00, 1.00, 1.00, 100.00, 10.00, 10.00, 100.00, '90', '2019-10-08 10:03:41.000000', '00900');
INSERT INTO `main_kpi_prov` VALUES (201, 'pp', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01101');
INSERT INTO `main_kpi_prov` VALUES (202, 'pp', '1900-01-20', '00066', 'สุราษฎร์ธานี', 2.00, 2.00, 100.00, 3.00, 3.00, 100.00, 2.00, 2.00, 100.00, 0.00, 0.00, 0.00, 7.00, 7.00, 100.00, '80', '2019-10-08 10:03:41.000000', '01102');
INSERT INTO `main_kpi_prov` VALUES (203, 'pp', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 6.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 6.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01103');
INSERT INTO `main_kpi_prov` VALUES (204, 'pp', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, 3.00, 3.00, 100.00, 6.00, 6.00, 100.00, '80', '2019-10-08 10:03:41.000000', '01104');
INSERT INTO `main_kpi_prov` VALUES (205, 'pp', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12.00, 9.00, 75.00, 0.00, 0.00, 0.00, 12.00, 9.00, 75.00, '80', '2019-10-08 10:03:41.000000', '01105');
INSERT INTO `main_kpi_prov` VALUES (206, 'pp', '1900-01-20', '00066', 'สุราษฎร์ธานี', 23.00, 23.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 23.00, 23.00, 100.00, '100', '2019-10-08 10:03:41.000000', '01201');
INSERT INTO `main_kpi_prov` VALUES (207, 'pp', '1900-01-20', '00066', 'สุราษฎร์ธานี', 23.00, 0.00, 0.00, 0.00, 23.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 23.00, 23.00, 100.00, '85', '2019-10-08 10:03:41.000000', '01202');
INSERT INTO `main_kpi_prov` VALUES (208, 'pp', '1900-01-20', '00066', 'สุราษฎร์ธานี', 23.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 0.00, 0.00, 0.00, 0.00, 23.00, 19.00, 82.61, '40', '2019-10-08 10:03:41.000000', '01203');
INSERT INTO `main_kpi_prov` VALUES (209, 'pp', '1900-01-20', '00066', 'สุราษฎร์ธานี', 23.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 23.00, 1.00, 4.35, '1', '2019-10-08 10:03:41.000000', '01204');
INSERT INTO `main_kpi_prov` VALUES (210, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 90.00, 17.00, 18.89, 0.00, 0.00, 0.00, 90.00, 17.00, 18.89, '18', '2019-10-08 10:03:41.000000', '01300');
INSERT INTO `main_kpi_prov` VALUES (211, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10820.00, 8436.00, 77.97, 10820.00, 8436.00, 77.97, '60', '2019-10-08 10:03:41.000000', '01400');
INSERT INTO `main_kpi_prov` VALUES (212, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 174.00, 0.00, 0.00, 0.00, 17.00, 0.00, 0.00, 141.00, 0.00, 0.00, 8.00, 0.00, 174.00, 166.00, 95.40, '85', '2019-10-08 10:03:41.000000', '01600');
INSERT INTO `main_kpi_prov` VALUES (213, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 273.00, 0.00, 0.00, 269.00, 0.00, 1650.00, 259.00, 15.70, 0.00, 181.00, 0.00, 1650.00, 982.00, 59.52, '85', '2019-10-08 10:03:41.000000', '01601');
INSERT INTO `main_kpi_prov` VALUES (214, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, '20', '2019-10-08 10:03:41.000000', '01800');
INSERT INTO `main_kpi_prov` VALUES (215, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1001.00, 506.00, 50.55, 0.00, 0.00, 0.00, 1001.00, 506.00, 50.55, '40', '2019-10-08 10:03:41.000000', '02100');
INSERT INTO `main_kpi_prov` VALUES (216, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 303.00, 106.00, 34.98, 0.00, 0.00, 0.00, 303.00, 106.00, 34.98, '50', '2019-10-08 10:03:41.000000', '02700');
INSERT INTO `main_kpi_prov` VALUES (217, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 111.00, 72.00, 64.86, 0.00, 0.00, 0.00, 111.00, 72.00, 64.86, '75', '2019-10-08 10:03:41.000000', '02901');
INSERT INTO `main_kpi_prov` VALUES (218, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 145.00, 130.00, 89.66, 0.00, 0.00, 0.00, 145.00, 130.00, 89.66, '75', '2019-10-08 10:03:41.000000', '02902');
INSERT INTO `main_kpi_prov` VALUES (219, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 130.00, 93.00, 71.54, 0.00, 0.00, 0.00, 130.00, 93.00, 71.54, '65', '2019-10-08 10:03:41.000000', '02903');
INSERT INTO `main_kpi_prov` VALUES (220, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1539.00, 6.00, 0.39, 0.00, 0.00, 0.00, 1539.00, 6.00, 0.39, '0.8', '2019-10-08 10:03:41.000000', '03200');
INSERT INTO `main_kpi_prov` VALUES (221, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 270.00, 111.00, 41.11, 384.00, 100.00, 26.04, 388.00, 123.00, 31.70, 340.00, 132.00, 38.82, 1382.00, 466.00, 33.72, '20', '2019-10-08 10:03:41.000000', '03300');
INSERT INTO `main_kpi_prov` VALUES (222, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 465.00, 230.00, 49.46, 445.00, 168.00, 37.75, 606.00, 378.00, 62.38, 261.00, 121.00, 46.36, 1777.00, 897.00, 50.48, '40', '2019-10-08 10:03:41.000000', '03400');
INSERT INTO `main_kpi_prov` VALUES (223, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 57.00, 48.00, 84.21, 57.00, 48.00, 84.21, 57.00, 48.00, 84.21, 57.00, 48.00, 84.21, 228.00, 192.00, 84.21, '50', '2019-10-08 10:03:41.000000', '03501');
INSERT INTO `main_kpi_prov` VALUES (224, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 160.00, 119.00, 74.38, 0.00, 0.00, 0.00, 160.00, 119.00, 74.38, '60', '2019-10-08 10:03:41.000000', '03502');
INSERT INTO `main_kpi_prov` VALUES (225, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 82.00, 46.00, 56.10, 0.00, 0.00, 0.00, 82.00, 46.00, 56.10, '20', '2019-10-08 10:03:41.000000', '03600');
INSERT INTO `main_kpi_prov` VALUES (226, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 7857.00, 1131.00, 14.39, 7486.00, 1184.00, 15.82, 6518.00, 1032.00, 15.83, 0.00, 0.00, 0.00, 21861.00, 3347.00, 15.31, '22', '2019-10-08 10:03:41.000000', '03800');
INSERT INTO `main_kpi_prov` VALUES (227, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 1.00, 0.00, 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '100', '2019-10-08 10:03:41.000000', '03900');
INSERT INTO `main_kpi_prov` VALUES (228, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 472286527.00, 7184691.00, 1.52, 424511802.00, 8121844.00, 1.91, 398967847.00, 6442442.00, 1.61, 231870060.00, 4887727.00, 2.11, 1527636236.00, 26636704.00, 1.74, '10', '2019-10-08 10:03:41.000000', '04002');
INSERT INTO `main_kpi_prov` VALUES (229, 'pe', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 40.00, 40.00, 100.00, 0.00, 0.00, 0.00, 40.00, 40.00, 100.00, '70', '2019-10-08 10:03:41.000000', '04300');
INSERT INTO `main_kpi_prov` VALUES (230, 'ge', '1900-01-20', '00066', 'สุราษฎร์ธานี', 40.00, 5.00, 12.50, 0.00, 4.00, 0.00, 0.00, 28.00, 0.00, 0.00, 0.00, 0.00, 40.00, 37.00, 92.50, '90', '2019-10-08 10:03:41.000000', '04400');
INSERT INTO `main_kpi_prov` VALUES (231, 'ge', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, 1.00, 1.00, 100.00, '70', '2019-10-08 10:03:41.000000', '04501');
INSERT INTO `main_kpi_prov` VALUES (232, 'ge', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 19.00, 19.00, 100.00, 19.00, 19.00, 100.00, '40', '2019-10-08 10:03:41.000000', '04502');
INSERT INTO `main_kpi_prov` VALUES (233, 'ge', '1900-01-20', '00066', 'สุราษฎร์ธานี', 2.00, 2.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04601');
INSERT INTO `main_kpi_prov` VALUES (234, 'ge', '1900-01-20', '00066', 'สุราษฎร์ธานี', 0.00, 0.00, 0.00, 18.00, 17.00, 94.44, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 18.00, 17.00, 94.44, '90', '2019-10-08 10:03:41.000000', '04602');
INSERT INTO `main_kpi_prov` VALUES (235, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 166.00, 77.00, 46.39, 0.00, 0.00, 0.00, 166.00, 120.00, 72.29, 0.00, 0.00, 0.00, 332.00, 197.00, 59.34, '60', '2019-10-08 10:03:41.000000', '04701');
INSERT INTO `main_kpi_prov` VALUES (236, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 166.00, 166.00, 100.00, 0.00, 0.00, 0.00, 166.00, 166.00, 100.00, 0.00, 0.00, 0.00, 332.00, 332.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04702');
INSERT INTO `main_kpi_prov` VALUES (237, 'ge', '1900-01-20', '00066', 'สุราษฎร์ธานี', 2.00, 2.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04901');
INSERT INTO `main_kpi_prov` VALUES (238, 'ge', '1900-01-20', '00066', 'สุราษฎร์ธานี', 18.00, 5.00, 27.78, 0.00, 5.00, 0.00, 0.00, 2.00, 0.00, 0.00, 0.00, 0.00, 18.00, 12.00, 66.67, '50', '2019-10-08 10:03:41.000000', '04902');
INSERT INTO `main_kpi_prov` VALUES (239, 'ge', '1900-01-20', '00066', 'สุราษฎร์ธานี', 1.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '50', '2019-10-08 10:03:41.000000', '04903');
INSERT INTO `main_kpi_prov` VALUES (240, 'ge', '1900-01-20', '00066', 'สุราษฎร์ธานี', 17.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 17.00, 0.00, 0.00, 0.00, 0.00, 17.00, 17.00, 100.00, '100', '2019-10-08 10:03:41.000000', '05000');
INSERT INTO `main_kpi_prov` VALUES (241, 'ge', '1900-01-20', '00066', 'สุราษฎร์ธานี', 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 20.00, 0.00, 0.00, '4', '2019-10-08 10:03:41.000000', '05300');
INSERT INTO `main_kpi_prov` VALUES (242, 'pp', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 30.00, 29.00, 96.67, 0.00, 0.00, 0.00, 30.00, 29.00, 96.67, '70', '2019-10-08 10:03:41.000000', '00700');
INSERT INTO `main_kpi_prov` VALUES (243, 'ge', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, '60', '2019-10-08 10:03:41.000000', '00800');
INSERT INTO `main_kpi_prov` VALUES (244, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '90', '2019-10-08 10:03:41.000000', '00900');
INSERT INTO `main_kpi_prov` VALUES (245, 'pp', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01101');
INSERT INTO `main_kpi_prov` VALUES (246, 'pp', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01102');
INSERT INTO `main_kpi_prov` VALUES (247, 'pp', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01103');
INSERT INTO `main_kpi_prov` VALUES (248, 'pp', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01104');
INSERT INTO `main_kpi_prov` VALUES (249, 'pp', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01105');
INSERT INTO `main_kpi_prov` VALUES (250, 'pp', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, '100', '2019-10-08 10:03:41.000000', '01201');
INSERT INTO `main_kpi_prov` VALUES (251, 'pp', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, '85', '2019-10-08 10:03:41.000000', '01202');
INSERT INTO `main_kpi_prov` VALUES (252, 'pp', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, '40', '2019-10-08 10:03:41.000000', '01203');
INSERT INTO `main_kpi_prov` VALUES (253, 'pp', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 3.00, 300.00, 0.00, 0.00, 0.00, 1.00, 3.00, 300.00, '1', '2019-10-08 10:03:41.000000', '01204');
INSERT INTO `main_kpi_prov` VALUES (254, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 17.00, 9.00, 52.94, 0.00, 0.00, 0.00, 17.00, 9.00, 52.94, '18', '2019-10-08 10:03:41.000000', '01300');
INSERT INTO `main_kpi_prov` VALUES (255, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '60', '2019-10-08 10:03:41.000000', '01400');
INSERT INTO `main_kpi_prov` VALUES (256, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '85', '2019-10-08 10:03:41.000000', '01600');
INSERT INTO `main_kpi_prov` VALUES (257, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '85', '2019-10-08 10:03:41.000000', '01601');
INSERT INTO `main_kpi_prov` VALUES (258, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '20', '2019-10-08 10:03:41.000000', '01800');
INSERT INTO `main_kpi_prov` VALUES (259, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 268.00, 285.00, 106.34, 0.00, 0.00, 0.00, 268.00, 285.00, 106.34, '40', '2019-10-08 10:03:41.000000', '02100');
INSERT INTO `main_kpi_prov` VALUES (260, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '02700');
INSERT INTO `main_kpi_prov` VALUES (261, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 30.00, 30.00, 100.00, 0.00, 0.00, 0.00, 30.00, 30.00, 100.00, '75', '2019-10-08 10:03:41.000000', '02901');
INSERT INTO `main_kpi_prov` VALUES (262, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, 0.00, 0.00, 0.00, 2.00, 2.00, 100.00, '75', '2019-10-08 10:03:41.000000', '02902');
INSERT INTO `main_kpi_prov` VALUES (263, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '65', '2019-10-08 10:03:41.000000', '02903');
INSERT INTO `main_kpi_prov` VALUES (264, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 0.00, 0.00, '0.8', '2019-10-08 10:03:41.000000', '03200');
INSERT INTO `main_kpi_prov` VALUES (265, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 42.00, 17.00, 40.48, 0.00, 0.00, 0.00, 42.00, 17.00, 40.48, '20', '2019-10-08 10:03:41.000000', '03300');
INSERT INTO `main_kpi_prov` VALUES (266, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '40', '2019-10-08 10:03:41.000000', '03400');
INSERT INTO `main_kpi_prov` VALUES (267, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 2.00, 50.00, 0.00, 0.00, 0.00, 4.00, 2.00, 50.00, '50', '2019-10-08 10:03:41.000000', '03501');
INSERT INTO `main_kpi_prov` VALUES (268, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '60', '2019-10-08 10:03:41.000000', '03502');
INSERT INTO `main_kpi_prov` VALUES (269, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20', '2019-10-08 10:03:41.000000', '03600');
INSERT INTO `main_kpi_prov` VALUES (270, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '22', '2019-10-08 10:03:41.000000', '03800');
INSERT INTO `main_kpi_prov` VALUES (271, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '03900');
INSERT INTO `main_kpi_prov` VALUES (272, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '10', '2019-10-08 10:03:41.000000', '04002');
INSERT INTO `main_kpi_prov` VALUES (273, 'pe', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '70', '2019-10-08 10:03:41.000000', '04300');
INSERT INTO `main_kpi_prov` VALUES (274, 'ge', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 11.00, 100.00, 0.00, 0.00, 0.00, 11.00, 11.00, 100.00, '90', '2019-10-08 10:03:41.000000', '04400');
INSERT INTO `main_kpi_prov` VALUES (275, 'ge', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '70', '2019-10-08 10:03:41.000000', '04501');
INSERT INTO `main_kpi_prov` VALUES (276, 'ge', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, '40', '2019-10-08 10:03:41.000000', '04502');
INSERT INTO `main_kpi_prov` VALUES (277, 'ge', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04601');
INSERT INTO `main_kpi_prov` VALUES (278, 'ge', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 100.00, 0.00, 0.00, 0.00, 4.00, 4.00, 100.00, '90', '2019-10-08 10:03:41.000000', '04602');
INSERT INTO `main_kpi_prov` VALUES (279, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 45.00, 42.00, 93.33, 0.00, 0.00, 0.00, 45.00, 42.00, 93.33, '60', '2019-10-08 10:03:41.000000', '04701');
INSERT INTO `main_kpi_prov` VALUES (280, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 47.00, 42.00, 89.36, 0.00, 0.00, 0.00, 47.00, 42.00, 89.36, '100', '2019-10-08 10:03:41.000000', '04702');
INSERT INTO `main_kpi_prov` VALUES (281, 'ge', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04901');
INSERT INTO `main_kpi_prov` VALUES (282, 'ge', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 3.00, 75.00, 0.00, 0.00, 0.00, 4.00, 3.00, 75.00, '50', '2019-10-08 10:03:41.000000', '04902');
INSERT INTO `main_kpi_prov` VALUES (283, 'ge', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '04903');
INSERT INTO `main_kpi_prov` VALUES (284, 'ge', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '05000');
INSERT INTO `main_kpi_prov` VALUES (285, 'ge', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 0.00, 0.00, '4', '2019-10-08 10:03:41.000000', '05300');
INSERT INTO `main_kpi_prov` VALUES (286, 'pp', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 70.00, 68.00, 97.14, 0.00, 0.00, 0.00, 70.00, 68.00, 97.14, '70', '2019-10-08 10:03:41.000000', '00700');
INSERT INTO `main_kpi_prov` VALUES (287, 'ge', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 8.00, 8.00, 100.00, 8.00, 8.00, 100.00, '60', '2019-10-08 10:03:41.000000', '00800');
INSERT INTO `main_kpi_prov` VALUES (288, 'se', '1900-01-20', '00068', 'ชุมพร', 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '90', '2019-10-08 10:03:41.000000', '00900');
INSERT INTO `main_kpi_prov` VALUES (289, 'pp', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 7.00, 7.00, 100.00, 7.00, 7.00, 100.00, '80', '2019-10-08 10:03:41.000000', '01101');
INSERT INTO `main_kpi_prov` VALUES (290, 'pp', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01102');
INSERT INTO `main_kpi_prov` VALUES (291, 'pp', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4.00, 4.00, 100.00, 4.00, 4.00, 100.00, '80', '2019-10-08 10:03:41.000000', '01103');
INSERT INTO `main_kpi_prov` VALUES (292, 'pp', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '80', '2019-10-08 10:03:41.000000', '01104');
INSERT INTO `main_kpi_prov` VALUES (293, 'pp', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 38.00, 36.00, 94.74, 0.00, 0.00, 0.00, 38.00, 36.00, 94.74, '80', '2019-10-08 10:03:41.000000', '01105');
INSERT INTO `main_kpi_prov` VALUES (294, 'pp', '1900-01-20', '00068', 'ชุมพร', 11.00, 11.00, 100.00, 11.00, 11.00, 100.00, 11.00, 11.00, 100.00, 0.00, 0.00, 0.00, 33.00, 33.00, 100.00, '100', '2019-10-08 10:03:41.000000', '01201');
INSERT INTO `main_kpi_prov` VALUES (295, 'pp', '1900-01-20', '00068', 'ชุมพร', 11.00, 11.00, 100.00, 11.00, 11.00, 100.00, 11.00, 11.00, 100.00, 11.00, 11.00, 100.00, 44.00, 44.00, 100.00, '85', '2019-10-08 10:03:41.000000', '01202');
INSERT INTO `main_kpi_prov` VALUES (296, 'pp', '1900-01-20', '00068', 'ชุมพร', 11.00, 3.00, 27.27, 11.00, 3.00, 27.27, 11.00, 5.00, 45.45, 0.00, 0.00, 0.00, 33.00, 11.00, 33.33, '40', '2019-10-08 10:03:41.000000', '01203');
INSERT INTO `main_kpi_prov` VALUES (297, 'pp', '1900-01-20', '00068', 'ชุมพร', 11.00, 0.00, 0.00, 11.00, 0.00, 0.00, 11.00, 1.00, 9.09, 0.00, 0.00, 0.00, 33.00, 1.00, 3.03, '1', '2019-10-08 10:03:41.000000', '01204');
INSERT INTO `main_kpi_prov` VALUES (298, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12.00, 4.00, 33.33, 0.00, 0.00, 0.00, 12.00, 4.00, 33.33, '18', '2019-10-08 10:03:41.000000', '01300');
INSERT INTO `main_kpi_prov` VALUES (299, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 4556.00, 653.00, 14.33, 0.00, 0.00, 0.00, 4556.00, 653.00, 14.33, '60', '2019-10-08 10:03:41.000000', '01400');
INSERT INTO `main_kpi_prov` VALUES (300, 'se', '1900-01-20', '00068', 'ชุมพร', 89.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 51.00, 0.00, 89.00, 51.00, 57.30, '85', '2019-10-08 10:03:41.000000', '01600');
INSERT INTO `main_kpi_prov` VALUES (301, 'se', '1900-01-20', '00068', 'ชุมพร', 792.00, 122.00, 15.40, 0.00, 152.00, 0.00, 0.00, 123.00, 0.00, 0.00, 19.00, 0.00, 792.00, 416.00, 52.53, '85', '2019-10-08 10:03:41.000000', '01601');
INSERT INTO `main_kpi_prov` VALUES (302, 'se', '1900-01-20', '00068', 'ชุมพร', 1.00, 1.00, 100.00, 1.00, 1.00, 100.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, '20', '2019-10-08 10:03:41.000000', '01800');
INSERT INTO `main_kpi_prov` VALUES (303, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 389.00, 191.00, 49.10, 0.00, 0.00, 0.00, 389.00, 191.00, 49.10, '40', '2019-10-08 10:03:41.000000', '02100');
INSERT INTO `main_kpi_prov` VALUES (304, 'se', '1900-01-20', '00068', 'ชุมพร', 38.00, 13.00, 34.21, 41.00, 23.00, 56.10, 22.00, 17.00, 77.27, 0.00, 0.00, 0.00, 101.00, 53.00, 52.48, '50', '2019-10-08 10:03:41.000000', '02700');
INSERT INTO `main_kpi_prov` VALUES (305, 'se', '1900-01-20', '00068', 'ชุมพร', 27.00, 25.00, 92.59, 56.00, 51.00, 91.07, 0.00, 6.00, 0.00, 0.00, 0.00, 0.00, 83.00, 82.00, 98.80, '75', '2019-10-08 10:03:41.000000', '02901');
INSERT INTO `main_kpi_prov` VALUES (306, 'se', '1900-01-20', '00068', 'ชุมพร', 14.00, 13.00, 92.86, 21.00, 21.00, 100.00, 6.00, 5.00, 83.33, 0.00, 0.00, 0.00, 41.00, 39.00, 95.12, '75', '2019-10-08 10:03:41.000000', '02902');
INSERT INTO `main_kpi_prov` VALUES (307, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '65', '2019-10-08 10:03:41.000000', '02903');
INSERT INTO `main_kpi_prov` VALUES (308, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '0.8', '2019-10-08 10:03:41.000000', '03200');
INSERT INTO `main_kpi_prov` VALUES (309, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 149.00, 39.00, 26.17, 0.00, 0.00, 0.00, 149.00, 39.00, 26.17, '20', '2019-10-08 10:03:41.000000', '03300');
INSERT INTO `main_kpi_prov` VALUES (310, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 726.00, 297.00, 40.91, 0.00, 0.00, 0.00, 726.00, 297.00, 40.91, '40', '2019-10-08 10:03:41.000000', '03400');
INSERT INTO `main_kpi_prov` VALUES (311, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 10.00, 4.00, 40.00, 0.00, 1.00, 0.00, 0.00, 0.00, 0.00, 10.00, 5.00, 50.00, '50', '2019-10-08 10:03:41.000000', '03501');
INSERT INTO `main_kpi_prov` VALUES (312, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '60', '2019-10-08 10:03:41.000000', '03502');
INSERT INTO `main_kpi_prov` VALUES (313, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20', '2019-10-08 10:03:41.000000', '03600');
INSERT INTO `main_kpi_prov` VALUES (314, 'se', '1900-01-20', '00068', 'ชุมพร', 3254.00, 667.00, 20.50, 2866.00, 654.00, 22.82, 2655.00, 566.00, 21.32, 0.00, 0.00, 0.00, 8775.00, 1887.00, 21.50, '22', '2019-10-08 10:03:41.000000', '03800');
INSERT INTO `main_kpi_prov` VALUES (315, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '03900');
INSERT INTO `main_kpi_prov` VALUES (316, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '10', '2019-10-08 10:03:41.000000', '04002');
INSERT INTO `main_kpi_prov` VALUES (317, 'pe', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '70', '2019-10-08 10:03:41.000000', '04300');
INSERT INTO `main_kpi_prov` VALUES (318, 'ge', '1900-01-20', '00068', 'ชุมพร', 20.00, 11.00, 55.00, 20.00, 9.00, 45.00, 20.00, 9.00, 45.00, 0.00, 0.00, 0.00, 60.00, 29.00, 48.33, '90', '2019-10-08 10:03:41.000000', '04400');
INSERT INTO `main_kpi_prov` VALUES (319, 'ge', '1900-01-20', '00068', 'ชุมพร', 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 1.00, 100.00, '70', '2019-10-08 10:03:41.000000', '04501');
INSERT INTO `main_kpi_prov` VALUES (320, 'ge', '1900-01-20', '00068', 'ชุมพร', 8.00, 8.00, 100.00, 8.00, 8.00, 100.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 16.00, 16.00, 100.00, '40', '2019-10-08 10:03:41.000000', '04502');
INSERT INTO `main_kpi_prov` VALUES (321, 'ge', '1900-01-20', '00068', 'ชุมพร', 1.00, 0.00, 0.00, 1.00, 0.00, 0.00, 1.00, 1.00, 100.00, 0.00, 0.00, 0.00, 3.00, 1.00, 33.33, '100', '2019-10-08 10:03:41.000000', '04601');
INSERT INTO `main_kpi_prov` VALUES (322, 'ge', '1900-01-20', '00068', 'ชุมพร', 10.00, 7.00, 70.00, 10.00, 8.00, 80.00, 10.00, 8.00, 80.00, 0.00, 0.00, 0.00, 30.00, 23.00, 76.67, '90', '2019-10-08 10:03:41.000000', '04602');
INSERT INTO `main_kpi_prov` VALUES (323, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 94.00, 72.00, 76.60, 94.00, 72.00, 76.60, '60', '2019-10-08 10:03:41.000000', '04701');
INSERT INTO `main_kpi_prov` VALUES (324, 'se', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 94.00, 94.00, 100.00, 94.00, 94.00, 100.00, '100', '2019-10-08 10:03:41.000000', '04702');
INSERT INTO `main_kpi_prov` VALUES (325, 'ge', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '04901');
INSERT INTO `main_kpi_prov` VALUES (326, 'ge', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '04902');
INSERT INTO `main_kpi_prov` VALUES (327, 'ge', '1900-01-20', '00068', 'ชุมพร', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '50', '2019-10-08 10:03:41.000000', '04903');
INSERT INTO `main_kpi_prov` VALUES (328, 'ge', '1900-01-20', '00068', 'ชุมพร', 3.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 0.00, 0.00, '100', '2019-10-08 10:03:41.000000', '05000');
INSERT INTO `main_kpi_prov` VALUES (329, 'ge', '1900-01-20', '00068', 'ชุมพร', 11.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11.00, 0.00, 0.00, '4', '2019-10-08 10:03:41.000000', '05300');
INSERT INTO `main_kpi_prov` VALUES (330, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '95', '2019-10-08 10:03:41.000000', '01701');
INSERT INTO `main_kpi_prov` VALUES (331, 'se', '1900-01-20', '00062', 'นครศรีธรรมราช', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '20', '2019-10-08 10:03:41.000000', '01702');
INSERT INTO `main_kpi_prov` VALUES (332, 'se', '1900-01-20', '00063', 'กระบี่', 9.00, 9.00, 100.00, 9.00, 9.00, 100.00, 9.00, 9.00, 100.00, 0.00, 0.00, 0.00, 9.00, 9.00, 100.00, '95', '2019-10-08 10:03:41.000000', '01701');
INSERT INTO `main_kpi_prov` VALUES (333, 'se', '1900-01-20', '00063', 'กระบี่', 9.00, 5.00, 55.56, 9.00, 6.00, 66.67, 9.00, 6.00, 66.67, 0.00, 0.00, 0.00, 9.00, 6.00, 66.67, '20', '2019-10-08 10:03:41.000000', '01702');
INSERT INTO `main_kpi_prov` VALUES (334, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9.00, 9.00, 100.00, 0.00, 0.00, 0.00, 9.00, 9.00, 100.00, '95', '2019-10-08 10:03:41.000000', '01701');
INSERT INTO `main_kpi_prov` VALUES (335, 'se', '1900-01-20', '00064', 'พังงา', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 9.00, 3.00, 33.33, 0.00, 0.00, 0.00, 9.00, 3.00, 33.33, '20', '2019-10-08 10:03:41.000000', '01702');
INSERT INTO `main_kpi_prov` VALUES (336, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, 0.00, 0.00, 0.00, 3.00, 3.00, 100.00, '95', '2019-10-08 10:03:41.000000', '01701');
INSERT INTO `main_kpi_prov` VALUES (337, 'se', '1900-01-20', '00065', 'ภูเก็ต', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 3.00, 1.00, 33.33, 0.00, 0.00, 0.00, 3.00, 1.00, 33.33, '20', '2019-10-08 10:03:41.000000', '01702');
INSERT INTO `main_kpi_prov` VALUES (338, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 20.00, 20.00, 100.00, 20.00, 20.00, 100.00, 20.00, 20.00, 100.00, 0.00, 0.00, 0.00, 20.00, 20.00, 100.00, '95', '2019-10-08 10:03:41.000000', '01701');
INSERT INTO `main_kpi_prov` VALUES (339, 'se', '1900-01-20', '00066', 'สุราษฎร์ธานี', 20.00, 11.00, 55.00, 20.00, 13.00, 65.00, 20.00, 15.00, 75.00, 0.00, 0.00, 0.00, 20.00, 15.00, 75.00, '20', '2019-10-08 10:03:41.000000', '01702');
INSERT INTO `main_kpi_prov` VALUES (340, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, '95', '2019-10-08 10:03:41.000000', '01701');
INSERT INTO `main_kpi_prov` VALUES (341, 'se', '1900-01-20', '00067', 'ระนอง', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, 0.00, 0.00, 0.00, 5.00, 5.00, 100.00, '20', '2019-10-08 10:03:41.000000', '01702');
INSERT INTO `main_kpi_prov` VALUES (342, 'se', '1900-01-20', '00068', 'ชุมพร', 11.00, 11.00, 100.00, 11.00, 11.00, 100.00, 11.00, 11.00, 100.00, 0.00, 0.00, 0.00, 11.00, 11.00, 100.00, '95', '2019-10-08 10:03:41.000000', '01701');
INSERT INTO `main_kpi_prov` VALUES (343, 'se', '1900-01-20', '00068', 'ชุมพร', 11.00, 5.00, 45.45, 11.00, 7.00, 63.64, 11.00, 8.00, 72.73, 0.00, 0.00, 0.00, 11.00, 8.00, 72.73, '20', '2019-10-08 10:03:41.000000', '01702');

-- ----------------------------
-- Table structure for main_person
-- ----------------------------
DROP TABLE IF EXISTS `main_person`;
CREATE TABLE `main_person`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birth` date NOT NULL,
  `city_id` int(0) NOT NULL,
  `country_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_person_city_id_7ddbd0ea_fk_main_city_id`(`city_id`) USING BTREE,
  INDEX `main_person_country_id_280d98a5_fk_main_country_id`(`country_id`) USING BTREE,
  CONSTRAINT `main_person_city_id_7ddbd0ea_fk_main_city_id` FOREIGN KEY (`city_id`) REFERENCES `main_city` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_person_country_id_280d98a5_fk_main_country_id` FOREIGN KEY (`country_id`) REFERENCES `main_country` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_person
-- ----------------------------

-- ----------------------------
-- Table structure for main_pk_byear
-- ----------------------------
DROP TABLE IF EXISTS `main_pk_byear`;
CREATE TABLE `main_pk_byear`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `yearprocess` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_pk_byear
-- ----------------------------

-- ----------------------------
-- Table structure for main_reponse_kpi
-- ----------------------------
DROP TABLE IF EXISTS `main_reponse_kpi`;
CREATE TABLE `main_reponse_kpi`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_reponse_kpi
-- ----------------------------

-- ----------------------------
-- Table structure for main_ssj
-- ----------------------------
DROP TABLE IF EXISTS `main_ssj`;
CREATE TABLE `main_ssj`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_ssj
-- ----------------------------

-- ----------------------------
-- Table structure for main_task
-- ----------------------------
DROP TABLE IF EXISTS `main_task`;
CREATE TABLE `main_task`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `kpi_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(0) NOT NULL,
  `user_hospcode_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_task_user_id_1f6ddeed_fk_auth_user_id`(`user_id`) USING BTREE,
  INDEX `main_task_user_hospcode_id_23f6b3ad_fk_main_chospcode_id`(`user_hospcode_id`) USING BTREE,
  CONSTRAINT `main_task_user_hospcode_id_23f6b3ad_fk_main_chospcode_id` FOREIGN KEY (`user_hospcode_id`) REFERENCES `main_chospcode` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_task_user_id_1f6ddeed_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_task
-- ----------------------------

-- ----------------------------
-- Table structure for main_trole
-- ----------------------------
DROP TABLE IF EXISTS `main_trole`;
CREATE TABLE `main_trole`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `code` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_group` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of main_trole
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
