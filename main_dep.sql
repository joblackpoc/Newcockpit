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

 Date: 06/08/2020 00:07:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for main_dep
-- ----------------------------
DROP TABLE IF EXISTS `main_dep`;
CREATE TABLE `main_dep`  (
  `DEPTID` int(11) NOT NULL,
  `DEPTNAME` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DepJob` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DEPTNAMEnew` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fstaus` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fstatustime` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DepJob_old` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`DEPTID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_dep
-- ----------------------------
INSERT INTO `main_dep` VALUES (1, 'กลุ่มงานพัฒนายุทธศาสตร์สาธารณสุข\r\n', '', '', '1', '', '');
INSERT INTO `main_dep` VALUES (2, 'กลุ่มงานบริหารทั่วไป\r\n', '', '', '1', '', '');
INSERT INTO `main_dep` VALUES (3, 'กลุ่มงานทันตสาธารณสุข\r\n', '', '', '1', '', '');
INSERT INTO `main_dep` VALUES (4, 'กลุ่มงานควบคุมโรคติดต่อ\r\n', '', '', '1', '', '');
INSERT INTO `main_dep` VALUES (5, 'กลุ่มงานคุ้มครองผู้บริโภคและเภสัชสาธารณสุข\r\n', '', '', '1', '', '');
INSERT INTO `main_dep` VALUES (6, 'กลุ่มงานบริหารทรัพยากรบุคคล\r\n', '', '', '1', '', '');
INSERT INTO `main_dep` VALUES (7, 'กลุ่มงานนิติการ\r\n', '', '', '1', '', '');
INSERT INTO `main_dep` VALUES (8, 'กลุ่มงานพัฒนาคุณภาพและรูปแบบบริการ\r\n', '', '', '', '', '');
INSERT INTO `main_dep` VALUES (9, 'กลุ่มงานส่งเสริมสุขภาพ\r\n', '', '', '', '', '');
INSERT INTO `main_dep` VALUES (10, 'กลุ่มงานอนามัยสิ่งแวดล้อมและอาชีวอนามัย\r\n', '', '', '', '', '');
INSERT INTO `main_dep` VALUES (11, 'กลุ่มงานประกันสุขภาพ\r\n', '', '', '', '', '');
INSERT INTO `main_dep` VALUES (12, 'กลุ่มงานควบคุมโรคไม่ติดต่อ สุขภาพจิตและยาเสพติด\r\n', '', '', '', '', '');
INSERT INTO `main_dep` VALUES (13, 'กลุ่มงานการแพทย์แผนไทยและการแพทย์ทางเลือก\r\n', '', '', '', '', '');

SET FOREIGN_KEY_CHECKS = 1;
