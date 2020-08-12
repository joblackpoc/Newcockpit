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

 Date: 12/08/2020 14:01:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add cmpo', 7, 'add_cmpo');
INSERT INTO `auth_permission` VALUES (26, 'Can change cmpo', 7, 'change_cmpo');
INSERT INTO `auth_permission` VALUES (27, 'Can delete cmpo', 7, 'delete_cmpo');
INSERT INTO `auth_permission` VALUES (28, 'Can view cmpo', 7, 'view_cmpo');
INSERT INTO `auth_permission` VALUES (29, 'Can add excellence', 8, 'add_excellence');
INSERT INTO `auth_permission` VALUES (30, 'Can change excellence', 8, 'change_excellence');
INSERT INTO `auth_permission` VALUES (31, 'Can delete excellence', 8, 'delete_excellence');
INSERT INTO `auth_permission` VALUES (32, 'Can view excellence', 8, 'view_excellence');
INSERT INTO `auth_permission` VALUES (33, 'Can add group', 9, 'add_group');
INSERT INTO `auth_permission` VALUES (34, 'Can change group', 9, 'change_group');
INSERT INTO `auth_permission` VALUES (35, 'Can delete group', 9, 'delete_group');
INSERT INTO `auth_permission` VALUES (36, 'Can view group', 9, 'view_group');
INSERT INTO `auth_permission` VALUES (37, 'Can add index', 10, 'add_index');
INSERT INTO `auth_permission` VALUES (38, 'Can change index', 10, 'change_index');
INSERT INTO `auth_permission` VALUES (39, 'Can delete index', 10, 'delete_index');
INSERT INTO `auth_permission` VALUES (40, 'Can view index', 10, 'view_index');
INSERT INTO `auth_permission` VALUES (41, 'Can add kpi_eval_prov', 11, 'add_kpi_eval_prov');
INSERT INTO `auth_permission` VALUES (42, 'Can change kpi_eval_prov', 11, 'change_kpi_eval_prov');
INSERT INTO `auth_permission` VALUES (43, 'Can delete kpi_eval_prov', 11, 'delete_kpi_eval_prov');
INSERT INTO `auth_permission` VALUES (44, 'Can view kpi_eval_prov', 11, 'view_kpi_eval_prov');
INSERT INTO `auth_permission` VALUES (45, 'Can add kpi_eval_rh', 12, 'add_kpi_eval_rh');
INSERT INTO `auth_permission` VALUES (46, 'Can change kpi_eval_rh', 12, 'change_kpi_eval_rh');
INSERT INTO `auth_permission` VALUES (47, 'Can delete kpi_eval_rh', 12, 'delete_kpi_eval_rh');
INSERT INTO `auth_permission` VALUES (48, 'Can view kpi_eval_rh', 12, 'view_kpi_eval_rh');
INSERT INTO `auth_permission` VALUES (49, 'Can add kpi_index', 13, 'add_kpi_index');
INSERT INTO `auth_permission` VALUES (50, 'Can change kpi_index', 13, 'change_kpi_index');
INSERT INTO `auth_permission` VALUES (51, 'Can delete kpi_index', 13, 'delete_kpi_index');
INSERT INTO `auth_permission` VALUES (52, 'Can view kpi_index', 13, 'view_kpi_index');
INSERT INTO `auth_permission` VALUES (53, 'Can add kpi_input', 14, 'add_kpi_input');
INSERT INTO `auth_permission` VALUES (54, 'Can change kpi_input', 14, 'change_kpi_input');
INSERT INTO `auth_permission` VALUES (55, 'Can delete kpi_input', 14, 'delete_kpi_input');
INSERT INTO `auth_permission` VALUES (56, 'Can view kpi_input', 14, 'view_kpi_input');
INSERT INTO `auth_permission` VALUES (57, 'Can add response', 15, 'add_response');
INSERT INTO `auth_permission` VALUES (58, 'Can change response', 15, 'change_response');
INSERT INTO `auth_permission` VALUES (59, 'Can delete response', 15, 'delete_response');
INSERT INTO `auth_permission` VALUES (60, 'Can view response', 15, 'view_response');
INSERT INTO `auth_permission` VALUES (61, 'Can add จังหวัด', 16, 'add_ssj');
INSERT INTO `auth_permission` VALUES (62, 'Can change จังหวัด', 16, 'change_ssj');
INSERT INTO `auth_permission` VALUES (63, 'Can delete จังหวัด', 16, 'delete_ssj');
INSERT INTO `auth_permission` VALUES (64, 'Can view จังหวัด', 16, 'view_ssj');
INSERT INTO `auth_permission` VALUES (65, 'Can add unit', 17, 'add_unit');
INSERT INTO `auth_permission` VALUES (66, 'Can change unit', 17, 'change_unit');
INSERT INTO `auth_permission` VALUES (67, 'Can delete unit', 17, 'delete_unit');
INSERT INTO `auth_permission` VALUES (68, 'Can view unit', 17, 'view_unit');
INSERT INTO `auth_permission` VALUES (69, 'Can add year', 18, 'add_year');
INSERT INTO `auth_permission` VALUES (70, 'Can change year', 18, 'change_year');
INSERT INTO `auth_permission` VALUES (71, 'Can delete year', 18, 'delete_year');
INSERT INTO `auth_permission` VALUES (72, 'Can view year', 18, 'view_year');
INSERT INTO `auth_permission` VALUES (73, 'Can add profile', 19, 'add_profile');
INSERT INTO `auth_permission` VALUES (74, 'Can change profile', 19, 'change_profile');
INSERT INTO `auth_permission` VALUES (75, 'Can delete profile', 19, 'delete_profile');
INSERT INTO `auth_permission` VALUES (76, 'Can view profile', 19, 'view_profile');
INSERT INTO `auth_permission` VALUES (77, 'Can add ตัวชี้วัด KPI', 20, 'add_kpi');
INSERT INTO `auth_permission` VALUES (78, 'Can change ตัวชี้วัด KPI', 20, 'change_kpi');
INSERT INTO `auth_permission` VALUES (79, 'Can delete ตัวชี้วัด KPI', 20, 'delete_kpi');
INSERT INTO `auth_permission` VALUES (80, 'Can view ตัวชี้วัด KPI', 20, 'view_kpi');
INSERT INTO `auth_permission` VALUES (81, 'Can add บันทึก KPI', 21, 'add_keyinput');
INSERT INTO `auth_permission` VALUES (82, 'Can change บันทึก KPI', 21, 'change_keyinput');
INSERT INTO `auth_permission` VALUES (83, 'Can delete บันทึก KPI', 21, 'delete_keyinput');
INSERT INTO `auth_permission` VALUES (84, 'Can view บันทึก KPI', 21, 'view_keyinput');
INSERT INTO `auth_permission` VALUES (85, 'Can add input', 22, 'add_input');
INSERT INTO `auth_permission` VALUES (86, 'Can change input', 22, 'change_input');
INSERT INTO `auth_permission` VALUES (87, 'Can delete input', 22, 'delete_input');
INSERT INTO `auth_permission` VALUES (88, 'Can view input', 22, 'view_input');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$216000$5BncNRZJYFbq$97D1RAtcmXevF3a6ixbtAXc256nACeyAbjE0ZPYWUj8=', '2020-08-10 04:39:53.698801', 1, 'jammie', '', '', 'jammieweerapat@gmail.com', 1, 1, '2020-08-10 04:31:41.381847');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$216000$peQAWsqbuWhH$WTYad3qKX7n1G29NwlzXAFrx4IlOaEd8oOQFzFLuypE=', '2020-08-10 04:34:06.950514', 1, 'admin', '', '', 'joblackpoc@gmail.com', 1, 1, '2020-08-10 04:33:49.691534');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2020-08-11 04:12:02.284246', '1', 'อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (2, '2020-08-11 04:12:06.960993', '1', '00100 - อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', 2, '[]', 20, 1);
INSERT INTO `django_admin_log` VALUES (3, '2020-08-11 04:21:20.454486', '2', 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (4, '2020-08-11 04:22:23.995746', '3', 'จำนวนครอบครัวไทยมีความรอบรู้สุขภาพเรื่องกิจกรรมทางกาย', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (5, '2020-08-11 04:23:45.379850', '4', 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (6, '2020-08-11 04:28:27.972613', '5', 'ระดับความสำเร็จในการจัดการภาวะฉุกเฉินทางสาธารณสุขของหน่วยงานระดับจังหวัด', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (7, '2020-08-11 08:17:41.441418', '6', 'ร้อยละของจังหวัดมีการขับเคลื่อนมาตรการยุติการใช้สารเคมีทางการเกษตรที่มีอันตรายสูงร่วมกับหน่วยงานที่เกี่ยวข้องในระดับส่วนกลาง และภูมิภาค อย่างน้อยจังหวัดละ 1 เรื่อง', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log` VALUES (8, '2020-08-11 08:19:19.734575', '7', 'ร้อยละของจังหวัดมีระบบรับแจ้งข่าว การใช้/ป่วยจากการสัมผัส สารเคมีทางการเกษตร 3 ชนิด (พาราควอต คลอร์ไพริฟอส ไกลโฟเสต) โดยประชาชน/อสม. ผ่าน Mobile Application สู่หน่วยบริการ (คลินิกสารเคมีเกษตร/คลินิกโร', 1, '[{\"added\": {}}]', 10, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'main', 'cmpo');
INSERT INTO `django_content_type` VALUES (8, 'main', 'excellence');
INSERT INTO `django_content_type` VALUES (9, 'main', 'group');
INSERT INTO `django_content_type` VALUES (10, 'main', 'index');
INSERT INTO `django_content_type` VALUES (22, 'main', 'input');
INSERT INTO `django_content_type` VALUES (21, 'main', 'keyinput');
INSERT INTO `django_content_type` VALUES (20, 'main', 'kpi');
INSERT INTO `django_content_type` VALUES (11, 'main', 'kpi_eval_prov');
INSERT INTO `django_content_type` VALUES (12, 'main', 'kpi_eval_rh');
INSERT INTO `django_content_type` VALUES (13, 'main', 'kpi_index');
INSERT INTO `django_content_type` VALUES (14, 'main', 'kpi_input');
INSERT INTO `django_content_type` VALUES (19, 'main', 'profile');
INSERT INTO `django_content_type` VALUES (15, 'main', 'response');
INSERT INTO `django_content_type` VALUES (16, 'main', 'ssj');
INSERT INTO `django_content_type` VALUES (17, 'main', 'unit');
INSERT INTO `django_content_type` VALUES (18, 'main', 'year');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-08-10 04:17:20.557936');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-08-10 04:17:21.968096');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-08-10 04:17:23.394508');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-08-10 04:17:23.800859');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-10 04:17:23.890502');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-08-10 04:17:24.281637');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-08-10 04:17:24.444027');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-08-10 04:17:24.605014');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-08-10 04:17:24.687936');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-08-10 04:17:24.876582');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-08-10 04:17:24.944399');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-10 04:17:25.025685');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-08-10 04:17:25.188852');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-10 04:17:25.380905');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-08-10 04:17:25.640046');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-08-10 04:17:25.811934');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2020-08-10 04:17:25.987585');
INSERT INTO `django_migrations` VALUES (18, 'main', '0001_initial', '2020-08-10 04:17:33.710133');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2020-08-10 04:17:35.397168');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('6t52zjuazymgypjf9v48q4pcbr7z8bmz', '.eJxVjEEOwiAQRe_C2hCBKRSX7nsGMsyAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERSpx-t4j0SHUHfMd6a5JaXZc5yl2RB-1yapye18P9OyjYy7dGIpuUtwAElvQYDTitsnUZ09lZHsbBW0bwPoE20TjMGLNjwyoSkBbvD-OWODs:1k4zbF:YWk-5J5qE0q8hMn3oq5_i9YcK-lOApgR4YHbapihcdU', '2020-08-24 04:39:53.816947');
INSERT INTO `django_session` VALUES ('yqfqi2mzywfeu6k4iaxy7pjltrtji690', '.eJxVjMEOwiAQRP-FsyF0kQIevfsNZGEXqRpISnsy_rtt0oOeJpn3Zt4i4LqUsHaew0TiIkCcfruI6cl1B_TAem8ytbrMU5S7Ig_a5a0Rv66H-3dQsJdtje6sNI7egbcK0BjLW0TN2WZCNyQPxjhAZvIqAmUYOdOglXaObGbx-QLV2jgL:1k4zVf:zC_M6X67uzRMl4v9rfq8NL7qAdHJQ0H-85zJFaswhUk', '2020-08-24 04:34:07.077495');

-- ----------------------------
-- Table structure for main_cmpo
-- ----------------------------
DROP TABLE IF EXISTS `main_cmpo`;
CREATE TABLE `main_cmpo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `population` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_cmpo
-- ----------------------------

-- ----------------------------
-- Table structure for main_excellence
-- ----------------------------
DROP TABLE IF EXISTS `main_excellence`;
CREATE TABLE `main_excellence`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_name` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_excellence
-- ----------------------------
INSERT INTO `main_excellence` VALUES (1, 'pp', 'PP&P Excellence');
INSERT INTO `main_excellence` VALUES (2, 'pe', 'People Excellence');
INSERT INTO `main_excellence` VALUES (3, 'se', 'Service Excellence');
INSERT INTO `main_excellence` VALUES (4, 'ge', 'Governance Excellence');
INSERT INTO `main_excellence` VALUES (5, 'ncd', 'NCD');

-- ----------------------------
-- Table structure for main_group
-- ----------------------------
DROP TABLE IF EXISTS `main_group`;
CREATE TABLE `main_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
-- Table structure for main_index
-- ----------------------------
DROP TABLE IF EXISTS `main_index`;
CREATE TABLE `main_index`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_code` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goal` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goal_descript` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cri_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formular` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formular_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descript_a` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descript_b` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `excellence_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `unit_id` int(11) NULL DEFAULT NULL,
  `year_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kpi_code`(`kpi_code`) USING BTREE,
  INDEX `main_index_unit_id_7d9e3bcd_fk_main_unit_id`(`unit_id`) USING BTREE,
  INDEX `main_index_year_id_fc0e4836_fk_main_year_id`(`year_id`) USING BTREE,
  INDEX `main_index_excellence_id_c6d49eb7_fk_main_excellence_id`(`excellence_id`) USING BTREE,
  INDEX `main_index_group_id_766ba073_fk_main_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `main_index_excellence_id_c6d49eb7_fk_main_excellence_id` FOREIGN KEY (`excellence_id`) REFERENCES `main_excellence` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_index_group_id_766ba073_fk_main_group_id` FOREIGN KEY (`group_id`) REFERENCES `main_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_index_unit_id_7d9e3bcd_fk_main_unit_id` FOREIGN KEY (`unit_id`) REFERENCES `main_unit` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_index_year_id_fc0e4836_fk_main_year_id` FOREIGN KEY (`year_id`) REFERENCES `main_year` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_index
-- ----------------------------
INSERT INTO `main_index` VALUES (1, 'อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', '00100', '17', 'ค่าเป้าหมาย ไม่เกิน 17 ต่อแสนการเกิดประชากร', '<', '(A/B)*100000', 'b', 'A = จำนวนมารดาตายระหว่างตั้งครรภ์ คลอด และหลังคลอดภายใน 42 วัน ทุกสาเหตุ ยกเว้นอุบัติเหตุ ในช่วงเวลาที่กำหนด (คน)', 'B = จำนวนการเกิดมีชีพทั้งหมดในช่วงเวลาเดียวกัน (คน)', 1, 1, 9, NULL, 1);
INSERT INTO `main_index` VALUES (2, 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', '00900', '80', 'ค่าเป้าหมาย ไม่น้อยกว่าร้อยละ 80', '>=', '(A/B)*100', 'a', 'A = จำนวนตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์ตามองค์ประกอบ', 'B = จำนวนตำบลทั้งหมด', 1, 1, 9, NULL, 1);
INSERT INTO `main_index` VALUES (3, 'จำนวนครอบครัวไทยมีความรอบรู้สุขภาพเรื่องกิจกรรมทางกาย', '01000', '', 'ค่าเป้าหมาย เท่ากับ 8,729', '', '', '', '', '', 1, 1, 9, NULL, 1);
INSERT INTO `main_index` VALUES (4, 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', '01100', '70', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 70', '>=', '(A/B)*100', '', 'A = จำนวนอำเภอที่ผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิต (แห่ง)', 'B = จำนวนอำเภอทั้งหมด (แห่ง)', 1, 4, 1, NULL, 1);
INSERT INTO `main_index` VALUES (5, 'ระดับความสำเร็จในการจัดการภาวะฉุกเฉินทางสาธารณสุขของหน่วยงานระดับจังหวัด', '01200', '50', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 70', '', '(A/B)*100', '', 'A = จำนวนจังหวัด ที่ดำเนินการครบ 5 ขั้นตอน', 'B = จำนวนจังหวัดทั้งหมด 76 จังหวัด', 1, 3, 4, NULL, 1);
INSERT INTO `main_index` VALUES (6, 'ร้อยละของจังหวัดมีการขับเคลื่อนมาตรการยุติการใช้สารเคมีทางการเกษตรที่มีอันตรายสูงร่วมกับหน่วยงานที่เกี่ยวข้องในระดับส่วนกลาง และภูมิภาค อย่างน้อยจังหวัดละ 1 เรื่อง', '01400', '100', 'ค่าเป้าหมาย เท่ากับร้อยละ 100', '=', '(A/B)*100', 'a', 'A = จำนวนจังหวัดมีการขับเคลื่อนมาตรการยุติการใช้สารเคมีทางการเกษตรที่มีอันตรายสูง อย่างน้อย 1 เรื่อง', 'B = จำนวนจังหวัดทั้งหมด (76 จังหวัด (ไม่รวม กทม.))', 1, 1, 10, NULL, 1);
INSERT INTO `main_index` VALUES (7, 'ร้อยละของจังหวัดมีระบบรับแจ้งข่าว การใช้/ป่วยจากการสัมผัส สารเคมีทางการเกษตร 3 ชนิด (พาราควอต คลอร์ไพริฟอส ไกลโฟเสต) โดยประชาชน/อสม. ผ่าน Mobile Application สู่หน่วยบริการ (คลินิกสารเคมีเกษตร/คลินิกโรคจากการทำงาน)', '01500', '100', 'ค่าเป้าหมาย เท่ากับร้อยละ 100', '=', '(A/B)*100', '', 'A = จำนวนจังหวัดที่มีข้อมูลการสำรวจการใช้และปริมาณสารเคมีทางการเกษตร และการใช้สารหรือวิธีการอื่นที่ปลอดภัยไม่ใช่สารเคมี', 'B = จำนวนจังหวัดทั้งหมด (76 จังหวัด ไม่รวม กทม.)', 1, 1, 10, NULL, 1);

-- ----------------------------
-- Table structure for main_input
-- ----------------------------
DROP TABLE IF EXISTS `main_input`;
CREATE TABLE `main_input`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a1` int(11) NULL DEFAULT NULL,
  `b1` int(11) NULL DEFAULT NULL,
  `a2` int(11) NULL DEFAULT NULL,
  `b2` int(11) NULL DEFAULT NULL,
  `a3` int(11) NULL DEFAULT NULL,
  `b3` int(11) NULL DEFAULT NULL,
  `a4` int(11) NULL DEFAULT NULL,
  `b4` int(11) NULL DEFAULT NULL,
  `a5` int(11) NULL DEFAULT NULL,
  `b5` int(11) NULL DEFAULT NULL,
  `a6` int(11) NULL DEFAULT NULL,
  `b6` int(11) NULL DEFAULT NULL,
  `a7` int(11) NULL DEFAULT NULL,
  `b7` int(11) NULL DEFAULT NULL,
  `a8` int(11) NULL DEFAULT NULL,
  `b8` int(11) NULL DEFAULT NULL,
  `a9` int(11) NULL DEFAULT NULL,
  `b9` int(11) NULL DEFAULT NULL,
  `a10` int(11) NULL DEFAULT NULL,
  `b10` int(11) NULL DEFAULT NULL,
  `a11` int(11) NULL DEFAULT NULL,
  `b11` int(11) NULL DEFAULT NULL,
  `a12` int(11) NULL DEFAULT NULL,
  `b12` int(11) NULL DEFAULT NULL,
  `input_update` datetime(6) NOT NULL,
  `excellence_id` int(11) NULL DEFAULT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  `index_id` int(11) NULL DEFAULT NULL,
  `ssj_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `year_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `main_input_excellence_id_36301217_fk_main_excellence_id`(`excellence_id`) USING BTREE,
  INDEX `main_input_group_id_7e56e525_fk_main_group_id`(`group_id`) USING BTREE,
  INDEX `main_input_index_id_a5de93d9_fk_main_index_id`(`index_id`) USING BTREE,
  INDEX `main_input_ssj_id_7c0779ad_fk_main_ssj_id`(`ssj_id`) USING BTREE,
  INDEX `main_input_user_id_c7f9e123_fk_auth_user_id`(`user_id`) USING BTREE,
  INDEX `main_input_year_id_d5ec68b9_fk_main_year_id`(`year_id`) USING BTREE,
  CONSTRAINT `main_input_excellence_id_36301217_fk_main_excellence_id` FOREIGN KEY (`excellence_id`) REFERENCES `main_excellence` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_input_group_id_7e56e525_fk_main_group_id` FOREIGN KEY (`group_id`) REFERENCES `main_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_input_index_id_a5de93d9_fk_main_index_id` FOREIGN KEY (`index_id`) REFERENCES `main_index` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_input_ssj_id_7c0779ad_fk_main_ssj_id` FOREIGN KEY (`ssj_id`) REFERENCES `main_ssj` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_input_user_id_c7f9e123_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_input_year_id_d5ec68b9_fk_main_year_id` FOREIGN KEY (`year_id`) REFERENCES `main_year` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_input
-- ----------------------------

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
  INDEX `main_keyinput_response_id_9f6dce44_fk_main_response_id`(`response_id`) USING BTREE,
  INDEX `main_keyinput_user_id_00f116de_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `main_keyinput_hospcode_id_b2192709_fk_main_ssj_id` FOREIGN KEY (`hospcode_id`) REFERENCES `main_ssj` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_kpi_id_a2171e20_fk_main_kpi_id` FOREIGN KEY (`kpi_id`) REFERENCES `main_kpi` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_response_id_9f6dce44_fk_main_response_id` FOREIGN KEY (`response_id`) REFERENCES `main_response` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_keyinput_user_id_00f116de_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_keyinput
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi`;
CREATE TABLE `main_kpi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `response_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `kpi_code`(`kpi_code`) USING BTREE,
  INDEX `main_kpi_response_id_1078a932_fk_main_response_id`(`response_id`) USING BTREE,
  CONSTRAINT `main_kpi_response_id_1078a932_fk_main_response_id` FOREIGN KEY (`response_id`) REFERENCES `main_response` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_kpi
-- ----------------------------
INSERT INTO `main_kpi` VALUES (1, '00100', 'อัตราส่วนการตายมารดาไทยไม่เกิน 17 ต่อแสนการเกิดมีชีพ', 'pp', 'PP&P Excellence', '17', 'ค่าเป้าหมาย ไม่เกิน 17 ต่อแสนการเกิดประชากร', '<', '', '(A/B)*100000', 'b', 'A = จำนวนมารดาตายระหว่างตั้งครรภ์ คลอด และหลังคลอดภายใน 42 วัน ทุกสาเหตุ ยกเว้นอุบัติเหตุ ในช่วงเวลาที่กำหนด (คน)', 'B = จำนวนการเกิดมีชีพทั้งหมดในช่วงเวลาเดียวกัน (คน)', 9);
INSERT INTO `main_kpi` VALUES (2, '00900', 'ร้อยละของตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์', 'pp', 'PP&P Excellence', '80', 'ค่าเป้าหมาย ไม่น้อยกว่าร้อยละ 80', '>=', '', '(A/B)*100', 'a', 'A = จำนวนตำบลที่มีระบบการส่งเสริมสุขภาพดูแลผู้สูงอายุระยะยาว (Long Term Care) ในชุมชนผ่านเกณฑ์ตามองค์ประกอบ', 'B = จำนวนตำบลทั้งหมด', 9);
INSERT INTO `main_kpi` VALUES (3, '01000', 'จำนวนครอบครัวไทยมีความรอบรู้สุขภาพเรื่องกิจกรรมทางกาย', 'pp', 'PP&P Excellence', '', 'ค่าเป้าหมาย เท่ากับ 8,729', '', '', '', '', '', '', 9);
INSERT INTO `main_kpi` VALUES (4, '01100', 'ร้อยละของอำเภอผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิตที่มีคุณภาพ (พชอ.)', 'ge', 'Governance Excellence', '70', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 70', '>=', '', '(A/B)*100', '', 'A = จำนวนอำเภอที่ผ่านเกณฑ์การประเมินการพัฒนาคุณภาพชีวิต (แห่ง)', 'B = จำนวนอำเภอทั้งหมด (แห่ง)', 1);
INSERT INTO `main_kpi` VALUES (5, '01200', 'ระดับความสำเร็จในการจัดการภาวะฉุกเฉินทางสาธารณสุขของหน่วยงานระดับจังหวัด', 'se', 'Service Excellence', '50', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 70', '>=', '', '(A/B)*100', '', 'A = จำนวนจังหวัด ที่ดำเนินการครบ 5 ขั้นตอน', 'B = จำนวนจังหวัดทั้งหมด 76 จังหวัด', 4);
INSERT INTO `main_kpi` VALUES (6, '01400', 'ร้อยละของจังหวัดมีการขับเคลื่อนมาตรการยุติการใช้สารเคมีทางการเกษตรที่มีอันตรายสูงร่วมกับหน่วยงานที่เกี่ยวข้องในระดับส่วนกลาง และภูมิภาค อย่างน้อยจังหวัดละ 1 เรื่อง', 'pp', 'PP&P Excellence', '100', 'ค่าเป้าหมาย เท่ากับร้อยละ 100', '=', '', '(A/B)*100', 'a', 'A = จำนวนจังหวัดมีการขับเคลื่อนมาตรการยุติการใช้สารเคมีทางการเกษตรที่มีอันตรายสูง อย่างน้อย 1 เรื่อง', 'B = จำนวนจังหวัดทั้งหมด (76 จังหวัด (ไม่รวม กทม.))', 10);
INSERT INTO `main_kpi` VALUES (7, '01500', 'ร้อยละของจังหวัดมีระบบรับแจ้งข่าว การใช้/ป่วยจากการสัมผัส สารเคมีทางการเกษตร 3 ชนิด (พาราควอต คลอร์ไพริฟอส ไกลโฟเสต) โดยประชาชน/อสม. ผ่าน Mobile Application สู่หน่วยบริการ (คลินิกสารเคมีเกษตร/คลินิกโรคจากการทำงาน)', 'pp', 'PP&P Excellence', '100', 'ค่าเป้าหมาย เท่ากับร้อยละ 100', '=', '', '(A/B)*100', '', 'A = จำนวนจังหวัดที่มีข้อมูลการสำรวจการใช้และปริมาณสารเคมีทางการเกษตร และการใช้สารหรือวิธีการอื่นที่ปลอดภัยไม่ใช่สารเคมี', 'B = จำนวนจังหวัดทั้งหมด (76 จังหวัด ไม่รวม กทม.)', 10);
INSERT INTO `main_kpi` VALUES (8, '01600', 'ร้อยละของจังหวัดมีการจัดทำฐานข้อมูลอาชีวอนามัยและสิ่งแวดล้อม (Occupational and Environmental Health Profile : OEHP) ด้านเกษตรกรรม และมีการรายงานการเจ็บป่วยหรือเสียชีวิตจากสารเคมีทางการเกษตร (รหัสโรค T60)', 'pp', 'PP&P Excellence', '100', 'ค่าเป้าหมาย เท่ากับร้อยละ 100', '=', '', '(A/B)*100', '', 'A = จำนวนจังหวัดที่มีการจัดทำฐานข้อมูลอาชีวอนามัยและสิ่งแวดล้อม ด้านเกษตรกรรม และมีการรายงานการเจ็บป่วยหรือเสียชีวิตจากสารเคมีทางการเกษตร (รหัสโรค T60)', 'B = จำนวนจังหวัดทั้งหมด (76 จังหวัด (ไม่รวม กทม.))', 10);
INSERT INTO `main_kpi` VALUES (9, '01700', 'ร้อยละของผลิตภัณฑ์สุขภาพกลุ่มเสี่ยงที่ได้รับการตรวจสอบได้มาตรฐานตามเกณฑ์ที่กำหนด', 'pp', 'PP&P Excellence', '80', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 80', '>=', '', '(A/B)*100', '', 'A = จำนวนผลิตภัณฑ์สุขภาพกลุ่มเสี่ยง ได้แก่ ผักและผลไม้สด, ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมายที่พบสารที่มีฤทธิ์ในการลดน้ำหนักหรือเสริมสร้างสมรรถภาพทางเพศเครื่องสำอาง ที่ได้รับการตรวจสอบทางห้องปฏิบัติการมีความปลอดภัย และ จำนวนผลิตภัณฑ์สมุนไพรที่ปลอดภัยที่ตรวจพบจากชุดทดสอบอย่างง่ายและการตรวจสอบทางห้องปฏิบัติการ (กรณีตรวจยืนยันทางห้องปฏิบัติการเมื่อพบผลการตรวจสอบด้วยชุดทดสอบอย่างง่ายตกมาตรฐาน)', 'B = จำนวนผลิตภัณฑ์สุขภาพกลุ่มเสี่ยง ได้แก่ ผักและผลไม้สด, ผลิตภัณฑ์เสริมอาหารหรืออาหารกลุ่มเป้าหมายที่พบสารที่มีฤทธิ์ในการลดน้ำหนักหรือเสริมสร้างสมรรถภาพทางเพศ เครื่องสำอาง ที่ได้รับผลวิเคราะห์จากห้องปฏิบัติการทั้งหมด และจำนวนผลิตภัณฑ์สมุนไพรที่มีผลตรวจวิเคราะห์จากชุดทดสอบอย่างง่ายทั้งหมด', 5);
INSERT INTO `main_kpi` VALUES (10, '01810', 'ร้อยละของโรงพยาบาลที่พัฒนาอนามัยสิ่งแวดล้อมได้ตามเกณฑ์ GREEN&CLEAN Hospital\r\n ระดับดีมากขึ้นไป\r\nตัวชี้วัดย่อย', 'pp', 'PP&P Excellence', '75', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 75', '>=', '', '(A/B)*100', '', 'A = จำนวนโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนินกิจกรรม GREEN & CLEAN ระดับดีมาก', 'B = จำนวนโรงพยาบาลสังกัดกระทรวงสาธารณสุขทั้งหมด', 10);
INSERT INTO `main_kpi` VALUES (11, '01820', 'ร้อยละของโรงพยาบาลที่พัฒนาอนามัยสิ่งแวดล้อมได้ตามเกณฑ์ GREEN&CLEAN Hospital\r\n ระดับดีมาก Plus\r\nตัวชี้วัดย่อย', 'pp', 'PP&P Excellence', '30', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 30', '>=', '', '(A/B)*100', '', 'A = จำนวนโรงพยาบาลสังกัดกระทรวงสาธารณสุขที่ดำเนินกิจกรรม GREEN & CLEAN ผ่านเกณฑ์ระดับดีมาก Plus', 'B = จำนวนโรงพยาบาลสังกัดกระทรวงสาธารณสุขทั้งหมด', 10);
INSERT INTO `main_kpi` VALUES (12, '01900', 'ร้อยละของจังหวัดมีระบบจัดการปัจจัยเสี่ยงด้านสิ่งแวดล้อมที่ส่งผลกระทบต่อสุขภาพ ระดับดี', 'se', 'Service Excellence', '80', 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 80', '>=', '', '(A/B)*100', 'a', 'A = จำนวนจังหวัดมีระบบจัดการปัจจัยเสี่ยงด้านสิ่งแวดล้อมที่ส่งผลกระทบต่อสุขภาพผ่านเกณฑ์ระดับดี', 'B = จำนวนจังหวัดทั้งหมด', 10);
INSERT INTO `main_kpi` VALUES (13, '02000', 'ร้อยละของหน่วยบริการปฐมภูมิและเครือข่ายหน่วยบริการปฐมภูมิที่เปิดดำเนินการในพื้นที่', 'se', 'Service Excellence', '25', 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 25', '>=', '', '(A/B)*100', 'a', 'A = จำนวนหน่วยบริการปฐมภูมิและเครือข่ายหน่วยบริการปฐมภูมิ ที่ รพศ./รพท/รพช./รพ.สต ดำเนินการให้บริการสุขภาพปฐมภูมิ', 'B = จำนวนหน่วยบริการปฐมภูมิและเครือข่ายหน่วยบริการปฐมภูมิเป้าหมาย หรือแผนการจัดตั้งหน่วยบริการสุขภาพปฐมภูมิ (กำลังดำเนินการจัดทำแผนการจัดตั้งเพื่อสอดคล้องกับพรบ.ระบบสุขภาพปฐมภูมิ พ.ศ.2562)', 8);
INSERT INTO `main_kpi` VALUES (14, '02100', 'ร้อยละของประชาชนในอำเภอที่เป็นที่ตั้งของ รพศ./รพท. มีแพทย์เวชศาสตร์ครอบครัวหรือแพทย์ที่ผ่านการอบรมและคณะผู้ให้บริการสุขภาพปฐมภูมิดูแลด้วยหลักเวชศาสตร์ครอบครัว', '', '', '40', 'ร้อยละของประชาชนในอำเภอที่เป็นที่ตั้งของ รพศ./รพท. มีแพทย์เวชศาสตร์ครอบครัวหรือแพทย์ที่ผ่านการอบรมและคณะผู้ให้บริการสุขภาพปฐมภูมิดูแลด้วยหลักเวชศาสตร์ครอบครัว', '>=', '', '(A/B)*100', '', 'A = จำนวนประชาชนในอำเภอที่เป็นที่ตั้งของ รพศ./รพท. ที่จัดตั้งหน่วยบริการปฐมภูมิ และเครือข่ายหน่วยบริการปฐมภูมิ', 'B = จำนวนประชากรทั้งหมดในอำเภอที่เป็นที่ตั้งของ รพศ./รพท.(แหล่งข้อมูลประชากร ทะเบียนราษฎร์ ณ 31 ธค. 2562) https://www.dopa.go.th', 8);
INSERT INTO `main_kpi` VALUES (15, '02200', 'ร้อยละของผู้ป่วยกลุ่มเป้าหมายที่ได้รับการดูแลจาก อสม. หมอประจำบ้าน มีคุณภาพชีวิตที่ดี', '', '', '70', 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 70', '>=', '', '(A/B)*100', '', 'A = จำนวนผู้ป่วยกลุ่มเป้าหมายที่ได้รับการดูแลจาก อสม. หมอประจำบ้าน มีคุณภาพชีวิตที่ดี', 'B = จำนวนผู้ป่วยกลุ่มเป้าหมาย', 8);
INSERT INTO `main_kpi` VALUES (16, '02300', 'จำนวน อสม. ที่ได้รับการพัฒนาศักยภาพเป็น อสม. หมอประจำบ้าน', '', '', '', 'ค่าเป้าหมาย เท่ากับ 80,000', '', '', 'A', '', 'A=จำนวน อสม.ที่ได้รับการพัฒนาศักยภาพเป็น อสม.หมอประจำบ้าน', '', 8);
INSERT INTO `main_kpi` VALUES (17, '02440', 'ร้อยละผู้ป่วยโรคหลอดเลือดสมองตีบ/อุดตันระยะเฉียบพลัน (I63) ที่มีอาการไม่เกิน 4.5 ชั่วโมงได้รับการรักษาด้วยยาละลายลิ่มเลือดทางหลอดเลือดดำภายใน 60 นาที (door to needle time)', '', '', '60', 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 60', '>=', '', '(A/B)*100', '', 'A = จำนวนผู้ป่วยโรคหลอดเลือดสมองตีบ/อุดตันระยะเฉียบพลัน (I63) ที่มีอาการไม่เกิน 4.5 ชั่วโมงได้รับการรักษาด้วยยาละลายลิ่มเลือดทางหลอดเลือดดำภายใน 60 นาที นับตั้งแต่ผู้ป่วยมาถึงโรงพยาบาล (OPD/ER)', 'B = จำนวนผู้ป่วยโรคหลอดเลือดสมองตีบ/อุดตันระยะเฉียบพลัน (I63) ที่มีอาการไม่เกิน 4.5 ชั่วโมงได้รับการรักษาด้วยยาละลายลิ่มเลือดทางหลอดเลือดดำในช่วงเวลาเดียวกัน', 12);
INSERT INTO `main_kpi` VALUES (18, '02450', 'ร้อยละผู้ป่วยโรคหลอดเลือดสมอง (I60-I69) ที่มีอาการไม่เกิน 72 ชั่วโมงได้รับการรักษาใน Stroke Unit', 'se', 'Service Excellence', '50', 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 50', '>=', '', '(A/B)*100', '', 'A = จำนวนผู้ป่วยโรคหลอดเลือดสมอง (I60-I69) ที่มีอาการไม่เกิน 72 ชั่วโมงได้รับการรักษาใน Stroke Unit', 'B = จำนวน0ผู้ป่วยโรคหลอดเลือดสมอง (I60-I69) ที่มีอาการไม่เกิน 72 ชั่วโมงได้รับการรักษาในช่วงเวลาเดียวกัน', 12);
INSERT INTO `main_kpi` VALUES (19, '02500', 'อัตราความสำเร็จการรักษาผู้ป่วยวัณโรคปอดรายใหม่', 'se', 'Service Excellence', '88', 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 85', '>=', '', '(A/B)*100', 'a', 'A = จำนวนผู้ป่วยวัณโรคปอดรายใหม่ ที่ขึ้นทะเบียน ในไตรมาสที่ 1 ของปีงบประมาณ 2563 (เดือนตุลาคม – ธันวาคม 2562) โดยมีผลการรักษาหาย (Cured) รวมกับรักษาครบ (Completed) โดยครบรอบรายงานผลการรักษาวันที่ 30 กันยายน 2563', 'B = จำนวนผู้ป่วยวัณโรคปอดรายใหม่ ที่ขึ้นทะเบียน ในไตรมาสที่ 1 ของปีงบประมาณ 2563 (เดือนตุลาคม – ธันวาคม 2562)', 4);
INSERT INTO `main_kpi` VALUES (20, '02610', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้น 2', 'se', 'Service Excellence', '50', 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 60', '>=', '', '(A/B)*100', 'b', 'A = จำนวนโรงพยาบาลผ่าน RDU ขั้นที่ 2', 'B = จำนวนโรงพยาบาลทั้งหมด', 5);
INSERT INTO `main_kpi` VALUES (21, '02620', 'ร้อยละของโรงพยาบาลที่ใช้ยาอย่างสมเหตุผล (RDU) ขั้น 3', '', '', '20', 'ค่าเป้าหมายมากกว่าหรือเท่ากับร้อยละ 20', '>=', '', '(A/B)*100', '', 'A = จำนวนโรงพยาบาลที่ผ่าน RDU ขั้น 3', 'B = จำนวนโรงพยาบาลทั้งหมด', 5);
INSERT INTO `main_kpi` VALUES (22, '02700', 'ร้อยละการติดเชื้อดื้อยาในกระแสเลือดลดลง', '', '', '7.5', 'ค่าเป้าหมายลดลงร้อยละ 7.5 จากปีปฏิทิน 2561', '>=', '', '(B-A)*100/A', 'b', 'A = อัตราการติดเชื้อดื้อยาในกระแสเลือด รอบปีปฏิทิน 61', 'B = อัตราการติดเชื้อดื้อยาในกระแสเลือด รอบปีปัจจุบัน', 5);
INSERT INTO `main_kpi` VALUES (23, '03320', 'ร้อยละของผู้พยายามฆ่าตัวตายไม่กลับมาทําร้ายตัวเองซ้ำในระยะเวลา 1 ปี', 'se', 'Service Excellence', '85', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 85', '>=', '', '(A/B)*100', '', 'A =  จํานวนผู้พยายามฆ่าตัวตายไม่กลับมาทําร้ายตัวเองซ้ำ ภายใน 1 ปี', 'B =  จํานวนผู้พยายามฆ่าตัวตายที่เข้าถึงบริการที่ยังคงไม่เสียชีวิต', 14);
INSERT INTO `main_kpi` VALUES (24, '03520', 'การผ่าตัดภายใน 72 ชั่วโมง (Early surgery) > ร้อยละ 30 นับตั้งแต่ รับผู้ป่วยเข้ารักษาในโรงพยาบาล', '', '', '30', 'ค่าเป้าหมาย มากกว่าร้อยละ 30', '>', '', '(A/B)*100', '', 'A = จํานวนผู้ป่วยในโครงการ Refracture Prevention ที่ได้รับการผ่าตัด ภายใน 72 ชั่วโมง', 'B = จํานวนผู้ป่วยที่ได้รับการผ่าตัด', 1);
INSERT INTO `main_kpi` VALUES (25, '03530', 'Rate Refracture < ร้อยละ 25 * (ตัวชี้วัดนี้ใช้ได้กรณีที่โรงพยาบาลนั้น ทําโครงการ มาแล้ว 1 ปี)', '', '', '25', 'ค่าเป้าหมาย น้อยกว่าร้อยละ 25', '<', '', '(A/B)*100', '', 'A = จํานวนผู้ป่วยในโครงการ Refracture Prevention ที่มีกระดูกหักซ้ำ', 'B = จํานวนผู้ป่วยในโครงการ Refracture Prevention ในระยะเวลา 1 ปี', 1);
INSERT INTO `main_kpi` VALUES (26, '03710', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยการผ่าตัดภายในระยะเวลา 4 สัปดาห์', 'se', 'Service Excellence', '70', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 70', '>=', '', '(A/B)*100', '', 'A = จํานวนผู้ป่วยที่แพทย์วางแผนการรักษาด้วยการผ่าตัดและได้รับการผ่าตัดรักษา ≤4 สัปดาห์นับตามเกณฑ์ที่กําหนด', 'B = จํานวนผู้ป่วยที่ได้รับการผ่าตัดเพื่อรักษามะเร็งทั้งหมดในปีที่รายงาน', 12);
INSERT INTO `main_kpi` VALUES (27, '03720', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยเคมีบำบัดภายในระยะเวลา 6 สัปดาห์', 'se', 'Service Excellence', '70', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับ ร้อยละ 70', '>=', '', '(A/B)*100', 'a', 'A = จำนวนผู้ป่วยที่แพทย์วางแผนการรักษาด้วยเคมีบำบัดและได้รับการรักษาด้วยเคมีบำบัด ≤ 6 สัปดาห์ นับตามเกณฑ์ที่กำหนด (คน)', 'B = จํานวนผู้ป่วยที่ได้รับเคมีบําบัดเพื่อรักษามะเร็งทั้งหมดในปีที่รายงาน', 12);
INSERT INTO `main_kpi` VALUES (28, '03730', 'ร้อยละของผู้ป่วยที่ได้รับการรักษาด้วยรังสีรักษาภายในระยะเวลา 6 สัปดาห์', 'se', 'Service Excellence', '60', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับ ร้อยละ 60', '>=', '', '(A/B)*100', 'a', 'A = จํานวนผู้ป่วยที่แพทย์วางแผนการรักษาด้วยรังสีรักษาและได้รับการรักษาด้วย รังสี รักษา ≤ 6 สัปดาห์นับตามเกณฑ์ที่กำหนด', 'B = จํานวนผู้ป่วยที่ได้รับรังสีรักษาเพื่อรักษามะเร็งทั้งหมดในปีที่รายงาน', 12);
INSERT INTO `main_kpi` VALUES (29, '03900', 'ร้อยละผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ได้รับการผ่าตัดภายใน 30 วัน', 'se', 'Service Excellence', '85', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับ ร้อยละ 85', '>=', '', '(A/B)*100', 'f', 'A = จำนวนผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ที่ได้รับการผ่าตัด ภายใน 30 วัน (คน)', 'B = จำนวนผู้ป่วยต้อกระจกชนิดบอด (Blinding Cataract) ที่ได้รับการวินิจฉัย (คน)', 9);
INSERT INTO `main_kpi` VALUES (30, '04000', 'อัตราส่วนของจำนวนผู้ยินยอมบริจาคอวัยวะจากผู้ป่วยสมองตายต่อจำนวนผู้ป่วยเสียชีวิตในโรงพยาบาล (โรงพยาบาล A, S)', 'se', 'Service Excellence', '0.9', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับ 0.9 ต่อผู้ป่วยเสียชีวิตในโรงพยาบาล', '>=', '', '(A/B)*100', 'a', 'A = จำนวนผู้บริจาคอวัยวะจากผู้ป่วยสมองตาย (actual donor) (คน)', 'B = จำนวนผู้ป่วยที่เสียชีวิตในโรงพยาบาลจากทุกสาเหตุ ในปีงบประมาณ 2562', 12);
INSERT INTO `main_kpi` VALUES (31, '04100', 'ร้อยละผู้ป่วยยาเสพติดเข้ารับการบำบัดรักษา และติดตามดูแลอย่างต่อเนื่อง 1 ปี (Retention Rate)', 'se', 'Service Excellence', '50', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับ ร้อยละ 50', '>=', '', '(A/B)*100', '', 'A = จํานวนผู้ใช้ ผู้เสพ และผู้ติดยาเสพติดที่ได้รับการบําบัดรักษาติดตามดูแลต่อเนื่อง ตามเกณฑ์มาตรฐานอย่างน้อย 4 ครั้งภายใน 1 ปี หลังจําหน่าย', 'B = จํานวนผู้ใช้ ผู้เสพ และผู้ติด ที่รับการบําบัดรักษาและได้รับการจําหน่ายทั้งหมดใน ปีงบประมาณ พ.ศ. 2562 จากสถานบําบัดฟื้นฟูผู้เสพผู้ติดยาเสพติด ยกเว้น ถูกจับเสียชีวิต หรือผู้ป่วยที่ได้รับ methadone maintenance treatment : MMT (เนื่องจาก เป็นการดูแลต่อเนื่องไม่มีการจําหน่าย)', 12);
INSERT INTO `main_kpi` VALUES (32, '04200', 'ร้อยละของผู้ป่วยยาเสพติดกลุ่มเสี่ยงก่อความรุนแรงได้รับการประเมิน บําบัดรักษาและติดตามดูแลช่วยเหลือตามระดับความรุนแรง อย่างต่อเนื่อง', 'se', 'Service Excellence', '60', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 60', '>=', '', '(A/B)*100', 'a', 'A = จํานวนผู้ป่วยกลุ่มเสี่ยงก่อความรุนแรงได้รับการประเมิน บําบัดรักษาและติดตามดูแล ช่วยเหลือตามระดับความรุนแรงอย่างต่อเนื่องอย่างน้อย 4 ครั้ง ภายใน 1 ปี หลังจําหน่าย', 'B = จํานวนผู้ป่วยกลุ่มเสี่ยงก่อความรุนแรงที่ได้รับการประเมิน การบําบัดรักษาและได้รับ การจําหน่ายทั้งหมดในปีงบประมาณ พ.ศ. 2562 จากสถานบําบัดฟื้นฟูผู้เสพผู้ติดยาเสพติด ยกเว้น ถูกจับ เสียชีวิต หรือผู้ป่วยที่ได้รับ methadone maintenance treatment : MMT (เนื่องจากเป็นการดูแลต่อเนื่องไม่มีการจําหน่าย)', 12);
INSERT INTO `main_kpi` VALUES (33, '04310', 'ร้อยละของโรงพยาบาลระดับ M และ F ในจังหวัดที่ให้การบริบาลฟื้นสภาพระยะกลางแบบผู้ป่วยใน (intermediate bed/ward)\r\nตัวชี้วัดรอง \"', 'se', 'Service Excellence', '75', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 75', '>=', '', '(A/B)*100', 'b', 'A = จำนวนโรงพยาบาลระดับ M และ F ในจังหวัดที่ผ่านเกณฑ์ให้บริการการดูแลระยะกลางแบบผู้ป่วยใน (intermediate bed/ward) ตามภาคผนวก 1 และ 2 (ภาคผนวก 1 เกณฑ์การบริบาลฟื้นฟูสภาพระยะกลางแบบ IPD (IPD-IMC protocol) สำหรับโรงพยาบาลระดับ Mและ F ภาคผนวก 2 IPD care protocal ที่ประกอบด้วย 1)Problem list&plan, 2) Standing doctor order sheet 3) Team meeting report และ 4) Activities protocol (short stay)', 'B = จํานวนงโรงพยาบาลระดับ M และ F ในจังหวัดทั้งหมด', 12);
INSERT INTO `main_kpi` VALUES (34, '04320', 'เป้าหมาย ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ที่รอดชีวิตและมีคะแนน Barthel index < 15 รวมทั้งคะแนน Barthel index >15 with multiple impairment ได้รับการบริบาลฟื้นสภาพ ระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20', '', '', '60', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 60', '>=', '', '(A/B)*100', '', 'A = ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury ภายในจังหวัดที่ รอดชีวิตและมีคะแนน Barthel index  <15 ได้รับการบริบาลฟื้นสภาพระยะกลางและติดตามจนครบ 6 เดือน หรือจน Barthel index = 20', 'B = ผู้ป่วย Stroke, Traumatic Brain Injury และ Spinal Cord Injury รายใหม่หรือ กลับเป็นซ้ำทั้งหมดที่เข้ารับการรักษาในโรงพยาบาลภายในจังหวัดรอดชีวิตและมีคะแนน Barthel index  <15 รวมทั้งคะแนน Barthel index >15 with multiple impairment', 12);
INSERT INTO `main_kpi` VALUES (35, '04400', 'ร้อยละของผู้ป่วยที่เข้ารับการผ่าตัดแบบ One Day Surgery', 'se', 'Service Excellence', '60', 'ค่าเป้าหมาย เท่ากับร้อยละ 60', '>=', '', '(A/B)*100', '', 'A = จำนวนผู้ป่วยทั้งหมดที่ได้รับการผ่าตัด One Day Surgery (คน)', 'B = จำนวนผู้ป่วยที่เข้าเงื่อนไขในการเข้ารับการผ่าตัด One Day Surgery ด้วยโรคที่กำหนด(Principle diagnosis) (คน)', 1);
INSERT INTO `main_kpi` VALUES (36, '04500', 'จํานวนคลินิกการให้บริการกัญชาทางการแพทย์นําร่องอย่างน่อย เขตสุขภาพละ 1 แห่ง', '', '', '1', 'ค่าเป้าหมาย เท่ากับ 1', '>=', '', 'A', '', 'A =จํานวนคลินิกการให้บริการกัญชาทางการแพทย์นําร่องในเขตสุขภาพ', '', 13);
INSERT INTO `main_kpi` VALUES (37, '04620', 'อัตราของผู้ป่วย trauma triage level 1 และมีข้อบ่งชี้ในการผ่าตัด ในโรงพยาบาลระดับ A, S, M1 สามารถเข้าห้องผ่าตัดได้ภายใน 60 นาที ไม่ต่ำกว่า ร้อยละ 80', '', '', '80', 'ค่าเป้าหมาย มากกว่าร้อยละ 80', '>=', '', '(A/B)*100', '', 'A = จํานวนผู้ป่วย trauma triage level 1 และมีข้อ บ่งชี้ในการผ่าตัด ใน โรงพยาบาลระดับ A, S, M1 สามารถเข้า ห้องผ่าตัดได้ภายใน 60 นาที', 'B = จํานวนผู้ป่วย trauma triage level 1 และมีข้อ บ่งชี้ในการผ่าตัดใน โรงพยาบาลระดับ A, S, M1 และได้รับการ ผ่าตัดทั้งหมด', 12);
INSERT INTO `main_kpi` VALUES (38, '04640', 'อัตราตายผู้ป่วยบาดเจ็บรุนแรงต่อสมอง (mortality rate of severe traumatic brain injury) (GCS ≤ 8) ในโรงพยาบาลระดับ A, S, M1 ไม่เกินร้อยละ 45', '', '', '45', 'ค่าเป้าหมาย น้อยกว่าหรือเท่ากับร้อยละ 45', '<=', '', '(A/B)*100', '', 'A = จํานวนผู้ป่วย severe traumatic brain injury (GCS ≤ 8) ที่เสียชีวิตใน โรงพยาบาลระดับ A, S, M1', 'B = จํานวนผู้ป่วย severe traumatic brain injury ทั้งหมดใน โรงพยาบาลระดับ A, S, M1', 12);
INSERT INTO `main_kpi` VALUES (39, '04650', 'อัตราของ TEA unit ในโรงพยาบาลระดับ A, S, M1 ที่ผ่านเกณฑ์ประเมิน คุณภาพ (ไม่ต่ำกว่า 20 คะแนน) ไม่ต่ํากว่าร้อยละ 80', '', '', '80', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 80', '>=', '', '(A/B)*100', '', 'A = จํานวน TEA unit ในโรงพยาบาล ระดับ A, S, M1 ที่ ผ่านเกณฑ์ประเมิน คุณภาพ (ไม่ต่ำกว่า 20 คะแนน)', 'B = จํานวน TEA unit ที่ประเมิน คุณภาพทั้งหมดใน โรงพยาบาลระดับ A, S, M1', 12);
INSERT INTO `main_kpi` VALUES (40, '04660', 'อัตราของโรงพยาบาลระดับ F2 ขึ้นไปที่ผ่านเกณฑ์ประเมิน ECS คุณภาพ (ไม่ต่ำ กว่าร้อยละ 50) ไม่ต่ำกว่าร้อยละ 80', '', '', '80', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 80', '>=', '', '(A/B)*100', '', 'A = จํานวน โรงพยาบาล ระดับ F2 ขึ้นไป ที่ผ่านเกณฑ์ ประเมิน ECS คุณภาพ(ไม่ต่ำ กว่าร้อยละ 50)', 'B = จํานวน โรงพยาบาล ระดับ F2 ขึ้นไป ที่ประเมิน ECS คุณภาพทั้งหมด', 12);
INSERT INTO `main_kpi` VALUES (41, '04800', 'ร้อยละของโรงพยาบาลศูนย์ผ่านเกณฑ์ ER คุณภาพ', '', '', '80', 'ค่าเป้าหมาย ไม่ต่ำกว่าร้อยละ 80', '>=', '', '(A/B)*100', '', 'A = จํานวนโรงพยาบาล ระดับ A ที่ผ่านเกณฑ์ประเมิน ER คุณภาพ', 'B = จํานวนโรงพยาบาล ระดับ A ทั้งหมด ในสังกัดสํานักงานปลัดกระทรวงสาธารณสุข', 12);
INSERT INTO `main_kpi` VALUES (42, '04900', 'จํานวนผู้ป่วยที่ไม่ฉุกเฉินในห้องฉุกเฉินระดับ 4 และ 5 (Non trauma) ลดลง', '', '', '5', 'ค่าเป้าหมาย ลดลงมากกว่าหรือเท่ากับ ร้อยละ 5', '>=', '', '(A-B)*100/A', '', 'A = จํานวนผู้ป่วยที่ไม่ฉุกเฉินในห้องฉุกเฉินระดับ 4 และ 5 (Non trauma) ปีงบประมาณ 2562', 'B = จํานวนผู้ป่วยที่ไม่ฉุกเฉินในห้องฉุกเฉินระดับ 4 และ 5 (Non trauma) ปีงบประมาณ 2563', 12);
INSERT INTO `main_kpi` VALUES (43, '05000', 'ร้อยละของจังหวัดเป้าหมายที่มีหน่วยบริการตั้งอยู่ในพื้นที่เกาะมีการจัดระบบ บริการสุขภาพสําหรับการท่องเที่ยวทางทะเลที่มีประสิทธิภาพ', '', '', '100', 'ค่าเป้าหมาย เท่ากับ ร้อยละ 100', '=', '', '(A/B)*100', '', 'A = จํานวนจังหวัดกลุ่มเป้าหมายที่ผ่านเกณฑ์ ( 5 ระดับ)', 'B = จํานวนจังหวัดกลุ่มเป้าหมาย ตามเป้าหมาย ปีงบประมาณ 2563', 12);
INSERT INTO `main_kpi` VALUES (44, '05100', 'ร้อยละที่เพิ่มขึ้นของรายได้จากการท่องเที่ยวเชิงสุขภาพ ความงามและแพทย์ แผนไทย', '', '', '5', 'ค่าเป้าหมาย เพิ่มขึ้นมากกว่าหรือเท่ากับ ร้อยละ 5', '>=', '', '(A-B) / B * 100', '', 'A = รายได้จากการท่องเที่ยวเชิงสุขภาพ ความงาม และแพทย์แผนไทย ในปี 2563 ของ ประเทศไทย (1 มกราคม 2563 – 31 ธันวาคม 2563 จาก Global Wellness Institute)', 'B = รายได้จากการท่องเที่ยวเชิงสุขภาพ ความงาม และแพทย์แผนไทย ในปี 2562 ของ ประเทศไทย(1 มกราคม 2562 – 31 ธันวาคม 2562 จาก Global Wellness Institute', 13);
INSERT INTO `main_kpi` VALUES (45, '05200', 'ระดับความสำเร็จของเขตสุขภาพที่มีการบริหารจัดการระบบการผลิตและพัฒนากำลังคนได้ตามเกณฑ์', 'pe', 'People Excellence', '1', 'ค่าเป้าหมาย เท่ากับ ร้อยละ 100', '=', '', 'A', 'b', 'A = จํานวนเขตสุขภาพที่ผ่านเกณฑ์เป้าหมายที่กําหนด', '', 2);
INSERT INTO `main_kpi` VALUES (46, '05300', 'ร้อยละของเขตสุขภาพที่มีการบริหารจัดการกําลังคนที่มีประสิทธิภาพ', 'pe', 'People Excellence', '4', 'ค่าเป้าหมาย น้อยกว่าหรือเท่ากับร้อยละ4', '<=', '', '(A/B)*100', '', 'A = จํานวนตําแหน่งว่างเป้าหมายทั้งหมด (ข้าราชการ + พนักงานราชการ) ณ วันที่ รายงานผล', 'B = จํานวนตําแหน่งทั้งหมด (ข้าราชการ + พนักงานราชการ) ณ วันที่รายงานผล', 2);
INSERT INTO `main_kpi` VALUES (47, '05400', 'ร้อยละของหน่วยงานในสังกัดกระทรวงสาธารณสุขผ่านเกณฑ์การประเมิน ITA', 'ge', 'Governance Excellence', '90', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 90', '>=', '', '(A/B)*100', 'a', 'A = จํานวนหน่วยงานที่ผ่านเกณฑ์การประเมินตนเองตามแบบสํารวจหลักฐานเชิง ประจักษ์(Evidence-Based) ผ่านเกณฑ์ร้อยละ 90 (ใน 1 ปี)', 'B = จํานวนหน่วยงานทั้งหมดที่เข้ารับการประเมิน ITA (1,850 หน่วยงาน)', 7);
INSERT INTO `main_kpi` VALUES (48, '05510', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขจังหวัดที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', 'ge', 'Governance Excellence', '90', 'ค่าเป้าหมาย เท่ากับ 1', '>=', '', 'A', 'a', 'A = จำนวนสํานักงานสาธารณสุขจังหวัดที่ดําเนินการผ่านเกณฑ์ที่กําหนด', '', 1);
INSERT INTO `main_kpi` VALUES (49, '05520', 'ร้อยละความสำเร็จของสำนักงานสาธารณสุขอำเภอที่ดำเนินการพัฒนาคุณภาพการบริหารจัดการภาครัฐผ่านเกณฑ์ที่กำหนด', '', '', '90', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 90', '>=', '', '(A/B)*100', '', 'A = จํานวนสํานักงานสาธารณสุขอําเภอที่ดําเนินการผ่านเกณฑ์ที่กําหนด', 'B = จํานวนสํานักงานสาธารณสุขอําเภอทั้งหมด', 1);
INSERT INTO `main_kpi` VALUES (50, '05610', 'ร้อยละของโรงพยาบาลศูนย์/โรงพยาบาลทั่วไป สังกัดกระทรวงสาธารณสุขมีคุณภาพมาตรฐานผ่านการรับรอง HA ขั้น 3', 'ge', 'Governance Excellence', '100', 'ค่าเป้าหมาย เท่ากับ ร้อยละ 100', '=', '', '(A/B)*100', '', 'A = จํานวนโรงพยาบาลศูนย์ โรงพยาบาลทั่วไปในสังกัดสํานักงานปลัดกระทรวง สาธารณสุขที่มีผลการรับรองขั้น 3 + Reaccredit', 'B = จํานวนโรงพยาบาลศูนย์ โรงพยาบาลทั่วไปในสังกัดสํานักงานปลัดกระทรวงสาธารณสุข', 8);
INSERT INTO `main_kpi` VALUES (51, '05620', 'ร้อยละของโรงพยาบาลสังกัดกรมการแพทย์, กรมควบคุมโรค และกรมสุขภาพจิต มีคุณภาพมาตรฐานผ่านการรับรอง HA ขั้น 4', '', '', '100', 'ค่าเป้าหมาย เท่ากับ ร้อยละ 100', '=', '', '(A/B)*100', '', 'A = จํานวนโรงพยาบาลสังกัดกรมการแพทย์ กรมควบคุมโรค และ กรมสุขภาพจิต ที่มีผลการรับรองขั้น 3 + Reaccredit', 'B = จํานวนโรงพยาบาลสังกัดกรมการแพทย์ กรมควบคุมโรค และกรมสุขภาพจิต', 8);
INSERT INTO `main_kpi` VALUES (52, '05630', 'ร้อยละของโรงพยาบาลชุมชน สังกัดกระทรวงสาธารณสุขมีคุณภาพมาตรฐานผ่านการรับรอง HA ขั้น 3', '', '', '90', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 90', '>=', '', '(A/B)*100', '', 'A = จํานวนโรงพยาบาลชุมชนในสังกัดสํานักงานปลัดกระทรวงสาธารณสุขที่มีผลการรับรองขั้น 3 + Reaccredit', 'B = โรงพยาบาลชุมชนในสังกัดสํานักงานปลัดกระทรวงสาธารณสุข', 8);
INSERT INTO `main_kpi` VALUES (53, '05700', 'ร้อยละของ รพ.สต.  ที่ผ่านเกณฑ์การพัฒนาคุณภาพ รพ.สต. ติดดาว ระดับ 5 ดาว', 'se', '', '75', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 75', '>=', '', '(A/B)*100', 'a', 'A = จํานวนโรงพยาบาลส่งเสริมสุขภาพตําบลระดับ 5 ดาว (สะสมปีงบประมาณ (2561 – 2563) ผ่านเกณฑ์พัฒนาคุณภาพ รพ.สต.ติดดาว ระดับ 5 ดาว ใน ปีงบประมาณ 2563', 'B = จํานวนโรงพยาบาลส่งเสริมสุขภาพตําบลทั้งหมด โดยไม่รวม รพ.สต. ที่ถ่าย โอนไปยังองค์กรปกครองส่วนท้องถิ่น', 8);
INSERT INTO `main_kpi` VALUES (54, '05810', 'จํานวน รพศ./รพท./สสจ. เป็นองค์กรแห่งความสุข ที่มีคุณภาพมาตรฐาน', '', '', '1', 'ค่าเป้าหมาย เท่ากับ 1: ระดับ', '=', '', 'A', '', 'A = รพศ./รพท./สสจ. (อย่างน้อยเขตละ 1 แห่ง)', '', 2);
INSERT INTO `main_kpi` VALUES (55, '05820', 'จํานวน รพช./สสอ. เป็นองค์กรแห่งความสุข ที่มีคุณภาพมาตรฐาน', '', '', '10', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 10', '>=', '', '(A/B)*100', '', 'A = จํานวน รพช./สสอ.ในจังหวัด ที่มีผลการประเมินผ่านเกณฑ์คุณภาพมาตรฐาน องค์กรแห่งความสุข', 'B = จํานวน รพช./สสอ.ทั้งหมดในจังหวัด', 2);
INSERT INTO `main_kpi` VALUES (56, '05900', 'ร้อยละของจังหวัดที่ผ่านเกณฑ์คุณภาพข้อมูล', 'ge', 'Governance Excellence', '80', 'ค่าเป้าหมาย เท่ากับ 1: จังหวัด', '>=', '', 'A', 'a', 'A = จํานวนจังหวัดที่ผ่านเกณฑ์คุณภาพข้อมูลบริการสุขภาพ', '', 1);
INSERT INTO `main_kpi` VALUES (57, '06010', 'ร้อยละของหน่วยบริการ กลุ่มที่ 1 เป็น Smart Hospital', 'ge', 'Governance Excellence', '80', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 80', '>=', '', '(A/B)*100', 'a', 'A = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 1 เป็น Smart Hospital', 'B = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 1 ทั้งหมด', 1);
INSERT INTO `main_kpi` VALUES (58, '06020', 'ร้อยละของหน่วยบริการ กลุ่มที่ 2 เป็น Smart Hospital', '', '', '50', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 50', '>=', '', '(A/B)*100', '', 'A = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 2 เป็น Smart Hospital', 'B = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 2 ทั้งหมด', 1);
INSERT INTO `main_kpi` VALUES (59, '06030', 'ร้อยละของหน่วยบริการ กลุ่มที่ 3 เป็น Smart Hospital', '', '', '80', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับร้อยละ 80', '>=', '', '(A/B)*100', '', 'A = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 3 เป็น Smart Hospital', 'B = จํานวนหน่วยบริการกลุ่มเป้าหมายที่ 3 ทั้งหมด', 1);
INSERT INTO `main_kpi` VALUES (60, '06100', 'จํานวนโรงพยาบาลที่มีบริการรับยาที่ร้านยา', 'ge', 'Governance Excellence', '', 'ค่าเป้าหมาย เท่ากับ 50', '', '', 'A', '', 'A = จํานวนโรงพยาบาลที่มีบริการรับยาที่ร้านยา', '', 5);
INSERT INTO `main_kpi` VALUES (61, '06200', 'ความแตกต่างอัตราการใช้สิทธิ(compliance rate) เมื่อไปใช้บริการผู้ป่วยใน (IP) ของผู้มีสิทธิใน 3 ระบบ', 'ge', 'Governance Excellence', '1.5', 'ค่าเป้าหมาย ไม่เกิน 1.5%', '<=', '', 'ค่าเฉลี่ย { CRdif.-CS, CRdif-SS, CRdif-UC }', 'a', '-อัตราการใช้สิทธิ ของแต่ละสิทธิ : CR-CS, CR-SS, CR-UC', 'ความต่างอัตราการใช้สิทธิแต่ละสิทธิเทียบกับอัตราการใช้สิทธิภาพรวมประเทศ : CRdif.-CS, CRdif-SS, CRdif-UC', 11);
INSERT INTO `main_kpi` VALUES (62, '06300', 'ระดับความสำเร็จของการจัดทำสิทธิประโยชน์กลางผู้ป่วยใน ของระบบหลักประกันสุขภาพ 3 ระบบ', 'ge', 'Governance Excellence', '', 'ค่าเป้าหมาย ประเมินความสำเร็จ', '', '', '', 'a', '', '', 11);
INSERT INTO `main_kpi` VALUES (63, '06410', 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน ระดับ 7', 'ge', 'Governance Excellence', '4', 'ค่าเป้าหมาย ไม่เกินร้อยละ 4', '<=', '', '(A/B)*100', 'a', 'A = จำนวนหน่วยบริการสังกัดสำนักงานปลัดกระทรวงสาธารณสุขที่ประสบภาวะวิกฤติทางการเงินระดับ 7', 'B = จำนวนหน่วยบริการสังกัดสำนักงานปลัดกระทรวงสาธารณสุขทั้งหมด (หน่วยบริการที่จัดส่งรายงานงบทดลอง)', 11);
INSERT INTO `main_kpi` VALUES (64, '06420', 'ร้อยละของหน่วยบริการที่ประสบภาวะวิกฤติทางการเงิน ระดับ 6', 'ge', 'Governance Excellence', '8', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับ 8', '>=', '', 'A', '', 'A = จํานวนนวัตกรรม หรือเทคโนโลยีสุขภาพที่คิดค้นใหม่ หรือที่พัฒนาต่อยอดที่เพิ่มขึ้น จากฐานข้อมูลนวัตกรรมกรมวิทยาศาสตร์การแพทย์ของปีที่ผ่านมา', '', 11);
INSERT INTO `main_kpi` VALUES (65, '06510', 'จำนวนนวัตกรรม หรือเทคโนโลยีสุขภาพที่คิดค้นใหม่', 'ge', 'Governance Excellence', '8', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับ 8', '>=', '', 'A', '', 'A = จํานวนนวัตกรรม หรือเทคโนโลยีสุขภาพที่คิดค้นใหม่ หรือที่พัฒนาต่อยอดที่เพิ่มขึ้น จากฐานข้อมูลนวัตกรรมกรมวิทยาศาสตร์การแพทย์ของปีที่ผ่านมา', '', 5);
INSERT INTO `main_kpi` VALUES (66, '06520', 'จำนวนนวัตกรรม หรือเทคโนโลยีสุขภาพที่พัฒนาต่อยอด', '', '', '4', 'ค่าเป้าหมาย มากกว่าหรือเท่ากับ 4', '>=', '', 'B', '', '', 'B = จํานวนนวัตกรรมหรือเทคโนโลยีสุขภาพที่คิดค้นใหม่หรือที่พัฒนาต่อยอด ในปีงบประมาณ 2563 มีการใช้ประโยชน์ทางการแพทย์ หรือการคุ้มครองผู้บริโภค หรือเชิง พาณิชย์', 5);
INSERT INTO `main_kpi` VALUES (67, '06600', 'ร้อยละของเขตสุขภาพมีการพัฒนาระบบบริหารจัดการที่มีประสิทธิภาพ', 'ge', 'Governance Excellence', '1', 'ค่าเป้าหมาย เท่ากับ 1', '=', '', 'A', 'a', 'A = จํานวนเขตสุขภาพที่ดําเนินการผ่านเกณฑ์ที่กําหนด', '', 1);
INSERT INTO `main_kpi` VALUES (68, '06710', 'ร้อยละของกฎหมายที่ได้รับการปรับปรุงและพัฒนา', 'ge', 'Governance Excellence', '100', 'ค่าเป้าหมาย เท่ากับ ร้อยละ 100', '=', '', '(A/B)*100', 'a', 'A = จํานวนกฎหมายที่ทําได้ในปีงบประมาณ 2563', 'B = กฎหมาย 10 ฉบับ ตามเป้าหมาย', 7);

-- ----------------------------
-- Table structure for main_kpi_eval_prov
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_eval_prov`;
CREATE TABLE `main_kpi_eval_prov`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kpi_year` date NULL DEFAULT NULL,
  `hospcode` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ex` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_eval` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_kpi_eval_prov
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_kpi_eval_rh
-- ----------------------------

-- ----------------------------
-- Table structure for main_kpi_index
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_index`;
CREATE TABLE `main_kpi_index`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kpi` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kpi_name` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ex` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goal` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cri_type` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hdc` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `response` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
-- Table structure for main_kpi_input
-- ----------------------------
DROP TABLE IF EXISTS `main_kpi_input`;
CREATE TABLE `main_kpi_input`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kpi_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
  `note` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_kpi_input
-- ----------------------------

-- ----------------------------
-- Table structure for main_profile
-- ----------------------------
DROP TABLE IF EXISTS `main_profile`;
CREATE TABLE `main_profile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  `ssj_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `main_profile_group_id_dbb2f9e1_fk_main_group_id`(`group_id`) USING BTREE,
  INDEX `main_profile_ssj_id_91f2dedd_fk_main_ssj_id`(`ssj_id`) USING BTREE,
  CONSTRAINT `main_profile_group_id_dbb2f9e1_fk_main_group_id` FOREIGN KEY (`group_id`) REFERENCES `main_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_profile_ssj_id_91f2dedd_fk_main_ssj_id` FOREIGN KEY (`ssj_id`) REFERENCES `main_ssj` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `main_profile_user_id_b40d720a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_profile
-- ----------------------------
INSERT INTO `main_profile` VALUES (1, NULL, 'default.jpg', NULL, NULL, 1);
INSERT INTO `main_profile` VALUES (2, NULL, 'default.jpg', NULL, NULL, 2);

-- ----------------------------
-- Table structure for main_response
-- ----------------------------
DROP TABLE IF EXISTS `main_response`;
CREATE TABLE `main_response`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_response
-- ----------------------------
INSERT INTO `main_response` VALUES (1, 'พัฒนายุทธศาสตร์สาธารณสุข');
INSERT INTO `main_response` VALUES (2, 'บริหารทั่วไป');
INSERT INTO `main_response` VALUES (3, 'ทันตสาธารณสุข');
INSERT INTO `main_response` VALUES (4, 'ควบคุมโรคติดต่อ');
INSERT INTO `main_response` VALUES (5, 'คุ้มครองผู้บริโภคและเภสัชสาธารณสุข');
INSERT INTO `main_response` VALUES (6, 'บริหารทรัพยากรบุคคล');
INSERT INTO `main_response` VALUES (7, 'นิติกร');
INSERT INTO `main_response` VALUES (8, 'พัฒนาคุณภาพและสรุปแบบบริการ');
INSERT INTO `main_response` VALUES (9, 'ส่งเสริมสุขภาพ');
INSERT INTO `main_response` VALUES (10, 'อนามัยสิ่งแวดล้อมและอาชีวอนามัย');
INSERT INTO `main_response` VALUES (11, 'ประกันสุขภาพ');
INSERT INTO `main_response` VALUES (12, 'ควบคุมโรคไม่ติดต่อ สุขภาพจิตและยาเสพติด');
INSERT INTO `main_response` VALUES (13, 'แพทย์แผนไทยและการแพทย์ทางเลือก');
INSERT INTO `main_response` VALUES (14, 'สุขศึกษาประชาสัมพันธ์');
INSERT INTO `main_response` VALUES (15, 'None');

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

-- ----------------------------
-- Table structure for main_unit
-- ----------------------------
DROP TABLE IF EXISTS `main_unit`;
CREATE TABLE `main_unit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_unit
-- ----------------------------
INSERT INTO `main_unit` VALUES (1, 'ร้อยละ');
INSERT INTO `main_unit` VALUES (2, 'ต่อแสนประชากร');
INSERT INTO `main_unit` VALUES (3, 'คน');
INSERT INTO `main_unit` VALUES (4, 'แห่ง');
INSERT INTO `main_unit` VALUES (5, 'เรื่อง');
INSERT INTO `main_unit` VALUES (6, 'เขตสุขภาพ');
INSERT INTO `main_unit` VALUES (7, 'ฉบับ');
INSERT INTO `main_unit` VALUES (8, 'ครอบครัว');
INSERT INTO `main_unit` VALUES (9, 'ต่อร้อยประชากร');
INSERT INTO `main_unit` VALUES (10, '-');

-- ----------------------------
-- Table structure for main_year
-- ----------------------------
DROP TABLE IF EXISTS `main_year`;
CREATE TABLE `main_year`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of main_year
-- ----------------------------
INSERT INTO `main_year` VALUES (1, '2020');

-- ----------------------------
-- Procedure structure for kpi_eval_prov
-- ----------------------------
DROP PROCEDURE IF EXISTS `kpi_eval_prov`;
delimiter ;;
CREATE PROCEDURE `kpi_eval_prov`()
BEGIN
DROP TABLE IF EXISTS kpi_eval_prov;
CREATE TABLE  kpi_eval_prov
#REPLACE INTO kpi_eval_prov
SELECT
p.kpi_year, p.hospcode, p.kpi_id, k.ex,
CASE
				WHEN k.cri_type = '>=' THEN (CASE WHEN p.pt >= k.goal THEN 1 ELSE 0 END)
				WHEN k.cri_type = '>' THEN (CASE WHEN p.pt > k.goal THEN 1 ELSE 0 END)
				WHEN k.cri_type = '<=' THEN (CASE WHEN p.pt <= k.goal THEN 1 ELSE 0 END)
				WHEN k.cri_type = '<' THEN (CASE WHEN p.pt < k.goal THEN 1 ELSE 0 END)
				ELSE 0
END AS kpi_eval
FROM kpi_prov p
LEFT JOIN kpi_index k ON k.kpi = p.kpi_id AND k.kpi_year = p.kpi_year;

INSERT INTO log_process (dtime) VALUES (NOW());

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for kpi_eval_rh
-- ----------------------------
DROP PROCEDURE IF EXISTS `kpi_eval_rh`;
delimiter ;;
CREATE PROCEDURE `kpi_eval_rh`()
BEGIN
DROP TABLE IF EXISTS kpi_eval_rh;
CREATE TABLE  kpi_eval_rh
#REPLACE INTO kpi_eval_rh
SELECT
p.kpi_year,p.kpi_id, k.ex,
CASE
				WHEN k.cri_type = '>=' THEN (CASE WHEN p.rh >= k.goal THEN 1 ELSE 0 END)
				WHEN k.cri_type = '>' THEN (CASE WHEN p.rh > k.goal THEN 1 ELSE 0 END)
				WHEN k.cri_type = '<=' THEN (CASE WHEN p.rh <= k.goal THEN 1 ELSE 0 END)
				WHEN k.cri_type = '<' THEN (CASE WHEN p.rh < k.goal THEN 1 ELSE 0 END)
				ELSE 0
END AS kpi_eval
FROM kpi_rh p
LEFT JOIN kpi_index k ON k.kpi = p.kpi_id AND k.kpi_year = p.kpi_year;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for kpi_prov
-- ----------------------------
DROP PROCEDURE IF EXISTS `kpi_prov`;
delimiter ;;
CREATE PROCEDURE `kpi_prov`()
BEGIN

DROP TABLE IF EXISTS kpi_prov;
CREATE TABLE  kpi_prov
#REPLACE INTO kpi_prov
SELECT ex,kpi_id,kpi_year,hospcode,hosname,b1,a1,p1,b2,a2,p2,b3,a3,p3,b4,a4,p4,bt,at,pt,goal,NOW() time
FROM(SELECT h.hospcode,i.kpi_id,k.kpi_year,h.hosname,k.goal,k.ex
,SUM(a1+a2+a3)a1
,SUM(a4+a5+a6)a2
,SUM(a7+a8+a9)a3
,SUM(a10+a11+a12)a4
,SUM(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12)at
,SUM(b1+b2+b3)b1
,SUM(b4+b5+b6)b2
,SUM(b7+b8+b9)b3
,SUM(b10+b11+b12)b4
,SUM(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12)bt
,COALESCE(ROUND((SUM(a1+a2+a3)/SUM(b1+b2+b3))*100000,2),0)p1
,COALESCE(ROUND((SUM(a4+a5+a6)/SUM(b4+b5+b6))*100000,2),0)p2
,COALESCE(ROUND((SUM(a7+a8+a9)/SUM(b7+b8+b9))*100000,2),0)p3
,COALESCE(ROUND((SUM(a10+a11+a12)/SUM(b10+b11+b12))*100000,2),0)p4
,COALESCE(ROUND((SUM(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12)/SUM(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12))*100000,2),0)pt
FROM chospital2 h
LEFT JOIN  kpi_input i on h.hospcode=i.hospcode #and i.kpi_id = '$kpi'
LEFT JOIN kpi_index k on i.kpi_id = k.kpi
WHERE h.cupcode = '00000' and k.kpi_formula = '(A/B)*100000'
GROUP BY h.hospcode,i.kpi_id)rh

UNION ALL

SELECT ex,kpi_id,kpi_year,hospcode,hosname,b1,a1,p1,b2,a2,p2,b3,a3,p3,b4,a4,p4,bt,at,pt,goal,NOW() time
FROM(SELECT h.hospcode,i.kpi_id,k.kpi_year,h.hosname,k.goal,k.ex
,SUM(a1+a2+a3)a1
,SUM(a4+a5+a6)a2
,SUM(a7+a8+a9)a3
,SUM(a10+a11+a12)a4
,SUM(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12)at
,SUM(b1+b2+b3)b1
,SUM(b4+b5+b6)b2
,SUM(b7+b8+b9)b3
,SUM(b10+b11+b12)b4
,SUM(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12)bt
,COALESCE(ROUND((SUM(a1+a2+a3)/SUM(b1+b2+b3))*100,2),0)p1
,COALESCE(ROUND((SUM(a4+a5+a6)/SUM(b4+b5+b6))*100,2),0)p2
,COALESCE(ROUND((SUM(a7+a8+a9)/SUM(b7+b8+b9))*100,2),0)p3
,COALESCE(ROUND((SUM(a10+a11+a12)/SUM(b10+b11+b12))*100,2),0)p4
,COALESCE(ROUND((SUM(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12)/SUM(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12))*100,2),0)pt
FROM chospital2 h
LEFT JOIN  kpi_input i on h.hospcode=i.hospcode #and i.kpi_id = '$kpi'
LEFT JOIN kpi_index k on i.kpi_id = k.kpi
WHERE h.cupcode = '00000' and k.kpi_formula = '(A/B)*100'
GROUP BY h.hospcode,i.kpi_id)rh

UNION ALL

SELECT ex,kpi_id,kpi_year,hospcode,hosname,b1,a1,p1,b2,a2,p2,b3,a3,p3,b4,a4,p4,bt,at,pt,goal,NOW() time
FROM(SELECT h.hospcode,i.kpi_id,k.kpi_year,h.hosname,k.goal,k.ex
,SUM(a3)a1
,SUM(a6)a2
,SUM(a9)a3
,SUM(a12)a4
,SUM(a9)at
,SUM(b3)b1
,SUM(b6)b2
,SUM(b9)b3
,SUM(b12)b4
,SUM(b9)bt
,COALESCE(ROUND((SUM(a3)/SUM(b3))*100,2),0)p1
,COALESCE(ROUND((SUM(a6)/SUM(b6))*100,2),0)p2
,COALESCE(ROUND((SUM(a9)/SUM(b9))*100,2),0)p3
,COALESCE(ROUND((SUM(a12)/SUM(b12))*100,2),0)p4
,COALESCE(ROUND((SUM(a9)/SUM(b9))*100,2),0)pt
FROM chospital2 h
LEFT JOIN  kpi_input i on h.hospcode=i.hospcode #and i.kpi_id = '$kpi'
LEFT JOIN kpi_index k on i.kpi_id = k.kpi
WHERE h.cupcode = '00000' and k.kpi_formula = '(A/B)*100Y'
GROUP BY h.hospcode,i.kpi_id)rh;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for kpi_prov2
-- ----------------------------
DROP PROCEDURE IF EXISTS `kpi_prov2`;
delimiter ;;
CREATE PROCEDURE `kpi_prov2`()
BEGIN

DROP TABLE IF EXISTS kpi_prov2;
CREATE TABLE  kpi_prov2
#REPLACE INTO kpi_prov
SELECT ex,kpi_id,kpi_year,hospcode,hosname,b1,a1,p1,b2,a2,p2,b3,a3,p3,b4,a4,p4,bt,at,pt,goal,NOW() time
FROM(SELECT h.hospcode,i.kpi_id,k.kpi_year,h.hosname,k.goal,k.ex
,SUM(a1+a2+a3)a1
,SUM(a4+a5+a6)a2
,SUM(a7+a8+a9)a3
,SUM(a10+a11+a12)a4
,SUM(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12)at
,SUM(b1+b2+b3)b1
,SUM(b4+b5+b6)b2
,SUM(b7+b8+b9)b3
,SUM(b10+b11+b12)b4
,SUM(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12)bt
,COALESCE(ROUND((SUM(a1+a2+a3)/SUM(b1+b2+b3))*100000,2),0)p1
,COALESCE(ROUND((SUM(a4+a5+a6)/SUM(b4+b5+b6))*100000,2),0)p2
,COALESCE(ROUND((SUM(a7+a8+a9)/SUM(b7+b8+b9))*100000,2),0)p3
,COALESCE(ROUND((SUM(a10+a11+a12)/SUM(b10+b11+b12))*100000,2),0)p4
,COALESCE(ROUND((SUM(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11+a12)/SUM(b1+b2+b3+b4+b5+b6+b7+b8+b9+b10+b11+b12))*100000,2),0)pt
FROM chospital2 h
LEFT JOIN  kpi_input i on h.hospcode=i.hospcode #and i.kpi_id = '$kpi'
LEFT JOIN kpi_index k on i.kpi_id = k.kpi
WHERE h.cupcode = '00000' and k.kpi_formula = '(A/B)*100000'
GROUP BY h.hospcode,i.kpi_id)rh;

END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for kpi_rh
-- ----------------------------
DROP PROCEDURE IF EXISTS `kpi_rh`;
delimiter ;;
CREATE PROCEDURE `kpi_rh`()
BEGIN

DROP TABLE IF EXISTS kpi_rh;
CREATE TABLE  kpi_rh
SELECT q.kpi_id,q.kpi_year
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00062),0) AS p80
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00063),0) AS p81
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00064),0) AS p82
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00065),0) AS p83
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00066),0) AS p84
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00067),0) AS p85
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00068),0) AS p86
,COALESCE((SELECT ROUND(((SUM(p.at)/SUM(p.bt))*100),2) FROM kpi_prov p WHERE p.kpi_id = q.kpi_id
AND p.kpi_year = q.kpi_year AND p.hospcode != ''),0) AS rh
,NOW() time
FROM kpi_prov q
INNER JOIN kpi_index k on 	q.kpi_id = k.kpi
WHERE k.kpi_formula = '(A/B)*100'
GROUP BY q.kpi_year, q.kpi_id

UNION ALL

SELECT q.kpi_id,q.kpi_year
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00062),0) AS p80
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00063),0) AS p81
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00064),0) AS p82
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00065),0) AS p83
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00066),0) AS p84
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00067),0) AS p85
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00068),0) AS p86
,COALESCE((SELECT ROUND(((SUM(p.at)/SUM(p.bt))*100),2) FROM kpi_prov p WHERE p.kpi_id = q.kpi_id
AND p.kpi_year = q.kpi_year AND p.hospcode != ''),0) AS rh
,NOW() time
FROM kpi_prov q
INNER JOIN kpi_index k on 	q.kpi_id = k.kpi
WHERE k.kpi_formula = '(A/B)*100Y'
GROUP BY q.kpi_year, q.kpi_id

UNION ALL

SELECT q.kpi_id,q.kpi_year
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00062),0) AS p80
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00063),0) AS p81
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00064),0) AS p82
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00065),0) AS p83
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00066),0) AS p84
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00067),0) AS p85
,COALESCE((SELECT p.pt FROM kpi_prov p WHERE p.kpi_id = q.kpi_id AND p.kpi_year = q.kpi_year AND p.hospcode = 00068),0) AS p86
,COALESCE((SELECT ROUND(((SUM(p.at)/SUM(p.bt))*100000),2) FROM kpi_prov p WHERE p.kpi_id = q.kpi_id
AND p.kpi_year = q.kpi_year AND p.hospcode != ''),0) AS rh
,NOW() time
FROM kpi_prov q
INNER JOIN kpi_index k on 	q.kpi_id = k.kpi
WHERE k.kpi_formula = '(A/B)*100000'
GROUP BY q.kpi_year, q.kpi_id;



END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
