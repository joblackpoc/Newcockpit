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

 Date: 06/08/2020 00:09:05
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for main_reponse_kpi
-- ----------------------------
DROP TABLE IF EXISTS `main_reponse_kpi`;
CREATE TABLE `main_reponse_kpi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_reponse_kpi
-- ----------------------------
INSERT INTO `main_reponse_kpi` VALUES (1, 'พัฒนายุทธศาสตร์สาธารณสุข');
INSERT INTO `main_reponse_kpi` VALUES (2, 'บริหารทั่วไป');
INSERT INTO `main_reponse_kpi` VALUES (3, 'ทันตสาธารณสุข');
INSERT INTO `main_reponse_kpi` VALUES (4, 'ควบคุมโรคติดต่อ');
INSERT INTO `main_reponse_kpi` VALUES (5, 'คุ้มครองผู้บริโภคและเภสัชสาธารณสุข');
INSERT INTO `main_reponse_kpi` VALUES (6, 'บริหารทรัพยากรบุคคล');
INSERT INTO `main_reponse_kpi` VALUES (7, 'นิติกร');
INSERT INTO `main_reponse_kpi` VALUES (8, 'พัฒนาคุณภาพและสรุปแบบบริการ');
INSERT INTO `main_reponse_kpi` VALUES (9, 'ส่งเสริมสุขภาพ');
INSERT INTO `main_reponse_kpi` VALUES (10, 'อนามัยสิ่งแวดล้อมและอาชีวอนามัย');
INSERT INTO `main_reponse_kpi` VALUES (11, 'ประกันสุขภาพ');
INSERT INTO `main_reponse_kpi` VALUES (12, 'ควบคุมโรคไม่ติดต่อ สุขภาพจิตและยาเสพติด');
INSERT INTO `main_reponse_kpi` VALUES (13, 'แพทย์แผนไทยและการแพทย์ทางเลือก');
INSERT INTO `main_reponse_kpi` VALUES (14, 'สุขศึกษาประชาสัมพันธ์');
INSERT INTO `main_reponse_kpi` VALUES (15, 'None');

SET FOREIGN_KEY_CHECKS = 1;
