/*
Navicat MySQL Data Transfer

Source Server         : localdatabase
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : tradesystem

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-07-24 23:10:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add k line data', '7', 'add_klinedata');
INSERT INTO `auth_permission` VALUES ('20', 'Can change k line data', '7', 'change_klinedata');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete k line data', '7', 'delete_klinedata');
INSERT INTO `auth_permission` VALUES ('22', 'Can add k line data real time', '8', 'add_klinedatarealtime');
INSERT INTO `auth_permission` VALUES ('23', 'Can change k line data real time', '8', 'change_klinedatarealtime');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete k line data real time', '8', 'delete_klinedatarealtime');
INSERT INTO `auth_permission` VALUES ('25', 'Can add django job', '9', 'add_djangojob');
INSERT INTO `auth_permission` VALUES ('26', 'Can change django job', '9', 'change_djangojob');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete django job', '9', 'delete_djangojob');
INSERT INTO `auth_permission` VALUES ('28', 'Can add django job execution', '10', 'add_djangojobexecution');
INSERT INTO `auth_permission` VALUES ('29', 'Can change django job execution', '10', 'change_djangojobexecution');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete django job execution', '10', 'delete_djangojobexecution');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$100000$jCOIQdMPNl3E$VOC6MtITh7TOWXSCEtpbDZaXndgIOMXq+d7e3S34twk=', '2018-07-24 12:12:41.374625', '1', 'root', '', '', '', '1', '1', '2018-07-24 11:52:36.840567');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2018-07-24 11:57:06.359438', '1', 'TradeParis object (1)', '1', '[{\"added\": {}}]', '11', '1');

-- ----------------------------
-- Table structure for `django_apscheduler_djangojob`
-- ----------------------------
DROP TABLE IF EXISTS `django_apscheduler_djangojob`;
CREATE TABLE `django_apscheduler_djangojob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `next_run_time` datetime(6) DEFAULT NULL,
  `job_state` longblob NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `django_apscheduler_djangojob_next_run_time_2f022619` (`next_run_time`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_apscheduler_djangojob
-- ----------------------------
INSERT INTO `django_apscheduler_djangojob` VALUES ('1', 'DataAcquisition.views.test_job', '2018-07-24 15:04:14.017129', 0x800495FB010000000000007D94288C0776657273696F6E944B018C026964948C1E446174614163717569736974696F6E2E76696577732E746573745F6A6F62948C0466756E63948C1E446174614163717569736974696F6E2E76696577733A746573745F6A6F62948C0774726967676572948C1D61707363686564756C65722E74726967676572732E696E74657276616C948C0F496E74657276616C547269676765729493942981947D942868014B028C0874696D657A6F6E65948C047079747A948C025F70949394288C0D417369612F5368616E67686169944DE8714B008C034C4D5494749452948C0A73746172745F64617465948C086461746574696D65948C086461746574696D65949394430A07E20718150E0E0042E994680F2868104D80704B008C034353549474945294869452948C08656E645F64617465944E8C08696E74657276616C9468158C0974696D6564656C74619493944B004B3C4B00879452948C066A6974746572944E75628C086578656375746F72948C0764656661756C74948C046172677394298C066B7761726773947D948C046E616D65948C08746573745F6A6F62948C126D6973666972655F67726163655F74696D65944B018C08636F616C6573636594888C0D6D61785F696E7374616E636573944B018C0D6E6578745F72756E5F74696D65946817430A07E2071817040E0042E994681B86945294752E);

-- ----------------------------
-- Table structure for `django_apscheduler_djangojobexecution`
-- ----------------------------
DROP TABLE IF EXISTS `django_apscheduler_djangojobexecution`;
CREATE TABLE `django_apscheduler_djangojobexecution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  `run_time` datetime(6) NOT NULL,
  `duration` decimal(15,2) DEFAULT NULL,
  `started` decimal(15,2) DEFAULT NULL,
  `finished` decimal(15,2) DEFAULT NULL,
  `exception` varchar(1000) DEFAULT NULL,
  `traceback` longtext,
  `job_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_apscheduler_d_job_id_daf5090a_fk_django_ap` (`job_id`),
  KEY `django_apscheduler_djangojobexecution_run_time_16edd96b` (`run_time`),
  CONSTRAINT `django_apscheduler_d_job_id_daf5090a_fk_django_ap` FOREIGN KEY (`job_id`) REFERENCES `django_apscheduler_djangojob` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2234 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_apscheduler_djangojobexecution
-- ----------------------------
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1', 'Executed', '2018-07-24 10:47:35.295829', '0.00', null, '1532429255.78', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2', 'Started execution', '2018-07-24 10:47:35.295829', null, '1532429255.64', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('3', 'Executed', '2018-07-24 10:47:37.295829', '0.00', null, '1532429257.85', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('4', 'Executed', '2018-07-24 10:47:39.295829', '-0.07', '1532429259.63', '1532429259.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('5', 'Executed', '2018-07-24 10:47:41.295829', '-0.06', '1532429261.57', '1532429261.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('6', 'Executed', '2018-07-24 10:47:43.295829', '-0.12', '1532429263.68', '1532429263.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('7', 'Executed', '2018-07-24 10:47:45.295829', '0.00', null, '1532429265.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('8', 'Executed', '2018-07-24 10:47:47.295829', '0.00', null, '1532429267.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('9', 'Started execution', '2018-07-24 10:47:47.295829', null, '1532429267.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('10', 'Executed', '2018-07-24 10:47:49.295829', '-0.16', '1532429269.60', '1532429269.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('11', 'Executed', '2018-07-24 10:47:51.295829', '-0.05', '1532429271.90', '1532429271.85', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('12', 'Executed', '2018-07-24 10:47:53.295829', '-0.12', '1532429273.89', '1532429273.77', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('13', 'Executed', '2018-07-24 10:47:55.295829', '0.00', null, '1532429275.99', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('14', 'Started execution', '2018-07-24 10:47:55.295829', null, '1532429275.74', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('15', 'Executed', '2018-07-24 10:47:57.295829', '0.00', null, '1532429277.82', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('16', 'Executed', '2018-07-24 10:48:53.419078', '0.01', '1532429333.66', '1532429333.67', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('17', 'Executed', '2018-07-24 10:48:55.419078', '-0.09', '1532429335.99', '1532429335.90', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('18', 'Executed', '2018-07-24 10:48:57.419078', '0.00', null, '1532429337.92', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('19', 'Started execution', '2018-07-24 10:48:57.419078', null, '1532429337.86', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('20', 'Executed', '2018-07-24 10:48:59.419078', '-0.17', '1532429339.85', '1532429339.68', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('21', 'Executed', '2018-07-24 10:49:01.419078', '-0.12', '1532429342.01', '1532429341.89', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('22', 'Executed', '2018-07-24 10:49:03.419078', '-0.09', '1532429343.97', '1532429343.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('23', 'Executed', '2018-07-24 10:49:05.419078', '0.00', null, '1532429345.84', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('24', 'Started execution', '2018-07-24 10:49:05.419078', null, '1532429345.77', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('25', 'Executed', '2018-07-24 10:49:07.419078', '-0.08', '1532429347.73', '1532429347.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('26', 'Executed', '2018-07-24 10:49:09.419078', '-0.05', '1532429349.68', '1532429349.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('27', 'Executed', '2018-07-24 10:50:23.614922', '0.00', null, '1532429423.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('28', 'Started execution', '2018-07-24 10:50:23.614922', null, '1532429423.71', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('29', 'Executed', '2018-07-24 10:50:25.614922', '0.00', null, '1532429425.99', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('30', 'Executed', '2018-07-24 10:50:27.614922', '-0.08', '1532429428.04', '1532429427.96', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('31', 'Executed', '2018-07-24 10:50:29.614922', '0.00', null, '1532429429.94', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('32', 'Executed', '2018-07-24 10:50:31.614922', '0.00', null, '1532429431.95', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('33', 'Started execution', '2018-07-24 10:50:31.614922', null, '1532429431.88', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('34', 'Executed', '2018-07-24 10:50:33.614922', '-0.15', '1532429434.07', '1532429433.92', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('35', 'Executed', '2018-07-24 10:51:30.243061', '0.00', null, '1532429490.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('36', 'Started execution', '2018-07-24 10:51:30.243061', null, '1532429490.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('37', 'Executed', '2018-07-24 10:51:32.243061', '-0.08', '1532429492.66', '1532429492.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('38', 'Executed', '2018-07-24 10:51:34.243061', '-0.08', '1532429494.61', '1532429494.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('39', 'Executed', '2018-07-24 10:51:36.243061', '-0.04', '1532429496.55', '1532429496.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('40', 'Executed', '2018-07-24 10:51:38.243061', '0.00', null, '1532429498.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('41', 'Started execution', '2018-07-24 10:51:38.243061', null, '1532429498.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('42', 'Executed', '2018-07-24 10:51:40.243061', '-0.04', '1532429500.56', '1532429500.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('43', 'Executed', '2018-07-24 10:51:42.243061', '0.00', null, '1532429502.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('44', 'Started execution', '2018-07-24 10:51:42.243061', null, '1532429502.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('45', 'Executed', '2018-07-24 10:51:44.243061', '0.00', null, '1532429504.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('46', 'Executed', '2018-07-24 10:51:46.243061', '-0.19', '1532429506.68', '1532429506.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('47', 'Executed', '2018-07-24 10:51:48.243061', '0.00', null, '1532429508.70', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('48', 'Started execution', '2018-07-24 10:51:48.243061', null, '1532429508.64', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('49', 'Executed', '2018-07-24 10:51:50.243061', '0.00', null, '1532429510.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('50', 'Started execution', '2018-07-24 10:51:50.243061', null, '1532429510.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('51', 'Executed', '2018-07-24 10:51:52.243061', '0.00', null, '1532429512.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('52', 'Started execution', '2018-07-24 10:51:52.243061', null, '1532429512.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('53', 'Executed', '2018-07-24 10:51:54.243061', '0.00', null, '1532429514.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('54', 'Executed', '2018-07-24 10:51:56.243061', '0.00', null, '1532429516.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('55', 'Started execution', '2018-07-24 10:51:58.243061', null, '1532429518.60', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('56', 'Executed', '2018-07-24 10:51:58.243061', '0.00', null, '1532429518.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('57', 'Executed', '2018-07-24 10:52:00.243061', '0.00', null, '1532429520.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('58', 'Started execution', '2018-07-24 10:52:00.243061', null, '1532429520.67', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('59', 'Executed', '2018-07-24 10:52:02.243061', '0.00', null, '1532429522.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('60', 'Started execution', '2018-07-24 10:52:02.243061', null, '1532429522.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('61', 'Executed', '2018-07-24 10:52:04.243061', '0.00', null, '1532429524.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('62', 'Started execution', '2018-07-24 10:52:04.243061', null, '1532429524.58', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('63', 'Executed', '2018-07-24 10:52:06.243061', '0.00', null, '1532429526.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('64', 'Executed', '2018-07-24 10:52:08.243061', '0.00', null, '1532429528.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('65', 'Started execution', '2018-07-24 10:52:08.243061', null, '1532429528.53', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('66', 'Executed', '2018-07-24 10:52:10.243061', '0.00', null, '1532429530.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('67', 'Started execution', '2018-07-24 10:52:10.243061', null, '1532429530.59', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('68', 'Executed', '2018-07-24 10:52:12.243061', '0.00', null, '1532429532.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('69', 'Executed', '2018-07-24 10:52:14.243061', '0.00', null, '1532429534.68', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('70', 'Started execution', '2018-07-24 10:52:14.243061', null, '1532429534.64', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('71', 'Executed', '2018-07-24 10:52:16.243061', '0.00', null, '1532429536.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('72', 'Executed', '2018-07-24 10:52:18.243061', '0.00', null, '1532429538.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('73', 'Started execution', '2018-07-24 10:52:18.243061', null, '1532429538.35', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('74', 'Started execution', '2018-07-24 10:52:20.243061', null, '1532429540.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('75', 'Executed', '2018-07-24 10:52:22.243061', '0.00', null, '1532429542.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('76', 'Started execution', '2018-07-24 10:52:22.243061', null, '1532429542.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('77', 'Executed', '2018-07-24 10:52:24.243061', '0.00', null, '1532429544.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('78', 'Started execution', '2018-07-24 10:52:24.243061', null, '1532429544.61', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('79', 'Executed', '2018-07-24 10:52:26.243061', '0.00', null, '1532429546.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('80', 'Started execution', '2018-07-24 10:52:26.243061', null, '1532429546.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('81', 'Executed', '2018-07-24 10:52:28.243061', '0.00', null, '1532429548.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('82', 'Started execution', '2018-07-24 10:52:28.243061', null, '1532429548.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('83', 'Executed', '2018-07-24 10:52:30.243061', '0.00', null, '1532429550.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('84', 'Executed', '2018-07-24 10:52:32.243061', '0.00', null, '1532429552.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('85', 'Executed', '2018-07-24 10:52:34.243061', '0.00', null, '1532429554.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('86', 'Executed', '2018-07-24 10:52:36.243061', '0.00', null, '1532429556.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('87', 'Started execution', '2018-07-24 10:52:36.243061', null, '1532429556.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('88', 'Executed', '2018-07-24 10:52:38.243061', '0.00', null, '1532429558.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('89', 'Executed', '2018-07-24 10:52:40.243061', '0.00', null, '1532429560.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('90', 'Executed', '2018-07-24 10:52:42.243061', '0.00', null, '1532429562.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('91', 'Executed', '2018-07-24 10:52:44.243061', '0.00', null, '1532429564.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('92', 'Executed', '2018-07-24 10:52:46.243061', '0.00', null, '1532429566.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('93', 'Executed', '2018-07-24 10:52:48.243061', '0.00', null, '1532429568.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('94', 'Started execution', '2018-07-24 10:52:48.243061', null, '1532429568.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('95', 'Executed', '2018-07-24 10:52:50.243061', '0.00', null, '1532429570.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('96', 'Started execution', '2018-07-24 10:52:50.243061', null, '1532429570.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('97', 'Executed', '2018-07-24 10:52:52.243061', '0.00', null, '1532429572.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('98', 'Executed', '2018-07-24 10:52:54.243061', '0.00', null, '1532429574.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('99', 'Started execution', '2018-07-24 10:52:54.243061', null, '1532429574.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('100', 'Executed', '2018-07-24 10:52:56.243061', '0.00', null, '1532429576.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('101', 'Started execution', '2018-07-24 10:52:56.243061', null, '1532429576.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('102', 'Executed', '2018-07-24 10:52:58.243061', '0.00', null, '1532429578.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('103', 'Executed', '2018-07-24 10:53:00.243061', '0.00', null, '1532429580.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('104', 'Executed', '2018-07-24 10:53:02.243061', '0.00', null, '1532429582.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('105', 'Started execution', '2018-07-24 10:53:02.243061', null, '1532429582.60', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('106', 'Executed', '2018-07-24 10:53:04.243061', '0.00', null, '1532429585.27', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('107', 'Executed', '2018-07-24 10:53:06.243061', '0.00', null, '1532429586.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('108', 'Executed', '2018-07-24 10:53:08.243061', '0.00', null, '1532429588.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('109', 'Executed', '2018-07-24 10:53:10.243061', '0.00', null, '1532429590.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('110', 'Executed', '2018-07-24 10:53:12.243061', '0.00', null, '1532429592.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('111', 'Started execution', '2018-07-24 10:53:12.243061', null, '1532429592.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('112', 'Executed', '2018-07-24 10:53:14.243061', '0.00', null, '1532429594.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('113', 'Started execution', '2018-07-24 10:53:14.243061', null, '1532429594.52', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('114', 'Executed', '2018-07-24 10:53:16.243061', '0.00', null, '1532429596.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('115', 'Started execution', '2018-07-24 10:53:16.243061', null, '1532429596.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('116', 'Executed', '2018-07-24 10:53:18.243061', '0.00', null, '1532429598.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('117', 'Started execution', '2018-07-24 10:53:18.243061', null, '1532429598.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('118', 'Executed', '2018-07-24 10:53:20.243061', '0.00', null, '1532429600.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('119', 'Started execution', '2018-07-24 10:53:20.243061', null, '1532429600.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('120', 'Executed', '2018-07-24 10:53:22.243061', '0.00', null, '1532429602.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('121', 'Executed', '2018-07-24 10:53:24.243061', '0.00', null, '1532429604.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('122', 'Started execution', '2018-07-24 10:53:24.243061', null, '1532429604.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('123', 'Executed', '2018-07-24 10:53:26.243061', '0.00', null, '1532429606.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('124', 'Executed', '2018-07-24 10:53:28.243061', '0.00', null, '1532429608.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('125', 'Executed', '2018-07-24 10:53:30.243061', '0.00', null, '1532429610.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('126', 'Started execution', '2018-07-24 10:53:30.243061', null, '1532429610.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('127', 'Executed', '2018-07-24 10:53:32.243061', '0.00', null, '1532429612.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('128', 'Started execution', '2018-07-24 10:53:32.243061', null, '1532429612.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('129', 'Executed', '2018-07-24 10:53:34.243061', '0.00', null, '1532429614.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('130', 'Started execution', '2018-07-24 10:53:34.243061', null, '1532429614.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('131', 'Executed', '2018-07-24 10:53:36.243061', '0.00', null, '1532429616.82', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('132', 'Started execution', '2018-07-24 10:53:36.243061', null, '1532429616.75', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('133', 'Executed', '2018-07-24 10:53:38.243061', '0.00', null, '1532429618.78', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('134', 'Executed', '2018-07-24 10:53:40.243061', '0.00', '1532429620.82', '1532429620.82', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('135', 'Executed', '2018-07-24 10:53:42.243061', '0.00', null, '1532429622.80', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('136', 'Executed', '2018-07-24 10:53:44.243061', '0.00', null, '1532429624.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('137', 'Started execution', '2018-07-24 10:53:44.243061', null, '1532429624.35', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('138', 'Executed', '2018-07-24 10:53:46.243061', '0.00', null, '1532429626.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('139', 'Started execution', '2018-07-24 10:53:46.243061', null, '1532429626.60', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('140', 'Executed', '2018-07-24 10:53:48.243061', '0.00', null, '1532429628.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('141', 'Executed', '2018-07-24 10:53:50.243061', '0.00', null, '1532429630.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('142', 'Executed', '2018-07-24 10:53:52.243061', '0.00', null, '1532429632.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('143', 'Started execution', '2018-07-24 10:53:52.243061', null, '1532429632.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('144', 'Started execution', '2018-07-24 10:53:54.243061', null, '1532429634.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('145', 'Started execution', '2018-07-24 10:53:56.243061', null, '1532429636.52', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('146', 'Executed', '2018-07-24 10:53:58.243061', '0.00', null, '1532429638.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('147', 'Started execution', '2018-07-24 10:53:58.243061', null, '1532429638.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('148', 'Executed', '2018-07-24 10:54:00.243061', '0.00', null, '1532429640.70', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('149', 'Executed', '2018-07-24 10:54:02.243061', '0.00', null, '1532429642.81', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('150', 'Executed', '2018-07-24 10:54:04.243061', '0.00', null, '1532429644.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('151', 'Executed', '2018-07-24 10:54:06.243061', '0.00', null, '1532429646.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('152', 'Executed', '2018-07-24 10:54:08.243061', '0.00', null, '1532429648.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('153', 'Started execution', '2018-07-24 10:54:08.243061', null, '1532429648.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('154', 'Executed', '2018-07-24 10:54:10.243061', '0.00', null, '1532429650.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('155', 'Started execution', '2018-07-24 10:54:10.243061', null, '1532429650.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('156', 'Executed', '2018-07-24 10:54:12.243061', '0.00', null, '1532429652.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('157', 'Executed', '2018-07-24 10:54:14.243061', '0.00', null, '1532429654.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('158', 'Executed', '2018-07-24 10:54:16.243061', '0.00', null, '1532429656.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('159', 'Executed', '2018-07-24 10:54:18.243061', '0.00', null, '1532429658.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('160', 'Executed', '2018-07-24 10:54:20.243061', '0.00', null, '1532429660.34', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('161', 'Executed', '2018-07-24 10:54:22.243061', '0.00', null, '1532429662.35', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('162', 'Executed', '2018-07-24 10:54:24.243061', '0.00', null, '1532429664.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('163', 'Started execution', '2018-07-24 10:54:24.243061', null, '1532429664.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('164', 'Executed', '2018-07-24 10:54:26.243061', '0.00', null, '1532429666.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('165', 'Executed', '2018-07-24 10:54:28.243061', '0.00', null, '1532429668.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('166', 'Started execution', '2018-07-24 10:54:28.243061', null, '1532429668.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('167', 'Executed', '2018-07-24 10:54:30.243061', '0.00', null, '1532429670.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('168', 'Executed', '2018-07-24 10:54:32.243061', '0.00', null, '1532429672.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('169', 'Executed', '2018-07-24 10:54:34.243061', '0.00', null, '1532429674.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('170', 'Executed', '2018-07-24 10:54:36.243061', '0.00', null, '1532429676.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('171', 'Executed', '2018-07-24 10:54:38.243061', '0.00', null, '1532429678.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('172', 'Started execution', '2018-07-24 10:54:38.243061', null, '1532429678.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('173', 'Executed', '2018-07-24 10:54:40.243061', '0.00', null, '1532429680.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('174', 'Executed', '2018-07-24 10:54:42.243061', '0.00', null, '1532429682.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('175', 'Started execution', '2018-07-24 10:54:42.243061', null, '1532429682.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('176', 'Executed', '2018-07-24 10:54:44.243061', '0.00', null, '1532429684.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('177', 'Executed', '2018-07-24 10:54:46.243061', '0.00', null, '1532429686.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('178', 'Started execution', '2018-07-24 10:54:46.243061', null, '1532429686.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('179', 'Executed', '2018-07-24 10:54:48.243061', '0.00', null, '1532429688.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('180', 'Started execution', '2018-07-24 10:54:48.243061', null, '1532429688.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('181', 'Executed', '2018-07-24 10:54:50.243061', '0.00', null, '1532429690.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('182', 'Started execution', '2018-07-24 10:54:50.243061', null, '1532429690.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('183', 'Executed', '2018-07-24 10:54:52.243061', '0.00', null, '1532429692.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('184', 'Started execution', '2018-07-24 10:54:52.243061', null, '1532429692.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('185', 'Executed', '2018-07-24 10:54:54.243061', '0.00', null, '1532429694.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('186', 'Started execution', '2018-07-24 10:54:54.243061', null, '1532429694.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('187', 'Executed', '2018-07-24 10:54:56.243061', '0.00', null, '1532429696.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('188', 'Executed', '2018-07-24 10:54:58.243061', '0.00', null, '1532429698.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('189', 'Executed', '2018-07-24 10:55:00.243061', '0.00', null, '1532429700.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('190', 'Started execution', '2018-07-24 10:55:00.243061', null, '1532429700.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('191', 'Executed', '2018-07-24 10:55:02.243061', '0.00', null, '1532429702.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('192', 'Started execution', '2018-07-24 10:55:02.243061', null, '1532429702.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('193', 'Executed', '2018-07-24 10:55:04.243061', '0.00', null, '1532429704.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('194', 'Started execution', '2018-07-24 10:55:04.243061', null, '1532429704.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('195', 'Executed', '2018-07-24 10:55:06.243061', '0.00', null, '1532429706.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('196', 'Executed', '2018-07-24 10:55:08.243061', '0.00', null, '1532429708.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('197', 'Started execution', '2018-07-24 10:55:08.243061', null, '1532429708.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('198', 'Executed', '2018-07-24 10:55:10.243061', '0.00', null, '1532429710.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('199', 'Executed', '2018-07-24 10:55:12.243061', '0.00', null, '1532429712.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('200', 'Executed', '2018-07-24 10:55:14.243061', '0.00', null, '1532429714.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('201', 'Executed', '2018-07-24 10:55:16.243061', '0.00', null, '1532429716.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('202', 'Executed', '2018-07-24 10:55:18.243061', '0.00', null, '1532429718.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('203', 'Started execution', '2018-07-24 10:55:18.243061', null, '1532429718.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('204', 'Executed', '2018-07-24 10:55:20.243061', '0.00', null, '1532429720.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('205', 'Executed', '2018-07-24 10:55:22.243061', '0.00', null, '1532429722.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('206', 'Executed', '2018-07-24 10:55:24.243061', '0.00', null, '1532429724.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('207', 'Executed', '2018-07-24 10:55:26.243061', '0.00', null, '1532429726.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('208', 'Executed', '2018-07-24 10:55:28.243061', '0.00', null, '1532429728.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('209', 'Executed', '2018-07-24 10:55:30.243061', '0.00', null, '1532429730.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('210', 'Started execution', '2018-07-24 10:55:30.243061', null, '1532429730.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('211', 'Executed', '2018-07-24 10:55:32.243061', '0.00', null, '1532429732.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('212', 'Started execution', '2018-07-24 10:55:32.243061', null, '1532429732.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('213', 'Executed', '2018-07-24 10:55:34.243061', '0.00', null, '1532429734.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('214', 'Started execution', '2018-07-24 10:55:34.243061', null, '1532429734.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('215', 'Executed', '2018-07-24 10:55:36.243061', '0.00', null, '1532429736.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('216', 'Executed', '2018-07-24 10:55:38.243061', '0.00', null, '1532429738.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('217', 'Started execution', '2018-07-24 10:55:38.243061', null, '1532429738.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('218', 'Executed', '2018-07-24 10:55:40.243061', '0.00', null, '1532429740.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('219', 'Started execution', '2018-07-24 10:55:40.243061', null, '1532429740.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('220', 'Executed', '2018-07-24 10:55:42.243061', '0.00', null, '1532429742.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('221', 'Started execution', '2018-07-24 10:55:42.243061', null, '1532429742.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('222', 'Executed', '2018-07-24 10:55:44.243061', '0.00', null, '1532429744.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('223', 'Started execution', '2018-07-24 10:55:44.243061', null, '1532429744.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('224', 'Executed', '2018-07-24 10:55:46.243061', '0.00', null, '1532429746.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('225', 'Started execution', '2018-07-24 10:55:46.243061', null, '1532429746.56', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('226', 'Executed', '2018-07-24 10:55:48.243061', '0.00', null, '1532429748.77', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('227', 'Started execution', '2018-07-24 10:55:48.243061', null, '1532429748.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('228', 'Executed', '2018-07-24 10:55:50.243061', '0.00', null, '1532429750.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('229', 'Executed', '2018-07-24 10:55:52.243061', '0.00', null, '1532429752.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('230', 'Executed', '2018-07-24 10:55:54.243061', '0.00', null, '1532429754.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('231', 'Executed', '2018-07-24 10:55:56.243061', '0.00', null, '1532429756.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('232', 'Started execution', '2018-07-24 10:55:56.243061', null, '1532429756.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('233', 'Executed', '2018-07-24 10:55:58.243061', '0.00', null, '1532429758.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('234', 'Started execution', '2018-07-24 10:55:58.243061', null, '1532429758.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('235', 'Executed', '2018-07-24 10:56:00.243061', '0.00', null, '1532429760.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('236', 'Executed', '2018-07-24 10:56:02.243061', '0.00', null, '1532429762.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('237', 'Started execution', '2018-07-24 10:56:02.243061', null, '1532429762.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('238', 'Executed', '2018-07-24 10:56:04.243061', '0.00', null, '1532429764.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('239', 'Started execution', '2018-07-24 10:56:04.243061', null, '1532429764.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('240', 'Executed', '2018-07-24 10:56:06.243061', '0.00', null, '1532429766.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('241', 'Started execution', '2018-07-24 10:56:06.243061', null, '1532429766.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('242', 'Executed', '2018-07-24 10:56:08.243061', '0.00', null, '1532429768.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('243', 'Executed', '2018-07-24 10:56:10.243061', '0.00', null, '1532429770.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('244', 'Executed', '2018-07-24 10:56:12.243061', '0.00', null, '1532429772.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('245', 'Executed', '2018-07-24 10:56:14.243061', '0.00', null, '1532429774.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('246', 'Executed', '2018-07-24 10:56:16.243061', '0.00', null, '1532429776.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('247', 'Started execution', '2018-07-24 10:56:16.243061', null, '1532429776.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('248', 'Executed', '2018-07-24 10:56:18.243061', '0.00', null, '1532429778.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('249', 'Executed', '2018-07-24 10:56:20.243061', '0.00', null, '1532429780.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('250', 'Executed', '2018-07-24 10:56:22.243061', '0.00', null, '1532429782.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('251', 'Executed', '2018-07-24 10:56:24.243061', '0.00', null, '1532429784.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('252', 'Executed', '2018-07-24 10:56:26.243061', '0.00', null, '1532429786.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('253', 'Executed', '2018-07-24 10:56:28.243061', '0.00', null, '1532429788.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('254', 'Executed', '2018-07-24 10:56:30.243061', '0.00', null, '1532429790.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('255', 'Started execution', '2018-07-24 10:56:30.243061', null, '1532429790.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('256', 'Executed', '2018-07-24 10:56:32.243061', '0.00', null, '1532429792.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('257', 'Started execution', '2018-07-24 10:56:32.243061', null, '1532429792.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('258', 'Executed', '2018-07-24 10:56:34.243061', '0.00', null, '1532429794.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('259', 'Started execution', '2018-07-24 10:56:34.243061', null, '1532429794.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('260', 'Executed', '2018-07-24 10:56:36.243061', '0.00', null, '1532429796.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('261', 'Executed', '2018-07-24 10:56:38.243061', '0.00', null, '1532429798.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('262', 'Started execution', '2018-07-24 10:56:40.243061', null, '1532429800.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('263', 'Executed', '2018-07-24 10:56:42.243061', '0.00', null, '1532429802.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('264', 'Executed', '2018-07-24 10:56:44.243061', '0.00', null, '1532429804.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('265', 'Executed', '2018-07-24 10:56:46.243061', '0.00', null, '1532429806.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('266', 'Executed', '2018-07-24 10:56:48.243061', '0.00', null, '1532429808.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('267', 'Started execution', '2018-07-24 10:56:48.243061', null, '1532429808.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('268', 'Executed', '2018-07-24 10:56:50.243061', '0.00', null, '1532429810.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('269', 'Started execution', '2018-07-24 10:56:50.243061', null, '1532429810.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('270', 'Executed', '2018-07-24 10:56:52.243061', '0.00', null, '1532429812.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('271', 'Started execution', '2018-07-24 10:56:52.243061', null, '1532429812.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('272', 'Executed', '2018-07-24 10:56:54.243061', '0.00', null, '1532429814.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('273', 'Executed', '2018-07-24 10:56:56.243061', '0.00', null, '1532429816.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('274', 'Executed', '2018-07-24 10:56:58.243061', '0.00', null, '1532429818.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('275', 'Started execution', '2018-07-24 10:56:58.243061', null, '1532429818.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('276', 'Executed', '2018-07-24 10:57:00.243061', '0.00', null, '1532429820.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('277', 'Started execution', '2018-07-24 10:57:00.243061', null, '1532429820.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('278', 'Executed', '2018-07-24 10:57:02.243061', '0.00', null, '1532429822.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('279', 'Started execution', '2018-07-24 10:57:02.243061', null, '1532429822.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('280', 'Executed', '2018-07-24 10:57:04.243061', '0.00', null, '1532429824.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('281', 'Started execution', '2018-07-24 10:57:04.243061', null, '1532429824.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('282', 'Executed', '2018-07-24 10:57:06.243061', '0.00', null, '1532429826.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('283', 'Executed', '2018-07-24 10:57:08.243061', '-0.01', '1532429828.46', '1532429828.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('284', 'Executed', '2018-07-24 10:57:10.243061', '0.00', null, '1532429830.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('285', 'Executed', '2018-07-24 10:57:12.243061', '0.00', null, '1532429832.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('286', 'Executed', '2018-07-24 10:57:14.243061', '0.00', null, '1532429834.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('287', 'Started execution', '2018-07-24 10:57:14.243061', null, '1532429834.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('288', 'Executed', '2018-07-24 10:57:16.243061', '0.00', null, '1532429836.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('289', 'Started execution', '2018-07-24 10:57:16.243061', null, '1532429836.35', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('290', 'Executed', '2018-07-24 10:57:18.243061', '0.00', null, '1532429838.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('291', 'Started execution', '2018-07-24 10:57:18.243061', null, '1532429838.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('292', 'Executed', '2018-07-24 10:57:20.243061', '0.00', null, '1532429840.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('293', 'Executed', '2018-07-24 10:57:22.243061', '0.00', null, '1532429842.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('294', 'Executed', '2018-07-24 10:57:24.243061', '0.00', null, '1532429844.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('295', 'Executed', '2018-07-24 10:57:26.243061', '0.00', null, '1532429846.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('296', 'Started execution', '2018-07-24 10:57:26.243061', null, '1532429846.35', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('297', 'Executed', '2018-07-24 10:57:28.243061', '0.00', null, '1532429848.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('298', 'Executed', '2018-07-24 10:57:30.243061', '0.00', null, '1532429850.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('299', 'Executed', '2018-07-24 10:57:32.243061', '0.00', null, '1532429852.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('300', 'Executed', '2018-07-24 10:57:34.243061', '0.00', null, '1532429854.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('301', 'Started execution', '2018-07-24 10:57:34.243061', null, '1532429854.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('302', 'Executed', '2018-07-24 10:57:36.243061', '0.00', null, '1532429856.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('303', 'Started execution', '2018-07-24 10:57:36.243061', null, '1532429856.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('304', 'Executed', '2018-07-24 10:57:38.243061', '0.00', null, '1532429858.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('305', 'Executed', '2018-07-24 10:57:40.243061', '0.00', null, '1532429860.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('306', 'Started execution', '2018-07-24 10:57:40.243061', null, '1532429860.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('307', 'Executed', '2018-07-24 10:57:42.243061', '0.00', null, '1532429862.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('308', 'Executed', '2018-07-24 10:57:44.243061', '0.00', null, '1532429864.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('309', 'Started execution', '2018-07-24 10:57:44.243061', null, '1532429864.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('310', 'Executed', '2018-07-24 10:57:46.243061', '0.00', null, '1532429866.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('311', 'Started execution', '2018-07-24 10:57:46.243061', null, '1532429866.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('312', 'Executed', '2018-07-24 10:57:48.243061', '0.00', null, '1532429868.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('313', 'Started execution', '2018-07-24 10:57:48.243061', null, '1532429868.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('314', 'Executed', '2018-07-24 10:57:50.243061', '0.00', null, '1532429870.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('315', 'Started execution', '2018-07-24 10:57:50.243061', null, '1532429870.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('316', 'Executed', '2018-07-24 10:57:52.243061', '0.00', null, '1532429872.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('317', 'Executed', '2018-07-24 10:57:54.243061', '0.00', null, '1532429874.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('318', 'Executed', '2018-07-24 10:57:56.243061', '0.00', null, '1532429876.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('319', 'Started execution', '2018-07-24 10:57:56.243061', null, '1532429876.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('320', 'Executed', '2018-07-24 10:57:58.243061', '0.00', null, '1532429878.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('321', 'Executed', '2018-07-24 10:58:00.243061', '0.00', '1532429880.50', '1532429880.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('322', 'Executed', '2018-07-24 10:58:02.243061', '0.00', null, '1532429882.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('323', 'Executed', '2018-07-24 10:58:04.243061', '0.00', null, '1532429884.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('324', 'Executed', '2018-07-24 10:58:06.243061', '0.00', null, '1532429886.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('325', 'Started execution', '2018-07-24 10:58:06.243061', null, '1532429886.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('326', 'Executed', '2018-07-24 10:58:08.243061', '0.00', null, '1532429888.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('327', 'Executed', '2018-07-24 10:58:10.243061', '0.00', null, '1532429890.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('328', 'Executed', '2018-07-24 10:58:12.243061', '0.00', null, '1532429892.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('329', 'Executed', '2018-07-24 10:58:14.243061', '0.00', null, '1532429894.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('330', 'Executed', '2018-07-24 10:58:16.243061', '0.00', null, '1532429896.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('331', 'Executed', '2018-07-24 10:58:18.243061', '0.00', null, '1532429898.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('332', 'Executed', '2018-07-24 10:58:20.243061', '0.00', null, '1532429900.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('333', 'Executed', '2018-07-24 10:58:22.243061', '0.00', null, '1532429902.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('334', 'Started execution', '2018-07-24 10:58:22.243061', null, '1532429902.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('335', 'Executed', '2018-07-24 10:58:24.243061', '0.00', null, '1532429904.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('336', 'Started execution', '2018-07-24 10:58:24.243061', null, '1532429904.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('337', 'Executed', '2018-07-24 10:58:26.243061', '0.00', null, '1532429906.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('338', 'Started execution', '2018-07-24 10:58:26.243061', null, '1532429906.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('339', 'Executed', '2018-07-24 10:58:28.243061', '0.00', null, '1532429908.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('340', 'Started execution', '2018-07-24 10:58:28.243061', null, '1532429908.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('341', 'Executed', '2018-07-24 10:58:30.243061', '0.00', null, '1532429910.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('342', 'Started execution', '2018-07-24 10:58:30.243061', null, '1532429910.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('343', 'Executed', '2018-07-24 10:58:32.243061', '0.00', null, '1532429912.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('344', 'Executed', '2018-07-24 10:58:34.243061', '0.00', null, '1532429914.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('345', 'Executed', '2018-07-24 10:58:36.243061', '0.00', null, '1532429916.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('346', 'Started execution', '2018-07-24 10:58:36.243061', null, '1532429916.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('347', 'Executed', '2018-07-24 10:58:38.243061', '0.00', null, '1532429918.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('348', 'Started execution', '2018-07-24 10:58:38.243061', null, '1532429918.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('349', 'Executed', '2018-07-24 10:58:40.243061', '0.00', null, '1532429920.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('350', 'Executed', '2018-07-24 10:58:42.243061', '0.00', null, '1532429922.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('351', 'Started execution', '2018-07-24 10:58:42.243061', null, '1532429922.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('352', 'Executed', '2018-07-24 10:58:44.243061', '0.00', null, '1532429924.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('353', 'Started execution', '2018-07-24 10:58:44.243061', null, '1532429924.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('354', 'Executed', '2018-07-24 10:58:46.243061', '0.00', null, '1532429926.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('355', 'Started execution', '2018-07-24 10:58:46.243061', null, '1532429926.58', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('356', 'Executed', '2018-07-24 10:58:48.243061', '0.00', null, '1532429928.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('357', 'Started execution', '2018-07-24 10:58:48.243061', null, '1532429928.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('358', 'Executed', '2018-07-24 10:58:50.243061', '0.00', null, '1532429930.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('359', 'Started execution', '2018-07-24 10:58:50.243061', null, '1532429930.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('360', 'Executed', '2018-07-24 10:58:52.243061', '0.00', null, '1532429932.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('361', 'Started execution', '2018-07-24 10:58:52.243061', null, '1532429932.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('362', 'Executed', '2018-07-24 10:58:54.243061', '0.00', null, '1532429934.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('363', 'Executed', '2018-07-24 10:58:56.243061', '0.00', null, '1532429936.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('364', 'Started execution', '2018-07-24 10:58:56.243061', null, '1532429936.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('365', 'Executed', '2018-07-24 10:58:58.243061', '0.00', null, '1532429938.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('366', 'Started execution', '2018-07-24 10:58:58.243061', null, '1532429938.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('367', 'Executed', '2018-07-24 10:59:00.243061', '0.00', null, '1532429940.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('368', 'Started execution', '2018-07-24 10:59:00.243061', null, '1532429940.55', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('369', 'Executed', '2018-07-24 10:59:02.243061', '0.00', null, '1532429942.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('370', 'Started execution', '2018-07-24 10:59:02.243061', null, '1532429942.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('371', 'Executed', '2018-07-24 10:59:04.243061', '0.00', null, '1532429944.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('372', 'Started execution', '2018-07-24 10:59:04.243061', null, '1532429944.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('373', 'Executed', '2018-07-24 10:59:06.243061', '-0.01', '1532429946.42', '1532429946.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('374', 'Executed', '2018-07-24 10:59:08.243061', '0.00', null, '1532429948.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('375', 'Executed', '2018-07-24 10:59:10.243061', '0.00', null, '1532429950.36', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('376', 'Executed', '2018-07-24 10:59:12.243061', '0.00', null, '1532429952.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('377', 'Executed', '2018-07-24 10:59:14.243061', '0.00', null, '1532429954.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('378', 'Started execution', '2018-07-24 10:59:14.243061', null, '1532429954.55', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('379', 'Executed', '2018-07-24 10:59:16.243061', '0.00', null, '1532429956.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('380', 'Executed', '2018-07-24 10:59:18.243061', '0.00', null, '1532429958.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('381', 'Started execution', '2018-07-24 10:59:18.243061', null, '1532429958.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('382', 'Executed', '2018-07-24 10:59:20.243061', '0.00', null, '1532429960.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('383', 'Executed', '2018-07-24 10:59:22.243061', '0.00', null, '1532429962.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('384', 'Executed', '2018-07-24 10:59:24.243061', '0.00', null, '1532429964.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('385', 'Executed', '2018-07-24 10:59:26.243061', '0.00', null, '1532429966.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('386', 'Started execution', '2018-07-24 10:59:26.243061', null, '1532429966.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('387', 'Executed', '2018-07-24 10:59:28.243061', '0.00', null, '1532429968.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('388', 'Executed', '2018-07-24 10:59:30.243061', '0.00', null, '1532429970.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('389', 'Executed', '2018-07-24 10:59:32.243061', '0.00', null, '1532429972.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('390', 'Started execution', '2018-07-24 10:59:32.243061', null, '1532429972.59', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('391', 'Executed', '2018-07-24 10:59:34.243061', '0.00', null, '1532429974.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('392', 'Executed', '2018-07-24 10:59:36.243061', '0.00', null, '1532429976.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('393', 'Started execution', '2018-07-24 10:59:36.243061', null, '1532429976.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('394', 'Executed', '2018-07-24 10:59:38.243061', '0.00', null, '1532429978.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('395', 'Started execution', '2018-07-24 10:59:38.243061', null, '1532429978.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('396', 'Executed', '2018-07-24 10:59:40.243061', '0.00', null, '1532429980.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('397', 'Executed', '2018-07-24 10:59:42.243061', '0.00', null, '1532429982.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('398', 'Started execution', '2018-07-24 10:59:42.243061', null, '1532429982.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('399', 'Executed', '2018-07-24 10:59:44.243061', '0.00', null, '1532429984.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('400', 'Started execution', '2018-07-24 10:59:44.243061', null, '1532429984.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('401', 'Executed', '2018-07-24 10:59:46.243061', '0.00', null, '1532429986.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('402', 'Started execution', '2018-07-24 10:59:46.243061', null, '1532429986.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('403', 'Executed', '2018-07-24 10:59:48.243061', '0.00', null, '1532429988.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('404', 'Started execution', '2018-07-24 10:59:48.243061', null, '1532429988.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('405', 'Executed', '2018-07-24 10:59:50.243061', '0.00', null, '1532429990.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('406', 'Started execution', '2018-07-24 10:59:50.243061', null, '1532429990.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('407', 'Executed', '2018-07-24 10:59:52.243061', '0.00', null, '1532429992.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('408', 'Started execution', '2018-07-24 10:59:52.243061', null, '1532429992.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('409', 'Executed', '2018-07-24 10:59:54.243061', '0.00', null, '1532429994.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('410', 'Executed', '2018-07-24 10:59:56.243061', '0.00', null, '1532429996.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('411', 'Started execution', '2018-07-24 10:59:56.243061', null, '1532429996.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('412', 'Executed', '2018-07-24 10:59:58.243061', '0.00', null, '1532429998.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('413', 'Started execution', '2018-07-24 10:59:58.243061', null, '1532429998.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('414', 'Executed', '2018-07-24 11:00:00.243061', '0.00', null, '1532430000.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('415', 'Executed', '2018-07-24 11:00:02.243061', '0.00', null, '1532430002.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('416', 'Executed', '2018-07-24 11:00:04.243061', '0.00', null, '1532430004.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('417', 'Started execution', '2018-07-24 11:00:04.243061', null, '1532430004.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('418', 'Executed', '2018-07-24 11:00:06.243061', '0.00', null, '1532430006.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('419', 'Executed', '2018-07-24 11:00:08.243061', '0.00', null, '1532430008.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('420', 'Executed', '2018-07-24 11:00:10.243061', '0.00', null, '1532430010.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('421', 'Executed', '2018-07-24 11:00:12.243061', '0.00', null, '1532430012.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('422', 'Executed', '2018-07-24 11:00:14.243061', '0.00', null, '1532430014.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('423', 'Executed', '2018-07-24 11:00:16.243061', '0.00', null, '1532430016.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('424', 'Executed', '2018-07-24 11:00:18.243061', '0.00', null, '1532430018.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('425', 'Executed', '2018-07-24 11:00:20.243061', '0.00', null, '1532430020.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('426', 'Executed', '2018-07-24 11:00:22.243061', '0.00', null, '1532430022.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('427', 'Executed', '2018-07-24 11:00:24.243061', '0.00', null, '1532430024.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('428', 'Executed', '2018-07-24 11:00:26.243061', '0.00', null, '1532430026.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('429', 'Started execution', '2018-07-24 11:00:26.243061', null, '1532430026.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('430', 'Executed', '2018-07-24 11:00:28.243061', '0.00', null, '1532430028.36', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('431', 'Executed', '2018-07-24 11:00:30.243061', '0.00', null, '1532430030.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('432', 'Started execution', '2018-07-24 11:00:30.243061', null, '1532430030.35', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('433', 'Executed', '2018-07-24 11:00:32.243061', '0.00', null, '1532430032.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('434', 'Started execution', '2018-07-24 11:00:32.243061', null, '1532430032.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('435', 'Executed', '2018-07-24 11:00:34.243061', '0.00', null, '1532430034.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('436', 'Started execution', '2018-07-24 11:00:34.243061', null, '1532430034.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('437', 'Executed', '2018-07-24 11:00:36.243061', '0.00', null, '1532430036.36', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('438', 'Started execution', '2018-07-24 11:00:36.243061', null, '1532430036.33', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('439', 'Executed', '2018-07-24 11:00:38.243061', '0.00', null, '1532430038.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('440', 'Started execution', '2018-07-24 11:00:38.243061', null, '1532430038.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('441', 'Executed', '2018-07-24 11:00:40.243061', '0.00', null, '1532430040.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('442', 'Executed', '2018-07-24 11:00:42.243061', '0.00', null, '1532430042.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('443', 'Started execution', '2018-07-24 11:00:42.243061', null, '1532430042.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('444', 'Executed', '2018-07-24 11:00:44.243061', '0.00', null, '1532430044.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('445', 'Executed', '2018-07-24 11:00:46.243061', '0.00', null, '1532430046.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('446', 'Executed', '2018-07-24 11:00:48.243061', '0.00', null, '1532430048.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('447', 'Executed', '2018-07-24 11:00:50.243061', '0.00', null, '1532430050.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('448', 'Started execution', '2018-07-24 11:00:50.243061', null, '1532430050.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('449', 'Executed', '2018-07-24 11:00:52.243061', '0.00', null, '1532430052.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('450', 'Executed', '2018-07-24 11:00:54.243061', '0.00', null, '1532430054.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('451', 'Started execution', '2018-07-24 11:00:54.243061', null, '1532430054.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('452', 'Executed', '2018-07-24 11:00:56.243061', '0.00', null, '1532430056.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('453', 'Started execution', '2018-07-24 11:00:56.243061', null, '1532430056.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('454', 'Executed', '2018-07-24 11:00:58.243061', '0.00', null, '1532430058.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('455', 'Executed', '2018-07-24 11:01:00.243061', '0.00', null, '1532430060.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('456', 'Executed', '2018-07-24 11:01:02.243061', '0.00', null, '1532430062.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('457', 'Executed', '2018-07-24 11:01:04.243061', '0.00', null, '1532430064.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('458', 'Executed', '2018-07-24 11:01:06.243061', '0.00', null, '1532430066.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('459', 'Executed', '2018-07-24 11:01:08.243061', '0.00', null, '1532430068.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('460', 'Executed', '2018-07-24 11:01:10.243061', '0.00', null, '1532430070.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('461', 'Executed', '2018-07-24 11:01:12.243061', '0.00', null, '1532430072.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('462', 'Executed', '2018-07-24 11:01:14.243061', '0.00', null, '1532430074.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('463', 'Executed', '2018-07-24 11:01:16.243061', '0.00', null, '1532430076.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('464', 'Executed', '2018-07-24 11:01:18.243061', '0.00', null, '1532430078.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('465', 'Started execution', '2018-07-24 11:01:18.243061', null, '1532430078.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('466', 'Executed', '2018-07-24 11:01:20.243061', '0.00', null, '1532430080.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('467', 'Executed', '2018-07-24 11:01:22.243061', '0.00', null, '1532430082.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('468', 'Executed', '2018-07-24 11:01:24.243061', '0.00', null, '1532430084.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('469', 'Executed', '2018-07-24 11:01:26.243061', '0.00', null, '1532430086.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('470', 'Executed', '2018-07-24 11:01:28.243061', '0.00', null, '1532430088.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('471', 'Started execution', '2018-07-24 11:01:28.243061', null, '1532430088.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('472', 'Executed', '2018-07-24 11:01:30.243061', '0.00', null, '1532430090.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('473', 'Started execution', '2018-07-24 11:01:30.243061', null, '1532430090.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('474', 'Executed', '2018-07-24 11:01:32.243061', '0.00', null, '1532430092.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('475', 'Started execution', '2018-07-24 11:01:32.243061', null, '1532430092.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('476', 'Executed', '2018-07-24 11:01:34.243061', '0.00', null, '1532430094.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('477', 'Started execution', '2018-07-24 11:01:34.243061', null, '1532430094.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('478', 'Executed', '2018-07-24 11:01:36.243061', '0.00', null, '1532430096.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('479', 'Executed', '2018-07-24 11:01:38.243061', '0.00', null, '1532430098.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('480', 'Started execution', '2018-07-24 11:01:38.243061', null, '1532430098.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('481', 'Executed', '2018-07-24 11:01:40.243061', '0.00', null, '1532430100.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('482', 'Executed', '2018-07-24 11:01:42.243061', '0.00', null, '1532430102.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('483', 'Started execution', '2018-07-24 11:01:42.243061', null, '1532430102.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('484', 'Executed', '2018-07-24 11:01:44.243061', '0.00', null, '1532430104.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('485', 'Executed', '2018-07-24 11:01:46.243061', '0.00', null, '1532430106.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('486', 'Executed', '2018-07-24 11:01:48.243061', '0.00', null, '1532430108.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('487', 'Executed', '2018-07-24 11:01:50.243061', '0.00', null, '1532430110.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('488', 'Started execution', '2018-07-24 11:01:50.243061', null, '1532430110.52', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('489', 'Executed', '2018-07-24 11:01:52.243061', '0.00', null, '1532430112.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('490', 'Started execution', '2018-07-24 11:01:52.243061', null, '1532430112.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('491', 'Executed', '2018-07-24 11:01:54.243061', '0.00', null, '1532430114.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('492', 'Executed', '2018-07-24 11:01:56.243061', '0.00', null, '1532430116.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('493', 'Started execution', '2018-07-24 11:01:56.243061', null, '1532430116.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('494', 'Executed', '2018-07-24 11:01:58.243061', '0.00', null, '1532430118.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('495', 'Executed', '2018-07-24 11:02:00.243061', '0.00', null, '1532430120.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('496', 'Executed', '2018-07-24 11:02:02.243061', '0.00', null, '1532430122.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('497', 'Executed', '2018-07-24 11:02:04.243061', '0.00', null, '1532430124.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('498', 'Started execution', '2018-07-24 11:02:04.243061', null, '1532430124.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('499', 'Executed', '2018-07-24 11:02:06.243061', '0.00', null, '1532430126.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('500', 'Started execution', '2018-07-24 11:02:06.243061', null, '1532430126.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('501', 'Executed', '2018-07-24 11:02:08.243061', '0.00', null, '1532430128.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('502', 'Started execution', '2018-07-24 11:02:08.243061', null, '1532430128.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('503', 'Executed', '2018-07-24 11:02:10.243061', '0.00', null, '1532430130.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('504', 'Started execution', '2018-07-24 11:02:10.243061', null, '1532430130.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('505', 'Executed', '2018-07-24 11:02:12.243061', '0.00', null, '1532430132.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('506', 'Started execution', '2018-07-24 11:02:12.243061', null, '1532430132.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('507', 'Executed', '2018-07-24 11:02:14.243061', '0.00', null, '1532430134.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('508', 'Executed', '2018-07-24 11:02:16.243061', '-0.01', '1532430136.43', '1532430136.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('509', 'Executed', '2018-07-24 11:02:18.243061', '0.00', null, '1532430138.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('510', 'Executed', '2018-07-24 11:02:20.243061', '0.00', null, '1532430140.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('511', 'Started execution', '2018-07-24 11:02:20.243061', null, '1532430140.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('512', 'Executed', '2018-07-24 11:02:22.243061', '0.00', null, '1532430142.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('513', 'Executed', '2018-07-24 11:02:24.243061', '0.00', null, '1532430144.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('514', 'Started execution', '2018-07-24 11:02:24.243061', null, '1532430144.53', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('515', 'Executed', '2018-07-24 11:02:26.243061', '0.00', null, '1532430146.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('516', 'Executed', '2018-07-24 11:02:28.243061', '0.00', null, '1532430148.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('517', 'Executed', '2018-07-24 11:02:30.243061', '0.00', null, '1532430150.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('518', 'Executed', '2018-07-24 11:02:32.243061', '0.00', null, '1532430152.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('519', 'Executed', '2018-07-24 11:02:34.243061', '0.00', null, '1532430154.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('520', 'Executed', '2018-07-24 11:02:36.243061', '0.00', null, '1532430156.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('521', 'Started execution', '2018-07-24 11:02:36.243061', null, '1532430156.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('522', 'Executed', '2018-07-24 11:02:38.243061', '0.00', null, '1532430158.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('523', 'Started execution', '2018-07-24 11:02:38.243061', null, '1532430158.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('524', 'Executed', '2018-07-24 11:02:40.243061', '0.00', null, '1532430160.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('525', 'Executed', '2018-07-24 11:02:42.243061', '0.00', null, '1532430162.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('526', 'Executed', '2018-07-24 11:02:44.243061', '0.00', null, '1532430164.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('527', 'Executed', '2018-07-24 11:02:46.243061', '0.00', null, '1532430166.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('528', 'Started execution', '2018-07-24 11:02:46.243061', null, '1532430166.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('529', 'Executed', '2018-07-24 11:02:48.243061', '0.00', null, '1532430168.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('530', 'Started execution', '2018-07-24 11:02:48.243061', null, '1532430168.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('531', 'Executed', '2018-07-24 11:02:50.243061', '0.00', null, '1532430170.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('532', 'Executed', '2018-07-24 11:02:52.243061', '0.00', null, '1532430172.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('533', 'Executed', '2018-07-24 11:02:54.243061', '0.00', null, '1532430174.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('534', 'Executed', '2018-07-24 11:02:56.243061', '0.00', null, '1532430176.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('535', 'Executed', '2018-07-24 11:02:58.243061', '0.00', null, '1532430178.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('536', 'Executed', '2018-07-24 11:03:00.243061', '0.00', null, '1532430180.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('537', 'Started execution', '2018-07-24 11:03:00.243061', null, '1532430180.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('538', 'Executed', '2018-07-24 11:03:02.243061', '0.00', null, '1532430182.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('539', 'Executed', '2018-07-24 11:03:04.243061', '0.00', null, '1532430184.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('540', 'Started execution', '2018-07-24 11:03:04.243061', null, '1532430184.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('541', 'Executed', '2018-07-24 11:03:06.243061', '0.00', null, '1532430186.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('542', 'Executed', '2018-07-24 11:03:08.243061', '0.00', null, '1532430188.37', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('543', 'Executed', '2018-07-24 11:03:10.243061', '0.00', null, '1532430190.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('544', 'Executed', '2018-07-24 11:03:12.243061', '0.00', null, '1532430192.36', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('545', 'Executed', '2018-07-24 11:03:14.243061', '0.00', null, '1532430194.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('546', 'Started execution', '2018-07-24 11:03:14.243061', null, '1532430194.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('547', 'Executed', '2018-07-24 11:03:16.243061', '0.00', null, '1532430196.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('548', 'Started execution', '2018-07-24 11:03:16.243061', null, '1532430196.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('549', 'Executed', '2018-07-24 11:03:18.243061', '0.00', null, '1532430198.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('550', 'Executed', '2018-07-24 11:03:20.243061', '0.00', null, '1532430200.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('551', 'Executed', '2018-07-24 11:03:22.243061', '0.00', null, '1532430202.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('552', 'Executed', '2018-07-24 11:03:24.243061', '0.00', null, '1532430204.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('553', 'Started execution', '2018-07-24 11:03:24.243061', null, '1532430204.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('554', 'Executed', '2018-07-24 11:03:26.243061', '0.00', null, '1532430206.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('555', 'Started execution', '2018-07-24 11:03:26.243061', null, '1532430206.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('556', 'Executed', '2018-07-24 11:03:28.243061', '0.00', null, '1532430208.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('557', 'Started execution', '2018-07-24 11:03:28.243061', null, '1532430208.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('558', 'Executed', '2018-07-24 11:03:30.243061', '0.00', null, '1532430210.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('559', 'Executed', '2018-07-24 11:03:32.243061', '0.00', null, '1532430212.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('560', 'Started execution', '2018-07-24 11:03:32.243061', null, '1532430212.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('561', 'Executed', '2018-07-24 11:03:34.243061', '0.00', null, '1532430214.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('562', 'Started execution', '2018-07-24 11:03:34.243061', null, '1532430214.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('563', 'Executed', '2018-07-24 11:03:36.243061', '0.00', null, '1532430216.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('564', 'Executed', '2018-07-24 11:03:38.243061', '0.00', null, '1532430218.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('565', 'Started execution', '2018-07-24 11:03:38.243061', null, '1532430218.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('566', 'Executed', '2018-07-24 11:03:40.243061', '0.00', null, '1532430220.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('567', 'Executed', '2018-07-24 11:03:42.243061', '0.00', null, '1532430222.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('568', 'Executed', '2018-07-24 11:03:44.243061', '0.00', null, '1532430224.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('569', 'Executed', '2018-07-24 11:03:46.243061', '0.00', null, '1532430226.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('570', 'Executed', '2018-07-24 11:03:48.243061', '0.00', null, '1532430228.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('571', 'Executed', '2018-07-24 11:03:50.243061', '0.00', null, '1532430230.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('572', 'Started execution', '2018-07-24 11:03:50.243061', null, '1532430230.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('573', 'Executed', '2018-07-24 11:03:52.243061', '0.00', null, '1532430232.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('574', 'Executed', '2018-07-24 11:03:54.243061', '0.00', null, '1532430234.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('575', 'Started execution', '2018-07-24 11:03:54.243061', null, '1532430234.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('576', 'Executed', '2018-07-24 11:03:56.243061', '0.00', null, '1532430236.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('577', 'Started execution', '2018-07-24 11:03:56.243061', null, '1532430236.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('578', 'Executed', '2018-07-24 11:03:58.243061', '0.00', null, '1532430238.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('579', 'Started execution', '2018-07-24 11:03:58.243061', null, '1532430238.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('580', 'Executed', '2018-07-24 11:04:00.243061', '0.00', null, '1532430240.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('581', 'Executed', '2018-07-24 11:04:02.243061', '0.00', null, '1532430242.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('582', 'Executed', '2018-07-24 11:04:04.243061', '0.00', null, '1532430244.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('583', 'Started execution', '2018-07-24 11:04:04.243061', null, '1532430244.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('584', 'Executed', '2018-07-24 11:04:06.243061', '0.00', null, '1532430246.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('585', 'Started execution', '2018-07-24 11:04:06.243061', null, '1532430246.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('586', 'Executed', '2018-07-24 11:04:08.243061', '0.00', null, '1532430248.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('587', 'Executed', '2018-07-24 11:04:10.243061', '0.00', null, '1532430250.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('588', 'Started execution', '2018-07-24 11:04:10.243061', null, '1532430250.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('589', 'Executed', '2018-07-24 11:04:12.243061', '0.00', null, '1532430252.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('590', 'Executed', '2018-07-24 11:04:14.243061', '0.00', null, '1532430254.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('591', 'Executed', '2018-07-24 11:04:16.243061', '0.00', null, '1532430256.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('592', 'Executed', '2018-07-24 11:04:18.243061', '0.00', null, '1532430258.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('593', 'Executed', '2018-07-24 11:04:20.243061', '0.00', null, '1532430260.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('594', 'Started execution', '2018-07-24 11:04:20.243061', null, '1532430260.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('595', 'Executed', '2018-07-24 11:04:22.243061', '0.00', null, '1532430262.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('596', 'Started execution', '2018-07-24 11:04:22.243061', null, '1532430262.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('597', 'Executed', '2018-07-24 11:04:24.243061', '0.00', null, '1532430264.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('598', 'Executed', '2018-07-24 11:04:26.243061', '0.00', null, '1532430266.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('599', 'Executed', '2018-07-24 11:04:28.243061', '0.00', null, '1532430268.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('600', 'Started execution', '2018-07-24 11:04:28.243061', null, '1532430268.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('601', 'Executed', '2018-07-24 11:04:30.243061', '0.00', null, '1532430270.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('602', 'Started execution', '2018-07-24 11:04:30.243061', null, '1532430270.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('603', 'Executed', '2018-07-24 11:04:32.243061', '0.00', null, '1532430272.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('604', 'Started execution', '2018-07-24 11:04:32.243061', null, '1532430272.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('605', 'Executed', '2018-07-24 11:04:34.243061', '0.00', null, '1532430274.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('606', 'Started execution', '2018-07-24 11:04:34.243061', null, '1532430274.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('607', 'Executed', '2018-07-24 11:04:36.243061', '0.00', null, '1532430276.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('608', 'Executed', '2018-07-24 11:04:38.243061', '0.00', null, '1532430278.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('609', 'Started execution', '2018-07-24 11:04:38.243061', null, '1532430278.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('610', 'Executed', '2018-07-24 11:04:40.243061', '0.00', null, '1532430280.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('611', 'Executed', '2018-07-24 11:04:42.243061', '0.00', null, '1532430282.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('612', 'Started execution', '2018-07-24 11:04:42.243061', null, '1532430282.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('613', 'Executed', '2018-07-24 11:04:44.243061', '0.00', null, '1532430284.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('614', 'Started execution', '2018-07-24 11:04:44.243061', null, '1532430284.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('615', 'Executed', '2018-07-24 11:04:46.243061', '0.00', null, '1532430286.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('616', 'Started execution', '2018-07-24 11:04:46.243061', null, '1532430286.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('617', 'Executed', '2018-07-24 11:04:48.243061', '0.00', null, '1532430288.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('618', 'Started execution', '2018-07-24 11:04:48.243061', null, '1532430288.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('619', 'Executed', '2018-07-24 11:04:50.243061', '0.00', null, '1532430290.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('620', 'Executed', '2018-07-24 11:04:52.243061', '0.00', null, '1532430292.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('621', 'Executed', '2018-07-24 11:04:54.243061', '0.00', null, '1532430294.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('622', 'Started execution', '2018-07-24 11:04:54.243061', null, '1532430294.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('623', 'Executed', '2018-07-24 11:04:56.243061', '0.00', null, '1532430296.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('624', 'Executed', '2018-07-24 11:04:58.243061', '0.00', null, '1532430298.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('625', 'Executed', '2018-07-24 11:05:00.243061', '0.00', null, '1532430300.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('626', 'Executed', '2018-07-24 11:05:02.243061', '0.00', null, '1532430302.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('627', 'Executed', '2018-07-24 11:05:04.243061', '0.00', null, '1532430304.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('628', 'Executed', '2018-07-24 11:05:06.243061', '0.00', null, '1532430306.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('629', 'Executed', '2018-07-24 11:05:08.243061', '0.00', null, '1532430308.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('630', 'Executed', '2018-07-24 11:05:10.243061', '0.00', null, '1532430310.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('631', 'Started execution', '2018-07-24 11:05:10.243061', null, '1532430310.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('632', 'Executed', '2018-07-24 11:05:12.243061', '0.00', null, '1532430312.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('633', 'Executed', '2018-07-24 11:05:14.243061', '0.00', null, '1532430314.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('634', 'Executed', '2018-07-24 11:05:16.243061', '0.00', null, '1532430316.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('635', 'Executed', '2018-07-24 11:05:18.243061', '0.00', null, '1532430318.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('636', 'Executed', '2018-07-24 11:05:20.243061', '0.00', null, '1532430320.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('637', 'Started execution', '2018-07-24 11:05:20.243061', null, '1532430320.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('638', 'Executed', '2018-07-24 11:05:22.243061', '0.00', null, '1532430322.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('639', 'Started execution', '2018-07-24 11:05:22.243061', null, '1532430322.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('640', 'Executed', '2018-07-24 11:05:24.243061', '0.00', null, '1532430324.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('641', 'Executed', '2018-07-24 11:05:26.243061', '0.00', null, '1532430326.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('642', 'Executed', '2018-07-24 11:05:28.243061', '0.00', null, '1532430328.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('643', 'Executed', '2018-07-24 11:05:30.243061', '0.00', null, '1532430330.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('644', 'Started execution', '2018-07-24 11:05:30.243061', null, '1532430330.33', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('645', 'Executed', '2018-07-24 11:05:32.243061', '0.00', null, '1532430332.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('646', 'Started execution', '2018-07-24 11:05:32.243061', null, '1532430332.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('647', 'Executed', '2018-07-24 11:05:34.243061', '0.00', null, '1532430334.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('648', 'Started execution', '2018-07-24 11:05:34.243061', null, '1532430334.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('649', 'Executed', '2018-07-24 11:05:36.243061', '0.00', null, '1532430336.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('650', 'Executed', '2018-07-24 11:05:38.243061', '0.00', null, '1532430338.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('651', 'Executed', '2018-07-24 11:05:40.243061', '0.00', null, '1532430340.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('652', 'Executed', '2018-07-24 11:05:42.243061', '0.00', null, '1532430342.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('653', 'Executed', '2018-07-24 11:05:44.243061', '0.00', null, '1532430344.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('654', 'Started execution', '2018-07-24 11:05:44.243061', null, '1532430344.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('655', 'Executed', '2018-07-24 11:05:46.243061', '0.00', null, '1532430346.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('656', 'Started execution', '2018-07-24 11:05:46.243061', null, '1532430346.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('657', 'Executed', '2018-07-24 11:05:48.243061', '0.00', null, '1532430348.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('658', 'Executed', '2018-07-24 11:05:50.243061', '0.00', null, '1532430350.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('659', 'Executed', '2018-07-24 11:05:52.243061', '0.00', null, '1532430352.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('660', 'Executed', '2018-07-24 11:05:54.243061', '0.00', null, '1532430354.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('661', 'Started execution', '2018-07-24 11:05:54.243061', null, '1532430354.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('662', 'Executed', '2018-07-24 11:05:56.243061', '0.00', null, '1532430356.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('663', 'Executed', '2018-07-24 11:05:58.243061', '0.00', null, '1532430358.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('664', 'Executed', '2018-07-24 11:06:00.243061', '0.00', null, '1532430360.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('665', 'Started execution', '2018-07-24 11:06:00.243061', null, '1532430360.61', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('666', 'Executed', '2018-07-24 11:06:02.243061', '0.00', null, '1532430362.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('667', 'Executed', '2018-07-24 11:06:04.243061', '0.00', null, '1532430364.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('668', 'Started execution', '2018-07-24 11:06:04.243061', null, '1532430364.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('669', 'Executed', '2018-07-24 11:06:06.243061', '0.00', null, '1532430366.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('670', 'Started execution', '2018-07-24 11:06:06.243061', null, '1532430366.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('671', 'Executed', '2018-07-24 11:06:08.243061', '0.00', null, '1532430368.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('672', 'Executed', '2018-07-24 11:06:10.243061', '0.00', null, '1532430370.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('673', 'Executed', '2018-07-24 11:06:12.243061', '0.00', null, '1532430372.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('674', 'Started execution', '2018-07-24 11:06:12.243061', null, '1532430372.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('675', 'Executed', '2018-07-24 11:06:14.243061', '0.00', null, '1532430374.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('676', 'Executed', '2018-07-24 11:06:16.243061', '0.00', null, '1532430376.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('677', 'Executed', '2018-07-24 11:06:18.243061', '0.00', null, '1532430378.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('678', 'Executed', '2018-07-24 11:06:20.243061', '0.00', null, '1532430380.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('679', 'Executed', '2018-07-24 11:06:22.243061', '0.00', null, '1532430382.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('680', 'Started execution', '2018-07-24 11:06:22.243061', null, '1532430382.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('681', 'Executed', '2018-07-24 11:06:24.243061', '0.00', null, '1532430384.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('682', 'Started execution', '2018-07-24 11:06:24.243061', null, '1532430384.53', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('683', 'Executed', '2018-07-24 11:06:26.243061', '0.00', null, '1532430386.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('684', 'Started execution', '2018-07-24 11:06:26.243061', null, '1532430386.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('685', 'Executed', '2018-07-24 11:06:28.243061', '0.00', null, '1532430388.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('686', 'Started execution', '2018-07-24 11:06:28.243061', null, '1532430388.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('687', 'Executed', '2018-07-24 11:06:30.243061', '0.00', null, '1532430390.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('688', 'Started execution', '2018-07-24 11:06:32.243061', null, '1532430392.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('689', 'Executed', '2018-07-24 11:06:34.243061', '0.00', null, '1532430394.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('690', 'Started execution', '2018-07-24 11:06:34.243061', null, '1532430394.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('691', 'Executed', '2018-07-24 11:06:36.243061', '0.00', null, '1532430396.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('692', 'Started execution', '2018-07-24 11:06:36.243061', null, '1532430396.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('693', 'Executed', '2018-07-24 11:06:38.243061', '0.00', null, '1532430398.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('694', 'Started execution', '2018-07-24 11:06:38.243061', null, '1532430398.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('695', 'Executed', '2018-07-24 11:06:40.243061', '0.00', null, '1532430400.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('696', 'Executed', '2018-07-24 11:06:42.243061', '0.00', null, '1532430402.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('697', 'Executed', '2018-07-24 11:06:44.243061', '0.00', null, '1532430404.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('698', 'Executed', '2018-07-24 11:06:46.243061', '0.00', null, '1532430406.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('699', 'Started execution', '2018-07-24 11:06:46.243061', null, '1532430406.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('700', 'Executed', '2018-07-24 11:06:48.243061', '0.00', null, '1532430408.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('701', 'Executed', '2018-07-24 11:06:50.243061', '0.00', null, '1532430410.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('702', 'Started execution', '2018-07-24 11:06:50.243061', null, '1532430410.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('703', 'Executed', '2018-07-24 11:06:52.243061', '0.00', null, '1532430412.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('704', 'Executed', '2018-07-24 11:06:54.243061', '0.00', null, '1532430414.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('705', 'Executed', '2018-07-24 11:06:56.243061', '0.00', null, '1532430416.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('706', 'Executed', '2018-07-24 11:06:58.243061', '0.00', null, '1532430418.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('707', 'Executed', '2018-07-24 11:07:00.243061', '0.00', null, '1532430420.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('708', 'Started execution', '2018-07-24 11:07:00.243061', null, '1532430420.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('709', 'Executed', '2018-07-24 11:07:02.243061', '0.00', null, '1532430422.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('710', 'Executed', '2018-07-24 11:07:04.243061', '0.00', null, '1532430424.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('711', 'Started execution', '2018-07-24 11:07:04.243061', null, '1532430424.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('712', 'Executed', '2018-07-24 11:07:06.243061', '0.00', null, '1532430426.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('713', 'Executed', '2018-07-24 11:07:08.243061', '0.00', null, '1532430428.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('714', 'Started execution', '2018-07-24 11:07:08.243061', null, '1532430428.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('715', 'Executed', '2018-07-24 11:07:10.243061', '0.00', null, '1532430430.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('716', 'Started execution', '2018-07-24 11:07:10.243061', null, '1532430430.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('717', 'Executed', '2018-07-24 11:07:12.243061', '0.00', null, '1532430432.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('718', 'Executed', '2018-07-24 11:07:14.243061', '0.00', null, '1532430434.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('719', 'Executed', '2018-07-24 11:07:16.243061', '0.00', null, '1532430436.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('720', 'Started execution', '2018-07-24 11:07:16.243061', null, '1532430436.35', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('721', 'Executed', '2018-07-24 11:07:18.243061', '0.00', null, '1532430438.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('722', 'Started execution', '2018-07-24 11:07:18.243061', null, '1532430438.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('723', 'Executed', '2018-07-24 11:07:20.243061', '0.00', null, '1532430440.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('724', 'Started execution', '2018-07-24 11:07:20.243061', null, '1532430440.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('725', 'Executed', '2018-07-24 11:07:22.243061', '0.00', null, '1532430442.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('726', 'Executed', '2018-07-24 11:07:24.243061', '0.00', null, '1532430444.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('727', 'Executed', '2018-07-24 11:07:26.243061', '0.00', null, '1532430446.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('728', 'Executed', '2018-07-24 11:07:28.243061', '0.00', null, '1532430448.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('729', 'Executed', '2018-07-24 11:07:30.243061', '0.00', null, '1532430450.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('730', 'Executed', '2018-07-24 11:07:32.243061', '0.00', null, '1532430452.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('731', 'Started execution', '2018-07-24 11:07:32.243061', null, '1532430452.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('732', 'Executed', '2018-07-24 11:07:34.243061', '0.00', null, '1532430454.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('733', 'Executed', '2018-07-24 11:07:36.243061', '0.00', null, '1532430456.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('734', 'Executed', '2018-07-24 11:07:38.243061', '0.00', null, '1532430458.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('735', 'Started execution', '2018-07-24 11:07:38.243061', null, '1532430458.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('736', 'Executed', '2018-07-24 11:07:40.243061', '0.00', null, '1532430460.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('737', 'Executed', '2018-07-24 11:07:42.243061', '0.00', null, '1532430462.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('738', 'Executed', '2018-07-24 11:07:44.243061', '0.00', null, '1532430464.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('739', 'Executed', '2018-07-24 11:07:46.243061', '0.00', null, '1532430466.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('740', 'Started execution', '2018-07-24 11:07:46.243061', null, '1532430466.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('741', 'Executed', '2018-07-24 11:07:48.243061', '0.00', null, '1532430468.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('742', 'Started execution', '2018-07-24 11:07:48.243061', null, '1532430468.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('743', 'Executed', '2018-07-24 11:07:50.243061', '0.00', null, '1532430470.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('744', 'Executed', '2018-07-24 11:07:52.243061', '0.00', null, '1532430472.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('745', 'Executed', '2018-07-24 11:07:54.243061', '0.00', null, '1532430474.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('746', 'Executed', '2018-07-24 11:07:56.243061', '0.00', null, '1532430476.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('747', 'Executed', '2018-07-24 11:07:58.243061', '0.00', null, '1532430478.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('748', 'Executed', '2018-07-24 11:08:00.243061', '0.00', null, '1532430480.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('749', 'Started execution', '2018-07-24 11:08:00.243061', null, '1532430480.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('750', 'Executed', '2018-07-24 11:08:02.243061', '0.00', null, '1532430482.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('751', 'Executed', '2018-07-24 11:08:04.243061', '0.00', null, '1532430484.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('752', 'Executed', '2018-07-24 11:08:06.243061', '0.00', null, '1532430486.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('753', 'Executed', '2018-07-24 11:08:08.243061', '0.00', null, '1532430488.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('754', 'Executed', '2018-07-24 11:08:10.243061', '0.00', null, '1532430490.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('755', 'Started execution', '2018-07-24 11:08:10.243061', null, '1532430490.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('756', 'Executed', '2018-07-24 11:08:12.243061', '0.00', null, '1532430492.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('757', 'Started execution', '2018-07-24 11:08:12.243061', null, '1532430492.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('758', 'Executed', '2018-07-24 11:08:14.243061', '0.00', null, '1532430494.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('759', 'Started execution', '2018-07-24 11:08:14.243061', null, '1532430494.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('760', 'Executed', '2018-07-24 11:08:16.243061', '0.00', null, '1532430496.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('761', 'Executed', '2018-07-24 11:08:18.243061', '0.00', null, '1532430498.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('762', 'Executed', '2018-07-24 11:08:20.243061', '0.00', null, '1532430500.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('763', 'Started execution', '2018-07-24 11:08:20.243061', null, '1532430500.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('764', 'Executed', '2018-07-24 11:08:22.243061', '0.00', null, '1532430502.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('765', 'Started execution', '2018-07-24 11:08:22.243061', null, '1532430502.61', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('766', 'Executed', '2018-07-24 11:08:24.243061', '0.00', null, '1532430504.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('767', 'Executed', '2018-07-24 11:08:26.243061', '0.00', null, '1532430506.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('768', 'Executed', '2018-07-24 11:08:28.243061', '0.00', null, '1532430508.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('769', 'Executed', '2018-07-24 11:08:30.243061', '0.00', null, '1532430510.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('770', 'Started execution', '2018-07-24 11:08:30.243061', null, '1532430510.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('771', 'Executed', '2018-07-24 11:08:32.243061', '0.00', null, '1532430512.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('772', 'Executed', '2018-07-24 11:08:34.243061', '0.00', null, '1532430514.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('773', 'Started execution', '2018-07-24 11:08:34.243061', null, '1532430514.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('774', 'Executed', '2018-07-24 11:08:36.243061', '0.00', null, '1532430516.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('775', 'Executed', '2018-07-24 11:08:38.243061', '0.00', null, '1532430518.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('776', 'Executed', '2018-07-24 11:08:40.243061', '0.00', null, '1532430520.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('777', 'Started execution', '2018-07-24 11:08:40.243061', null, '1532430520.52', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('778', 'Executed', '2018-07-24 11:08:42.243061', '0.00', null, '1532430522.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('779', 'Started execution', '2018-07-24 11:08:42.243061', null, '1532430522.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('780', 'Executed', '2018-07-24 11:08:44.243061', '0.00', null, '1532430524.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('781', 'Started execution', '2018-07-24 11:08:44.243061', null, '1532430524.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('782', 'Executed', '2018-07-24 11:08:46.243061', '0.00', null, '1532430526.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('783', 'Started execution', '2018-07-24 11:08:46.243061', null, '1532430526.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('784', 'Executed', '2018-07-24 11:08:48.243061', '0.00', null, '1532430528.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('785', 'Executed', '2018-07-24 11:08:50.243061', '0.00', null, '1532430530.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('786', 'Started execution', '2018-07-24 11:08:50.243061', null, '1532430530.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('787', 'Executed', '2018-07-24 11:08:52.243061', '-0.01', '1532430532.48', '1532430532.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('788', 'Executed', '2018-07-24 11:08:54.243061', '0.00', null, '1532430534.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('789', 'Executed', '2018-07-24 11:08:56.243061', '0.00', null, '1532430536.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('790', 'Executed', '2018-07-24 11:08:58.243061', '0.00', null, '1532430538.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('791', 'Executed', '2018-07-24 11:09:00.243061', '0.00', null, '1532430540.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('792', 'Executed', '2018-07-24 11:09:02.243061', '0.00', null, '1532430542.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('793', 'Started execution', '2018-07-24 11:09:02.243061', null, '1532430542.58', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('794', 'Executed', '2018-07-24 11:09:04.243061', '0.00', null, '1532430544.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('795', 'Executed', '2018-07-24 11:09:06.243061', '0.00', null, '1532430546.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('796', 'Started execution', '2018-07-24 11:09:06.243061', null, '1532430546.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('797', 'Executed', '2018-07-24 11:09:08.243061', '0.00', null, '1532430548.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('798', 'Executed', '2018-07-24 11:09:10.243061', '0.00', null, '1532430550.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('799', 'Executed', '2018-07-24 11:09:12.243061', '0.00', null, '1532430552.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('800', 'Started execution', '2018-07-24 11:09:12.243061', null, '1532430552.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('801', 'Executed', '2018-07-24 11:09:14.243061', '0.00', null, '1532430554.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('802', 'Executed', '2018-07-24 11:09:16.243061', '0.00', null, '1532430556.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('803', 'Executed', '2018-07-24 11:09:18.243061', '0.00', null, '1532430558.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('804', 'Executed', '2018-07-24 11:09:20.243061', '0.00', null, '1532430560.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('805', 'Executed', '2018-07-24 11:09:22.243061', '0.00', null, '1532430562.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('806', 'Started execution', '2018-07-24 11:09:22.243061', null, '1532430562.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('807', 'Executed', '2018-07-24 11:09:24.243061', '0.00', null, '1532430564.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('808', 'Executed', '2018-07-24 11:09:26.243061', '0.00', null, '1532430566.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('809', 'Started execution', '2018-07-24 11:09:26.243061', null, '1532430566.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('810', 'Executed', '2018-07-24 11:09:28.243061', '0.00', null, '1532430568.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('811', 'Executed', '2018-07-24 11:09:30.243061', '0.00', null, '1532430570.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('812', 'Executed', '2018-07-24 11:09:32.243061', '0.00', null, '1532430572.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('813', 'Started execution', '2018-07-24 11:09:32.243061', null, '1532430572.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('814', 'Executed', '2018-07-24 11:09:34.243061', '0.00', null, '1532430574.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('815', 'Executed', '2018-07-24 11:09:36.243061', '0.00', null, '1532430576.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('816', 'Started execution', '2018-07-24 11:09:36.243061', null, '1532430576.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('817', 'Executed', '2018-07-24 11:09:38.243061', '0.00', null, '1532430578.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('818', 'Started execution', '2018-07-24 11:09:38.243061', null, '1532430578.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('819', 'Executed', '2018-07-24 11:09:40.243061', '0.00', null, '1532430580.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('820', 'Executed', '2018-07-24 11:09:42.243061', '0.00', null, '1532430582.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('821', 'Started execution', '2018-07-24 11:09:42.243061', null, '1532430582.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('822', 'Executed', '2018-07-24 11:09:44.243061', '0.00', null, '1532430584.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('823', 'Executed', '2018-07-24 11:09:46.243061', '0.00', null, '1532430586.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('824', 'Executed', '2018-07-24 11:09:48.243061', '0.00', null, '1532430588.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('825', 'Executed', '2018-07-24 11:09:50.243061', '0.00', null, '1532430590.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('826', 'Started execution', '2018-07-24 11:09:50.243061', null, '1532430590.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('827', 'Executed', '2018-07-24 11:09:52.243061', '0.00', null, '1532430592.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('828', 'Started execution', '2018-07-24 11:09:52.243061', null, '1532430592.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('829', 'Executed', '2018-07-24 11:09:54.243061', '0.00', null, '1532430594.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('830', 'Executed', '2018-07-24 11:09:56.243061', '0.00', null, '1532430596.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('831', 'Executed', '2018-07-24 11:09:58.243061', '0.00', null, '1532430598.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('832', 'Executed', '2018-07-24 11:10:00.243061', '0.00', null, '1532430600.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('833', 'Executed', '2018-07-24 11:10:02.243061', '0.00', null, '1532430602.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('834', 'Executed', '2018-07-24 11:10:04.243061', '0.00', null, '1532430604.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('835', 'Started execution', '2018-07-24 11:10:04.243061', null, '1532430604.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('836', 'Executed', '2018-07-24 11:10:06.243061', '0.00', null, '1532430606.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('837', 'Executed', '2018-07-24 11:10:08.243061', '0.00', null, '1532430608.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('838', 'Executed', '2018-07-24 11:10:10.243061', '0.00', null, '1532430610.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('839', 'Executed', '2018-07-24 11:10:12.243061', '0.00', null, '1532430612.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('840', 'Executed', '2018-07-24 11:10:14.243061', '0.00', null, '1532430614.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('841', 'Executed', '2018-07-24 11:10:16.243061', '0.00', null, '1532430616.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('842', 'Started execution', '2018-07-24 11:10:16.243061', null, '1532430616.55', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('843', 'Executed', '2018-07-24 11:10:18.243061', '0.00', null, '1532430618.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('844', 'Started execution', '2018-07-24 11:10:18.243061', null, '1532430618.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('845', 'Executed', '2018-07-24 11:10:20.243061', '0.00', null, '1532430620.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('846', 'Started execution', '2018-07-24 11:10:20.243061', null, '1532430620.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('847', 'Executed', '2018-07-24 11:10:22.243061', '0.00', null, '1532430622.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('848', 'Started execution', '2018-07-24 11:10:22.243061', null, '1532430622.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('849', 'Executed', '2018-07-24 11:10:24.243061', '0.00', null, '1532430624.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('850', 'Started execution', '2018-07-24 11:10:24.243061', null, '1532430624.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('851', 'Executed', '2018-07-24 11:10:26.243061', '0.00', null, '1532430626.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('852', 'Started execution', '2018-07-24 11:10:26.243061', null, '1532430626.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('853', 'Executed', '2018-07-24 11:10:28.243061', '0.00', null, '1532430628.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('854', 'Started execution', '2018-07-24 11:10:28.243061', null, '1532430628.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('855', 'Executed', '2018-07-24 11:10:30.243061', '0.00', null, '1532430630.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('856', 'Executed', '2018-07-24 11:10:32.243061', '0.00', null, '1532430632.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('857', 'Executed', '2018-07-24 11:10:34.243061', '0.00', null, '1532430634.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('858', 'Executed', '2018-07-24 11:10:36.243061', '0.00', null, '1532430636.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('859', 'Executed', '2018-07-24 11:10:38.243061', '0.00', null, '1532430638.67', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('860', 'Executed', '2018-07-24 11:10:40.243061', '0.00', null, '1532430640.76', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('861', 'Executed', '2018-07-24 11:10:42.243061', '0.00', null, '1532430642.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('862', 'Started execution', '2018-07-24 11:10:42.243061', null, '1532430642.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('863', 'Executed', '2018-07-24 11:10:44.243061', '0.00', null, '1532430644.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('864', 'Started execution', '2018-07-24 11:10:44.243061', null, '1532430644.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('865', 'Executed', '2018-07-24 11:10:46.243061', '0.00', null, '1532430646.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('866', 'Started execution', '2018-07-24 11:10:46.243061', null, '1532430646.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('867', 'Executed', '2018-07-24 11:10:48.243061', '0.00', null, '1532430648.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('868', 'Executed', '2018-07-24 11:10:50.243061', '0.00', null, '1532430650.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('869', 'Started execution', '2018-07-24 11:10:50.243061', null, '1532430650.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('870', 'Executed', '2018-07-24 11:10:52.243061', '0.00', null, '1532430652.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('871', 'Started execution', '2018-07-24 11:10:52.243061', null, '1532430652.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('872', 'Executed', '2018-07-24 11:10:54.243061', '0.00', null, '1532430654.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('873', 'Executed', '2018-07-24 11:10:56.243061', '0.00', null, '1532430656.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('874', 'Executed', '2018-07-24 11:10:58.243061', '0.00', null, '1532430658.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('875', 'Executed', '2018-07-24 11:11:00.243061', '0.00', null, '1532430660.68', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('876', 'Executed', '2018-07-24 11:11:02.243061', '0.00', null, '1532430662.71', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('877', 'Executed', '2018-07-24 11:11:04.243061', '0.00', null, '1532430664.71', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('878', 'Executed', '2018-07-24 11:11:06.243061', '0.00', null, '1532430666.67', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('879', 'Started execution', '2018-07-24 11:11:08.243061', null, '1532430668.84', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('880', 'Executed', '2018-07-24 11:11:10.243061', '0.00', null, '1532430670.84', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('881', 'Executed', '2018-07-24 11:11:12.243061', '0.00', null, '1532430672.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('882', 'Started execution', '2018-07-24 11:11:12.243061', null, '1532430672.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('883', 'Executed', '2018-07-24 11:11:14.243061', '0.00', null, '1532430674.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('884', 'Executed', '2018-07-24 11:11:16.243061', '0.00', null, '1532430676.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('885', 'Started execution', '2018-07-24 11:11:16.243061', null, '1532430676.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('886', 'Executed', '2018-07-24 11:11:18.243061', '0.00', null, '1532430678.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('887', 'Started execution', '2018-07-24 11:11:18.243061', null, '1532430678.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('888', 'Executed', '2018-07-24 11:11:20.243061', '0.00', null, '1532430680.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('889', 'Started execution', '2018-07-24 11:11:20.243061', null, '1532430680.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('890', 'Executed', '2018-07-24 11:11:22.243061', '0.00', null, '1532430682.67', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('891', 'Started execution', '2018-07-24 11:11:22.243061', null, '1532430682.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('892', 'Executed', '2018-07-24 11:11:24.243061', '0.00', null, '1532430684.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('893', 'Started execution', '2018-07-24 11:11:24.243061', null, '1532430684.69', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('894', 'Executed', '2018-07-24 11:11:26.243061', '0.00', null, '1532430686.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('895', 'Started execution', '2018-07-24 11:11:26.243061', null, '1532430686.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('896', 'Executed', '2018-07-24 11:11:28.243061', '0.00', null, '1532430688.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('897', 'Started execution', '2018-07-24 11:11:28.243061', null, '1532430688.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('898', 'Executed', '2018-07-24 11:11:30.243061', '0.00', null, '1532430690.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('899', 'Executed', '2018-07-24 11:11:32.243061', '0.00', null, '1532430692.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('900', 'Executed', '2018-07-24 11:11:34.243061', '0.00', null, '1532430694.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('901', 'Started execution', '2018-07-24 11:11:34.243061', null, '1532430694.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('902', 'Executed', '2018-07-24 11:11:36.243061', '0.00', null, '1532430696.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('903', 'Executed', '2018-07-24 11:11:38.243061', '0.00', null, '1532430698.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('904', 'Started execution', '2018-07-24 11:11:38.243061', null, '1532430698.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('905', 'Executed', '2018-07-24 11:11:40.243061', '0.00', null, '1532430700.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('906', 'Executed', '2018-07-24 11:11:42.243061', '0.00', null, '1532430702.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('907', 'Executed', '2018-07-24 11:11:44.243061', '0.00', null, '1532430704.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('908', 'Executed', '2018-07-24 11:11:46.243061', '0.00', null, '1532430706.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('909', 'Executed', '2018-07-24 11:11:48.243061', '0.00', null, '1532430708.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('910', 'Started execution', '2018-07-24 11:11:48.243061', null, '1532430708.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('911', 'Executed', '2018-07-24 11:11:50.243061', '0.00', null, '1532430710.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('912', 'Executed', '2018-07-24 11:11:52.243061', '0.00', null, '1532430712.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('913', 'Executed', '2018-07-24 11:11:54.243061', '0.00', null, '1532430714.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('914', 'Started execution', '2018-07-24 11:11:56.243061', null, '1532430716.61', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('915', 'Executed', '2018-07-24 11:11:58.243061', '0.00', null, '1532430718.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('916', 'Executed', '2018-07-24 11:12:00.243061', '0.00', null, '1532430720.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('917', 'Executed', '2018-07-24 11:12:02.243061', '0.00', null, '1532430722.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('918', 'Executed', '2018-07-24 11:12:04.243061', '0.00', null, '1532430724.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('919', 'Executed', '2018-07-24 11:12:06.243061', '0.00', null, '1532430726.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('920', 'Executed', '2018-07-24 11:12:08.243061', '0.00', null, '1532430728.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('921', 'Executed', '2018-07-24 11:12:10.243061', '0.00', null, '1532430730.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('922', 'Executed', '2018-07-24 11:12:12.243061', '0.00', null, '1532430732.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('923', 'Executed', '2018-07-24 11:12:14.243061', '0.00', null, '1532430734.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('924', 'Started execution', '2018-07-24 11:12:14.243061', null, '1532430734.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('925', 'Executed', '2018-07-24 11:12:16.243061', '0.00', null, '1532430736.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('926', 'Started execution', '2018-07-24 11:12:16.243061', null, '1532430736.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('927', 'Executed', '2018-07-24 11:12:18.243061', '0.00', null, '1532430738.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('928', 'Started execution', '2018-07-24 11:12:18.243061', null, '1532430738.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('929', 'Executed', '2018-07-24 11:12:20.243061', '0.00', null, '1532430740.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('930', 'Started execution', '2018-07-24 11:12:20.243061', null, '1532430740.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('931', 'Executed', '2018-07-24 11:12:22.243061', '0.00', null, '1532430742.70', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('932', 'Started execution', '2018-07-24 11:12:22.243061', null, '1532430742.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('933', 'Executed', '2018-07-24 11:12:24.243061', '0.00', null, '1532430744.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('934', 'Started execution', '2018-07-24 11:12:24.243061', null, '1532430744.56', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('935', 'Executed', '2018-07-24 11:12:26.243061', '0.00', null, '1532430746.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('936', 'Started execution', '2018-07-24 11:12:26.243061', null, '1532430746.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('937', 'Executed', '2018-07-24 11:12:28.243061', '0.00', null, '1532430748.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('938', 'Started execution', '2018-07-24 11:12:28.243061', null, '1532430748.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('939', 'Executed', '2018-07-24 11:12:30.243061', '0.00', null, '1532430750.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('940', 'Executed', '2018-07-24 11:12:32.243061', '0.00', null, '1532430752.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('941', 'Started execution', '2018-07-24 11:12:32.243061', null, '1532430752.52', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('942', 'Executed', '2018-07-24 11:12:34.243061', '0.00', null, '1532430754.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('943', 'Executed', '2018-07-24 11:12:36.243061', '0.00', null, '1532430756.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('944', 'Executed', '2018-07-24 11:12:38.243061', '0.00', null, '1532430758.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('945', 'Started execution', '2018-07-24 11:12:38.243061', null, '1532430758.58', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('946', 'Executed', '2018-07-24 11:12:40.243061', '0.00', null, '1532430760.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('947', 'Started execution', '2018-07-24 11:12:40.243061', null, '1532430760.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('948', 'Executed', '2018-07-24 11:12:42.243061', '0.00', null, '1532430762.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('949', 'Started execution', '2018-07-24 11:12:42.243061', null, '1532430762.52', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('950', 'Executed', '2018-07-24 11:12:44.243061', '0.00', null, '1532430764.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('951', 'Started execution', '2018-07-24 11:12:44.243061', null, '1532430764.55', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('952', 'Executed', '2018-07-24 11:12:46.243061', '0.00', null, '1532430766.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('953', 'Executed', '2018-07-24 11:12:48.243061', '0.00', null, '1532430768.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('954', 'Executed', '2018-07-24 11:12:50.243061', '0.00', null, '1532430770.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('955', 'Started execution', '2018-07-24 11:12:50.243061', null, '1532430770.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('956', 'Executed', '2018-07-24 11:12:52.243061', '0.00', null, '1532430772.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('957', 'Executed', '2018-07-24 11:12:54.243061', '0.00', null, '1532430774.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('958', 'Executed', '2018-07-24 11:12:56.243061', '0.00', null, '1532430776.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('959', 'Executed', '2018-07-24 11:12:58.243061', '0.00', null, '1532430778.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('960', 'Started execution', '2018-07-24 11:12:58.243061', null, '1532430778.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('961', 'Executed', '2018-07-24 11:13:00.243061', '0.00', null, '1532430780.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('962', 'Started execution', '2018-07-24 11:13:00.243061', null, '1532430780.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('963', 'Executed', '2018-07-24 11:13:02.243061', '0.00', null, '1532430782.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('964', 'Executed', '2018-07-24 11:13:04.243061', '0.00', null, '1532430784.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('965', 'Executed', '2018-07-24 11:13:06.243061', '0.00', null, '1532430786.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('966', 'Executed', '2018-07-24 11:13:08.243061', '0.00', null, '1532430788.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('967', 'Executed', '2018-07-24 11:13:10.243061', '0.00', null, '1532430790.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('968', 'Executed', '2018-07-24 11:13:12.243061', '0.00', null, '1532430792.37', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('969', 'Executed', '2018-07-24 11:13:14.243061', '0.00', null, '1532430794.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('970', 'Executed', '2018-07-24 11:13:16.243061', '0.00', null, '1532430796.72', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('971', 'Started execution', '2018-07-24 11:13:16.243061', null, '1532430796.65', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('972', 'Executed', '2018-07-24 11:13:18.243061', '0.00', null, '1532430798.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('973', 'Started execution', '2018-07-24 11:13:18.243061', null, '1532430798.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('974', 'Executed', '2018-07-24 11:13:20.243061', '0.00', null, '1532430800.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('975', 'Started execution', '2018-07-24 11:13:20.243061', null, '1532430800.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('976', 'Executed', '2018-07-24 11:13:22.243061', '0.00', null, '1532430802.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('977', 'Started execution', '2018-07-24 11:13:22.243061', null, '1532430802.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('978', 'Executed', '2018-07-24 11:13:24.243061', '0.00', null, '1532430804.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('979', 'Started execution', '2018-07-24 11:13:24.243061', null, '1532430804.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('980', 'Executed', '2018-07-24 11:13:26.243061', '0.00', null, '1532430806.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('981', 'Started execution', '2018-07-24 11:13:26.243061', null, '1532430806.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('982', 'Executed', '2018-07-24 11:13:28.243061', '0.00', null, '1532430808.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('983', 'Started execution', '2018-07-24 11:13:28.243061', null, '1532430808.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('984', 'Executed', '2018-07-24 11:13:30.243061', '0.00', null, '1532430810.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('985', 'Executed', '2018-07-24 11:13:32.243061', '0.00', null, '1532430812.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('986', 'Executed', '2018-07-24 11:13:34.243061', '0.00', null, '1532430814.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('987', 'Executed', '2018-07-24 11:13:36.243061', '0.00', null, '1532430816.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('988', 'Started execution', '2018-07-24 11:13:36.243061', null, '1532430816.61', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('989', 'Executed', '2018-07-24 11:13:38.243061', '0.00', null, '1532430818.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('990', 'Executed', '2018-07-24 11:13:40.243061', '0.00', null, '1532430820.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('991', 'Started execution', '2018-07-24 11:13:40.243061', null, '1532430820.71', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('992', 'Started execution', '2018-07-24 11:13:42.243061', null, '1532430822.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('993', 'Executed', '2018-07-24 11:13:44.243061', '0.00', null, '1532430824.77', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('994', 'Executed', '2018-07-24 11:13:46.243061', '0.00', null, '1532430826.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('995', 'Started execution', '2018-07-24 11:13:46.243061', null, '1532430826.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('996', 'Executed', '2018-07-24 11:13:48.243061', '0.00', null, '1532430828.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('997', 'Started execution', '2018-07-24 11:13:48.243061', null, '1532430828.56', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('998', 'Executed', '2018-07-24 11:13:50.243061', '0.00', null, '1532430830.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('999', 'Executed', '2018-07-24 11:13:52.243061', '0.00', null, '1532430832.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1000', 'Executed', '2018-07-24 11:13:54.243061', '0.00', null, '1532430834.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1001', 'Executed', '2018-07-24 11:13:56.243061', '0.00', null, '1532430836.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1002', 'Executed', '2018-07-24 11:13:58.243061', '0.00', null, '1532430838.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1003', 'Started execution', '2018-07-24 11:13:58.243061', null, '1532430838.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1004', 'Executed', '2018-07-24 11:14:00.243061', '0.00', null, '1532430840.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1005', 'Started execution', '2018-07-24 11:14:00.243061', null, '1532430840.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1006', 'Executed', '2018-07-24 11:14:02.243061', '0.00', null, '1532430842.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1007', 'Executed', '2018-07-24 11:14:04.243061', '0.00', null, '1532430844.67', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1008', 'Executed', '2018-07-24 11:14:06.243061', '0.00', null, '1532430846.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1009', 'Started execution', '2018-07-24 11:14:06.243061', null, '1532430846.62', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1010', 'Executed', '2018-07-24 11:14:08.243061', '0.00', null, '1532430848.79', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1011', 'Started execution', '2018-07-24 11:14:08.243061', null, '1532430848.70', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1012', 'Executed', '2018-07-24 11:14:10.243061', '0.00', null, '1532430850.79', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1013', 'Executed', '2018-07-24 11:14:12.243061', '0.00', null, '1532430852.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1014', 'Started execution', '2018-07-24 11:14:12.243061', null, '1532430852.53', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1015', 'Executed', '2018-07-24 11:14:14.243061', '0.00', null, '1532430854.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1016', 'Started execution', '2018-07-24 11:14:14.243061', null, '1532430854.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1017', 'Executed', '2018-07-24 11:14:16.243061', '0.00', null, '1532430856.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1018', 'Executed', '2018-07-24 11:14:18.243061', '0.00', null, '1532430858.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1019', 'Executed', '2018-07-24 11:14:20.243061', '0.00', null, '1532430860.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1020', 'Started execution', '2018-07-24 11:14:20.243061', null, '1532430860.60', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1021', 'Executed', '2018-07-24 11:14:22.243061', '0.00', null, '1532430862.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1022', 'Started execution', '2018-07-24 11:14:22.243061', null, '1532430862.53', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1023', 'Executed', '2018-07-24 11:14:24.243061', '0.00', null, '1532430864.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1024', 'Executed', '2018-07-24 11:14:26.243061', '0.00', null, '1532430866.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1025', 'Executed', '2018-07-24 11:14:28.243061', '0.00', null, '1532430868.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1026', 'Executed', '2018-07-24 11:14:30.243061', '0.00', null, '1532430870.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1027', 'Executed', '2018-07-24 11:14:32.243061', '0.00', null, '1532430872.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1028', 'Executed', '2018-07-24 11:14:34.243061', '0.00', null, '1532430874.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1029', 'Started execution', '2018-07-24 11:14:34.243061', null, '1532430874.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1030', 'Executed', '2018-07-24 11:14:36.243061', '0.00', null, '1532430876.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1031', 'Started execution', '2018-07-24 11:14:36.243061', null, '1532430876.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1032', 'Executed', '2018-07-24 11:14:38.243061', '0.00', null, '1532430878.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1033', 'Started execution', '2018-07-24 11:14:38.243061', null, '1532430878.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1034', 'Executed', '2018-07-24 11:14:40.243061', '0.00', null, '1532430880.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1035', 'Started execution', '2018-07-24 11:14:40.243061', null, '1532430880.57', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1036', 'Executed', '2018-07-24 11:14:42.243061', '0.00', null, '1532430882.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1037', 'Executed', '2018-07-24 11:14:44.243061', '0.00', null, '1532430884.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1038', 'Executed', '2018-07-24 11:14:46.243061', '0.00', null, '1532430886.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1039', 'Executed', '2018-07-24 11:14:48.243061', '0.00', null, '1532430888.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1040', 'Executed', '2018-07-24 11:14:50.243061', '0.00', null, '1532430890.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1041', 'Executed', '2018-07-24 11:14:52.243061', '0.00', null, '1532430892.72', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1042', 'Executed', '2018-07-24 11:14:54.243061', '0.00', null, '1532430894.67', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1043', 'Started execution', '2018-07-24 11:14:54.243061', null, '1532430894.63', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1044', 'Executed', '2018-07-24 11:14:56.243061', '0.00', null, '1532430896.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1045', 'Started execution', '2018-07-24 11:14:56.243061', null, '1532430896.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1046', 'Executed', '2018-07-24 11:14:58.243061', '0.00', null, '1532430898.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1047', 'Started execution', '2018-07-24 11:14:58.243061', null, '1532430898.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1048', 'Executed', '2018-07-24 11:15:00.243061', '0.00', null, '1532430900.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1049', 'Executed', '2018-07-24 11:15:02.243061', '0.00', null, '1532430902.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1050', 'Executed', '2018-07-24 11:15:04.243061', '0.00', null, '1532430904.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1051', 'Executed', '2018-07-24 11:15:06.243061', '0.00', null, '1532430906.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1052', 'Executed', '2018-07-24 11:15:08.243061', '0.00', null, '1532430908.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1053', 'Started execution', '2018-07-24 11:15:08.243061', null, '1532430908.59', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1054', 'Executed', '2018-07-24 11:15:10.243061', '0.00', null, '1532430910.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1055', 'Started execution', '2018-07-24 11:15:12.243061', null, '1532430912.55', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1056', 'Executed', '2018-07-24 11:15:14.243061', '0.00', null, '1532430914.80', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1057', 'Started execution', '2018-07-24 11:15:14.243061', null, '1532430914.75', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1058', 'Executed', '2018-07-24 11:15:16.243061', '0.00', null, '1532430916.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1059', 'Started execution', '2018-07-24 11:15:16.243061', null, '1532430916.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1060', 'Executed', '2018-07-24 11:15:18.243061', '0.00', null, '1532430918.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1061', 'Executed', '2018-07-24 11:15:20.243061', '0.00', null, '1532430920.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1062', 'Executed', '2018-07-24 11:15:22.243061', '0.00', null, '1532430922.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1063', 'Executed', '2018-07-24 11:15:24.243061', '0.00', null, '1532430924.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1064', 'Executed', '2018-07-24 11:15:26.243061', '0.00', null, '1532430926.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1065', 'Executed', '2018-07-24 11:15:28.243061', '0.00', null, '1532430928.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1066', 'Started execution', '2018-07-24 11:15:28.243061', null, '1532430928.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1067', 'Executed', '2018-07-24 11:15:30.243061', '0.00', null, '1532430930.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1068', 'Executed', '2018-07-24 11:15:32.243061', '0.00', null, '1532430932.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1069', 'Started execution', '2018-07-24 11:15:32.243061', null, '1532430932.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1070', 'Executed', '2018-07-24 11:15:34.243061', '0.00', null, '1532430934.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1071', 'Executed', '2018-07-24 11:15:36.243061', '0.00', null, '1532430936.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1072', 'Executed', '2018-07-24 11:15:38.243061', '0.00', null, '1532430938.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1073', 'Executed', '2018-07-24 11:15:40.243061', '0.00', null, '1532430940.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1074', 'Executed', '2018-07-24 11:15:42.243061', '0.00', null, '1532430942.70', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1075', 'Executed', '2018-07-24 11:15:44.243061', '0.00', null, '1532430944.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1076', 'Started execution', '2018-07-24 11:15:44.243061', null, '1532430944.58', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1077', 'Executed', '2018-07-24 11:15:46.243061', '0.00', null, '1532430946.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1078', 'Executed', '2018-07-24 11:15:48.243061', '0.00', null, '1532430948.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1079', 'Executed', '2018-07-24 11:15:50.243061', '0.00', null, '1532430950.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1080', 'Executed', '2018-07-24 11:15:52.243061', '0.00', null, '1532430952.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1081', 'Executed', '2018-07-24 11:15:54.243061', '0.00', null, '1532430954.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1082', 'Executed', '2018-07-24 11:15:56.243061', '0.00', null, '1532430956.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1083', 'Started execution', '2018-07-24 11:15:56.243061', null, '1532430956.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1084', 'Executed', '2018-07-24 11:15:58.243061', '0.00', null, '1532430958.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1085', 'Executed', '2018-07-24 11:16:00.243061', '0.00', null, '1532430960.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1086', 'Executed', '2018-07-24 11:16:02.243061', '0.00', null, '1532430962.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1087', 'Executed', '2018-07-24 11:16:04.243061', '0.00', null, '1532430964.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1088', 'Executed', '2018-07-24 11:16:06.243061', '0.00', null, '1532430966.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1089', 'Executed', '2018-07-24 11:16:08.243061', '0.00', null, '1532430968.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1090', 'Executed', '2018-07-24 11:16:10.243061', '0.00', null, '1532430970.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1091', 'Executed', '2018-07-24 11:16:12.243061', '0.00', null, '1532430972.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1092', 'Executed', '2018-07-24 11:16:14.243061', '0.00', null, '1532430974.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1093', 'Executed', '2018-07-24 11:16:16.243061', '0.00', null, '1532430976.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1094', 'Started execution', '2018-07-24 11:16:16.243061', null, '1532430976.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1095', 'Executed', '2018-07-24 11:16:18.243061', '0.00', null, '1532430978.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1096', 'Started execution', '2018-07-24 11:16:18.243061', null, '1532430978.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1097', 'Executed', '2018-07-24 11:16:20.243061', '0.00', null, '1532430980.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1098', 'Started execution', '2018-07-24 11:16:20.243061', null, '1532430980.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1099', 'Executed', '2018-07-24 11:16:22.243061', '0.00', null, '1532430982.81', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1100', 'Started execution', '2018-07-24 11:16:22.243061', null, '1532430982.63', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1101', 'Executed', '2018-07-24 11:16:24.243061', '0.00', null, '1532430984.72', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1102', 'Executed', '2018-07-24 11:16:26.243061', '0.00', null, '1532430986.74', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1103', 'Started execution', '2018-07-24 11:16:26.243061', null, '1532430986.59', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1104', 'Executed', '2018-07-24 11:16:28.243061', '0.00', null, '1532430988.75', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1105', 'Executed', '2018-07-24 11:16:30.243061', '0.00', null, '1532430990.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1106', 'Started execution', '2018-07-24 11:16:30.243061', null, '1532430990.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1107', 'Executed', '2018-07-24 11:16:32.243061', '0.00', null, '1532430992.72', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1108', 'Executed', '2018-07-24 11:16:34.243061', '0.00', null, '1532430994.67', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1109', 'Executed', '2018-07-24 11:16:36.243061', '0.00', null, '1532430996.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1110', 'Executed', '2018-07-24 11:16:38.243061', '0.00', null, '1532430998.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1111', 'Started execution', '2018-07-24 11:16:38.243061', null, '1532430998.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1112', 'Executed', '2018-07-24 11:16:40.243061', '0.00', null, '1532431000.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1113', 'Started execution', '2018-07-24 11:16:40.243061', null, '1532431000.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1114', 'Executed', '2018-07-24 11:16:42.243061', '0.00', null, '1532431002.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1115', 'Started execution', '2018-07-24 11:16:42.243061', null, '1532431002.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1116', 'Executed', '2018-07-24 11:16:44.243061', '0.00', null, '1532431004.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1117', 'Executed', '2018-07-24 11:16:46.243061', '0.00', null, '1532431006.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1118', 'Executed', '2018-07-24 11:16:48.243061', '0.00', null, '1532431008.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1119', 'Executed', '2018-07-24 11:16:50.243061', '0.00', null, '1532431010.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1120', 'Executed', '2018-07-24 11:16:52.243061', '0.00', null, '1532431012.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1121', 'Executed', '2018-07-24 11:16:54.243061', '0.00', null, '1532431014.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1122', 'Started execution', '2018-07-24 11:16:54.243061', null, '1532431014.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1123', 'Executed', '2018-07-24 11:16:56.243061', '0.00', null, '1532431016.76', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1124', 'Executed', '2018-07-24 11:16:58.243061', '0.00', null, '1532431018.70', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1125', 'Executed', '2018-07-24 11:17:00.243061', '0.00', null, '1532431020.77', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1126', 'Started execution', '2018-07-24 11:17:00.243061', null, '1532431020.64', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1127', 'Executed', '2018-07-24 11:17:02.243061', '0.00', null, '1532431022.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1128', 'Executed', '2018-07-24 11:17:04.243061', '0.00', null, '1532431024.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1129', 'Started execution', '2018-07-24 11:17:04.243061', null, '1532431024.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1130', 'Executed', '2018-07-24 11:17:06.243061', '0.00', null, '1532431026.71', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1131', 'Executed', '2018-07-24 11:17:08.243061', '0.00', null, '1532431028.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1132', 'Executed', '2018-07-24 11:17:10.243061', '0.00', null, '1532431030.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1133', 'Executed', '2018-07-24 11:17:12.243061', '0.00', null, '1532431032.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1134', 'Started execution', '2018-07-24 11:17:12.243061', null, '1532431032.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1135', 'Executed', '2018-07-24 11:17:14.243061', '0.00', null, '1532431034.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1136', 'Started execution', '2018-07-24 11:17:14.243061', null, '1532431034.60', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1137', 'Executed', '2018-07-24 11:17:16.243061', '0.00', null, '1532431036.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1138', 'Executed', '2018-07-24 11:17:18.243061', '0.00', null, '1532431038.76', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1139', 'Started execution', '2018-07-24 11:17:18.243061', null, '1532431038.58', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1140', 'Executed', '2018-07-24 11:17:20.243061', '0.00', null, '1532431040.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1141', 'Started execution', '2018-07-24 11:17:20.243061', null, '1532431040.60', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1142', 'Executed', '2018-07-24 11:17:22.243061', '0.00', null, '1532431042.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1143', 'Executed', '2018-07-24 11:17:24.243061', '0.00', null, '1532431044.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1144', 'Executed', '2018-07-24 11:17:26.243061', '0.00', null, '1532431046.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1145', 'Started execution', '2018-07-24 11:17:26.243061', null, '1532431046.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1146', 'Executed', '2018-07-24 11:17:28.243061', '0.00', null, '1532431048.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1147', 'Executed', '2018-07-24 11:17:30.243061', '0.00', null, '1532431050.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1148', 'Started execution', '2018-07-24 11:17:30.243061', null, '1532431050.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1149', 'Executed', '2018-07-24 11:17:32.243061', '0.00', null, '1532431052.94', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1150', 'Executed', '2018-07-24 11:17:34.243061', '0.00', null, '1532431054.85', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1151', 'Executed', '2018-07-24 11:17:36.243061', '0.00', null, '1532431056.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1152', 'Executed', '2018-07-24 11:17:38.243061', '0.00', null, '1532431058.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1153', 'Executed', '2018-07-24 11:17:40.243061', '0.00', null, '1532431060.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1154', 'Started execution', '2018-07-24 11:17:40.243061', null, '1532431060.59', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1155', 'Executed', '2018-07-24 11:17:42.243061', '0.00', null, '1532431062.68', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1156', 'Executed', '2018-07-24 11:17:44.243061', '0.00', null, '1532431064.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1157', 'Executed', '2018-07-24 11:17:46.243061', '0.00', null, '1532431066.80', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1158', 'Executed', '2018-07-24 11:17:48.243061', '0.00', null, '1532431068.76', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1159', 'Executed', '2018-07-24 11:17:50.243061', '0.00', null, '1532431070.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1160', 'Executed', '2018-07-24 11:17:52.243061', '0.00', null, '1532431072.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1161', 'Executed', '2018-07-24 11:17:54.243061', '0.00', null, '1532431075.01', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1162', 'Started execution', '2018-07-24 11:17:54.243061', null, '1532431074.94', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1163', 'Executed', '2018-07-24 11:17:56.243061', '0.00', null, '1532431076.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1164', 'Executed', '2018-07-24 11:17:58.243061', '0.00', null, '1532431078.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1165', 'Executed', '2018-07-24 11:18:00.243061', '0.00', null, '1532431080.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1166', 'Executed', '2018-07-24 11:18:02.243061', '0.00', null, '1532431082.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1167', 'Executed', '2018-07-24 11:18:04.243061', '0.00', null, '1532431084.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1168', 'Executed', '2018-07-24 11:18:06.243061', '0.00', null, '1532431086.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1169', 'Started execution', '2018-07-24 11:18:06.243061', null, '1532431086.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1170', 'Executed', '2018-07-24 11:18:08.243061', '0.00', null, '1532431088.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1171', 'Started execution', '2018-07-24 11:18:08.243061', null, '1532431088.60', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1172', 'Executed', '2018-07-24 11:18:10.243061', '0.00', null, '1532431090.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1173', 'Started execution', '2018-07-24 11:18:10.243061', null, '1532431090.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1174', 'Executed', '2018-07-24 11:18:12.243061', '0.00', null, '1532431092.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1175', 'Executed', '2018-07-24 11:18:14.243061', '0.00', null, '1532431094.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1176', 'Executed', '2018-07-24 11:18:16.243061', '0.00', null, '1532431096.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1177', 'Executed', '2018-07-24 11:18:18.243061', '0.00', null, '1532431098.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1178', 'Started execution', '2018-07-24 11:18:18.243061', null, '1532431098.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1179', 'Executed', '2018-07-24 11:18:20.243061', '0.00', null, '1532431100.68', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1180', 'Started execution', '2018-07-24 11:18:20.243061', null, '1532431100.59', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1181', 'Executed', '2018-07-24 11:18:22.243061', '0.00', null, '1532431102.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1182', 'Executed', '2018-07-24 11:18:24.243061', '0.00', null, '1532431104.70', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1183', 'Started execution', '2018-07-24 11:18:24.243061', null, '1532431104.63', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1184', 'Executed', '2018-07-24 11:18:26.243061', '0.00', null, '1532431106.81', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1185', 'Executed', '2018-07-24 11:18:28.243061', '0.00', null, '1532431108.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1186', 'Started execution', '2018-07-24 11:18:28.243061', null, '1532431108.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1187', 'Executed', '2018-07-24 11:18:30.243061', '0.00', null, '1532431110.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1188', 'Started execution', '2018-07-24 11:18:30.243061', null, '1532431110.53', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1189', 'Executed', '2018-07-24 11:18:32.243061', '0.00', null, '1532431112.77', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1190', 'Executed', '2018-07-24 11:18:34.243061', '0.00', null, '1532431114.71', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1191', 'Executed', '2018-07-24 11:18:36.243061', '0.00', null, '1532431116.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1192', 'Started execution', '2018-07-24 11:18:36.243061', null, '1532431116.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1193', 'Executed', '2018-07-24 11:18:38.243061', '0.00', null, '1532431118.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1194', 'Started execution', '2018-07-24 11:18:38.243061', null, '1532431118.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1195', 'Executed', '2018-07-24 11:18:40.243061', '0.00', null, '1532431120.70', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1196', 'Executed', '2018-07-24 11:18:42.243061', '0.00', null, '1532431122.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1197', 'Executed', '2018-07-24 11:18:44.243061', '0.00', null, '1532431124.71', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1198', 'Executed', '2018-07-24 11:18:46.243061', '0.00', null, '1532431126.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1199', 'Executed', '2018-07-24 11:18:48.243061', '0.00', null, '1532431128.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1200', 'Executed', '2018-07-24 11:18:50.243061', '0.00', null, '1532431130.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1201', 'Executed', '2018-07-24 11:18:52.243061', '0.00', null, '1532431132.81', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1202', 'Started execution', '2018-07-24 11:18:52.243061', null, '1532431132.65', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1203', 'Executed', '2018-07-24 11:18:54.243061', '0.00', null, '1532431134.77', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1204', 'Executed', '2018-07-24 11:18:56.243061', '0.00', null, '1532431136.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1205', 'Started execution', '2018-07-24 11:18:56.243061', null, '1532431136.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1206', 'Executed', '2018-07-24 11:18:58.243061', '0.00', null, '1532431138.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1207', 'Executed', '2018-07-24 11:19:00.243061', '0.00', null, '1532431140.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1208', 'Started execution', '2018-07-24 11:19:00.243061', null, '1532431140.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1209', 'Executed', '2018-07-24 11:19:02.243061', '0.00', null, '1532431142.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1210', 'Executed', '2018-07-24 11:19:04.243061', '0.00', null, '1532431144.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1211', 'Started execution', '2018-07-24 11:19:04.243061', null, '1532431144.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1212', 'Executed', '2018-07-24 11:19:06.243061', '0.00', null, '1532431146.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1213', 'Executed', '2018-07-24 11:19:08.243061', '0.00', null, '1532431148.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1214', 'Started execution', '2018-07-24 11:19:08.243061', null, '1532431148.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1215', 'Executed', '2018-07-24 11:19:10.243061', '0.00', null, '1532431150.85', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1216', 'Started execution', '2018-07-24 11:19:10.243061', null, '1532431150.75', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1217', 'Executed', '2018-07-24 11:19:12.243061', '0.00', null, '1532431152.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1218', 'Executed', '2018-07-24 11:19:14.243061', '0.00', null, '1532431154.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1219', 'Started execution', '2018-07-24 11:19:14.243061', null, '1532431154.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1220', 'Executed', '2018-07-24 11:19:16.243061', '0.00', null, '1532431156.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1221', 'Started execution', '2018-07-24 11:19:16.243061', null, '1532431156.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1222', 'Executed', '2018-07-24 11:19:18.243061', '0.00', null, '1532431158.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1223', 'Started execution', '2018-07-24 11:19:18.243061', null, '1532431158.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1224', 'Executed', '2018-07-24 11:19:20.243061', '0.00', null, '1532431160.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1225', 'Started execution', '2018-07-24 11:19:20.243061', null, '1532431160.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1226', 'Executed', '2018-07-24 11:19:22.243061', '0.00', null, '1532431162.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1227', 'Started execution', '2018-07-24 11:19:22.243061', null, '1532431162.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1228', 'Executed', '2018-07-24 11:19:24.243061', '0.00', null, '1532431164.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1229', 'Executed', '2018-07-24 11:19:26.243061', '0.00', null, '1532431166.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1230', 'Started execution', '2018-07-24 11:19:26.243061', null, '1532431166.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1231', 'Executed', '2018-07-24 11:19:28.243061', '0.00', null, '1532431168.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1232', 'Executed', '2018-07-24 11:19:30.243061', '0.00', null, '1532431170.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1233', 'Started execution', '2018-07-24 11:19:30.243061', null, '1532431170.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1234', 'Executed', '2018-07-24 11:19:32.243061', '0.00', null, '1532431172.80', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1235', 'Executed', '2018-07-24 11:19:34.243061', '0.00', null, '1532431174.84', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1236', 'Executed', '2018-07-24 11:19:36.243061', '0.00', null, '1532431176.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1237', 'Executed', '2018-07-24 11:19:38.243061', '0.00', null, '1532431178.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1238', 'Started execution', '2018-07-24 11:19:38.243061', null, '1532431178.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1239', 'Executed', '2018-07-24 11:19:40.243061', '0.00', null, '1532431180.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1240', 'Executed', '2018-07-24 11:19:42.243061', '0.00', null, '1532431182.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1241', 'Executed', '2018-07-24 11:19:44.243061', '0.00', null, '1532431184.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1242', 'Executed', '2018-07-24 11:19:46.243061', '0.00', null, '1532431186.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1243', 'Executed', '2018-07-24 11:19:48.243061', '0.00', null, '1532431188.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1244', 'Executed', '2018-07-24 11:19:50.243061', '0.00', null, '1532431190.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1245', 'Executed', '2018-07-24 11:19:52.243061', '0.00', null, '1532431192.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1246', 'Executed', '2018-07-24 11:19:54.243061', '-0.01', '1532431194.53', '1532431194.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1247', 'Started execution', '2018-07-24 11:19:56.243061', null, '1532431196.66', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1248', 'Executed', '2018-07-24 11:19:58.243061', '0.00', null, '1532431198.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1249', 'Executed', '2018-07-24 11:20:00.243061', '0.00', null, '1532431200.36', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1250', 'Executed', '2018-07-24 11:20:02.243061', '0.00', null, '1532431202.36', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1251', 'Executed', '2018-07-24 11:20:04.243061', '0.00', null, '1532431204.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1252', 'Started execution', '2018-07-24 11:20:04.243061', null, '1532431204.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1253', 'Executed', '2018-07-24 11:20:06.243061', '0.00', null, '1532431206.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1254', 'Started execution', '2018-07-24 11:20:06.243061', null, '1532431206.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1255', 'Executed', '2018-07-24 11:20:08.243061', '0.00', null, '1532431208.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1256', 'Started execution', '2018-07-24 11:20:08.243061', null, '1532431208.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1257', 'Executed', '2018-07-24 11:20:10.243061', '0.00', null, '1532431210.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1258', 'Executed', '2018-07-24 11:20:12.243061', '0.00', null, '1532431212.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1259', 'Started execution', '2018-07-24 11:20:12.243061', null, '1532431212.34', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1260', 'Executed', '2018-07-24 11:20:14.243061', '0.00', null, '1532431214.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1261', 'Started execution', '2018-07-24 11:20:14.243061', null, '1532431214.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1262', 'Executed', '2018-07-24 11:20:16.243061', '0.00', null, '1532431216.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1263', 'Started execution', '2018-07-24 11:20:16.243061', null, '1532431216.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1264', 'Executed', '2018-07-24 11:20:18.243061', '0.00', null, '1532431218.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1265', 'Started execution', '2018-07-24 11:20:18.243061', null, '1532431218.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1266', 'Executed', '2018-07-24 11:20:20.243061', '0.00', null, '1532431220.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1267', 'Executed', '2018-07-24 11:20:22.243061', '0.00', null, '1532431222.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1268', 'Executed', '2018-07-24 11:20:24.243061', '0.00', null, '1532431224.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1269', 'Started execution', '2018-07-24 11:20:24.243061', null, '1532431224.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1270', 'Executed', '2018-07-24 11:20:26.243061', '0.00', null, '1532431226.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1271', 'Started execution', '2018-07-24 11:20:26.243061', null, '1532431226.52', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1272', 'Executed', '2018-07-24 11:20:28.243061', '0.00', null, '1532431228.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1273', 'Started execution', '2018-07-24 11:20:28.243061', null, '1532431228.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1274', 'Executed', '2018-07-24 11:20:30.243061', '0.00', null, '1532431230.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1275', 'Executed', '2018-07-24 11:20:32.243061', '0.00', null, '1532431232.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1276', 'Executed', '2018-07-24 11:20:34.243061', '0.00', null, '1532431234.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1277', 'Started execution', '2018-07-24 11:20:34.243061', null, '1532431234.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1278', 'Executed', '2018-07-24 11:20:36.243061', '0.00', null, '1532431236.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1279', 'Executed', '2018-07-24 11:20:38.243061', '0.00', null, '1532431238.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1280', 'Started execution', '2018-07-24 11:20:38.243061', null, '1532431238.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1281', 'Executed', '2018-07-24 11:20:40.243061', '0.00', null, '1532431240.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1282', 'Started execution', '2018-07-24 11:20:40.243061', null, '1532431240.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1283', 'Executed', '2018-07-24 11:20:42.243061', '0.00', null, '1532431242.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1284', 'Executed', '2018-07-24 11:20:44.243061', '0.00', null, '1532431244.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1285', 'Started execution', '2018-07-24 11:20:44.243061', null, '1532431244.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1286', 'Executed', '2018-07-24 11:20:46.243061', '0.00', null, '1532431246.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1287', 'Started execution', '2018-07-24 11:20:48.243061', null, '1532431248.57', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1288', 'Executed', '2018-07-24 11:20:50.243061', '0.00', null, '1532431250.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1289', 'Started execution', '2018-07-24 11:20:50.243061', null, '1532431250.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1290', 'Executed', '2018-07-24 11:20:52.243061', '0.00', null, '1532431252.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1291', 'Started execution', '2018-07-24 11:20:52.243061', null, '1532431252.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1292', 'Executed', '2018-07-24 11:20:54.243061', '0.00', null, '1532431254.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1293', 'Started execution', '2018-07-24 11:20:54.243061', null, '1532431254.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1294', 'Executed', '2018-07-24 11:20:56.243061', '0.00', null, '1532431256.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1295', 'Executed', '2018-07-24 11:20:58.243061', '0.00', null, '1532431258.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1296', 'Executed', '2018-07-24 11:21:00.243061', '0.00', null, '1532431260.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1297', 'Executed', '2018-07-24 11:21:02.243061', '0.00', null, '1532431262.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1298', 'Executed', '2018-07-24 11:21:04.243061', '0.00', null, '1532431264.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1299', 'Executed', '2018-07-24 11:21:06.243061', '0.00', null, '1532431266.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1300', 'Executed', '2018-07-24 11:21:08.243061', '0.00', null, '1532431268.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1301', 'Started execution', '2018-07-24 11:21:08.243061', null, '1532431268.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1302', 'Executed', '2018-07-24 11:21:10.243061', '0.00', null, '1532431270.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1303', 'Executed', '2018-07-24 11:21:12.243061', '0.00', null, '1532431272.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1304', 'Started execution', '2018-07-24 11:21:12.243061', null, '1532431272.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1305', 'Executed', '2018-07-24 11:21:14.243061', '0.00', null, '1532431274.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1306', 'Executed', '2018-07-24 11:21:16.243061', '0.00', null, '1532431276.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1307', 'Started execution', '2018-07-24 11:21:16.243061', null, '1532431276.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1308', 'Executed', '2018-07-24 11:21:18.243061', '0.00', null, '1532431278.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1309', 'Started execution', '2018-07-24 11:21:18.243061', null, '1532431278.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1310', 'Executed', '2018-07-24 11:21:20.243061', '0.00', null, '1532431280.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1311', 'Started execution', '2018-07-24 11:21:20.243061', null, '1532431280.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1312', 'Executed', '2018-07-24 11:21:22.243061', '0.00', null, '1532431282.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1313', 'Started execution', '2018-07-24 11:21:22.243061', null, '1532431282.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1314', 'Executed', '2018-07-24 11:21:24.243061', '0.00', null, '1532431284.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1315', 'Executed', '2018-07-24 11:21:26.243061', '0.00', null, '1532431286.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1316', 'Started execution', '2018-07-24 11:21:26.243061', null, '1532431286.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1317', 'Executed', '2018-07-24 11:21:28.243061', '0.00', null, '1532431288.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1318', 'Executed', '2018-07-24 11:21:30.243061', '0.00', null, '1532431290.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1319', 'Started execution', '2018-07-24 11:21:30.243061', null, '1532431290.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1320', 'Executed', '2018-07-24 11:21:32.243061', '0.00', null, '1532431292.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1321', 'Started execution', '2018-07-24 11:21:32.243061', null, '1532431292.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1322', 'Executed', '2018-07-24 11:21:34.243061', '0.00', null, '1532431294.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1323', 'Executed', '2018-07-24 11:21:36.243061', '0.00', null, '1532431296.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1324', 'Executed', '2018-07-24 11:21:38.243061', '0.00', null, '1532431298.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1325', 'Started execution', '2018-07-24 11:21:38.243061', null, '1532431298.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1326', 'Executed', '2018-07-24 11:21:40.243061', '0.00', null, '1532431300.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1327', 'Started execution', '2018-07-24 11:21:40.243061', null, '1532431300.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1328', 'Executed', '2018-07-24 11:21:42.243061', '0.00', null, '1532431302.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1329', 'Executed', '2018-07-24 11:21:44.243061', '0.00', null, '1532431304.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1330', 'Started execution', '2018-07-24 11:21:44.243061', null, '1532431304.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1331', 'Executed', '2018-07-24 11:21:46.243061', '0.00', null, '1532431306.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1332', 'Started execution', '2018-07-24 11:21:46.243061', null, '1532431306.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1333', 'Executed', '2018-07-24 11:21:48.243061', '0.00', null, '1532431308.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1334', 'Started execution', '2018-07-24 11:21:48.243061', null, '1532431308.52', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1335', 'Executed', '2018-07-24 11:21:50.243061', '0.00', null, '1532431310.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1336', 'Started execution', '2018-07-24 11:21:50.243061', null, '1532431310.57', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1337', 'Executed', '2018-07-24 11:21:52.243061', '0.00', null, '1532431312.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1338', 'Executed', '2018-07-24 11:21:54.243061', '0.00', null, '1532431314.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1339', 'Executed', '2018-07-24 11:21:56.243061', '0.00', null, '1532431316.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1340', 'Executed', '2018-07-24 11:21:58.243061', '0.00', null, '1532431318.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1341', 'Started execution', '2018-07-24 11:21:58.243061', null, '1532431318.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1342', 'Executed', '2018-07-24 11:22:00.243061', '0.00', null, '1532431320.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1343', 'Started execution', '2018-07-24 11:22:00.243061', null, '1532431320.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1344', 'Executed', '2018-07-24 11:22:02.243061', '0.00', null, '1532431322.37', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1345', 'Executed', '2018-07-24 11:22:04.243061', '0.00', null, '1532431324.37', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1346', 'Executed', '2018-07-24 11:22:06.243061', '0.00', null, '1532431326.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1347', 'Started execution', '2018-07-24 11:22:06.243061', null, '1532431326.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1348', 'Executed', '2018-07-24 11:22:08.243061', '0.00', null, '1532431328.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1349', 'Started execution', '2018-07-24 11:22:08.243061', null, '1532431328.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1350', 'Executed', '2018-07-24 11:22:10.243061', '0.00', null, '1532431330.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1351', 'Started execution', '2018-07-24 11:22:10.243061', null, '1532431330.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1352', 'Executed', '2018-07-24 11:22:12.243061', '0.00', null, '1532431332.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1353', 'Executed', '2018-07-24 11:22:14.243061', '0.00', null, '1532431334.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1354', 'Started execution', '2018-07-24 11:22:14.243061', null, '1532431334.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1355', 'Executed', '2018-07-24 11:22:16.243061', '0.00', null, '1532431336.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1356', 'Started execution', '2018-07-24 11:22:16.243061', null, '1532431336.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1357', 'Executed', '2018-07-24 11:22:18.243061', '0.00', null, '1532431338.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1358', 'Executed', '2018-07-24 11:22:20.243061', '0.00', null, '1532431340.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1359', 'Started execution', '2018-07-24 11:22:20.243061', null, '1532431340.35', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1360', 'Executed', '2018-07-24 11:22:22.243061', '0.00', null, '1532431342.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1361', 'Executed', '2018-07-24 11:22:24.243061', '0.00', null, '1532431344.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1362', 'Executed', '2018-07-24 11:22:26.243061', '0.00', null, '1532431346.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1363', 'Started execution', '2018-07-24 11:22:26.243061', null, '1532431346.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1364', 'Executed', '2018-07-24 11:22:28.243061', '0.00', null, '1532431348.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1365', 'Executed', '2018-07-24 11:22:30.243061', '0.00', null, '1532431350.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1366', 'Started execution', '2018-07-24 11:22:30.243061', null, '1532431350.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1367', 'Executed', '2018-07-24 11:22:32.243061', '0.00', null, '1532431352.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1368', 'Executed', '2018-07-24 11:22:34.243061', '0.00', null, '1532431354.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1369', 'Executed', '2018-07-24 11:22:36.243061', '0.00', null, '1532431356.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1370', 'Executed', '2018-07-24 11:22:38.243061', '0.00', null, '1532431358.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1371', 'Executed', '2018-07-24 11:22:40.243061', '0.00', null, '1532431360.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1372', 'Executed', '2018-07-24 11:22:42.243061', '0.00', null, '1532431362.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1373', 'Executed', '2018-07-24 11:22:44.243061', '0.00', null, '1532431364.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1374', 'Started execution', '2018-07-24 11:22:44.243061', null, '1532431364.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1375', 'Executed', '2018-07-24 11:22:46.243061', '0.00', null, '1532431366.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1376', 'Started execution', '2018-07-24 11:22:46.243061', null, '1532431366.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1377', 'Executed', '2018-07-24 11:22:48.243061', '0.00', null, '1532431368.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1378', 'Started execution', '2018-07-24 11:22:48.243061', null, '1532431368.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1379', 'Executed', '2018-07-24 11:22:50.243061', '0.00', null, '1532431370.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1380', 'Started execution', '2018-07-24 11:22:50.243061', null, '1532431370.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1381', 'Executed', '2018-07-24 11:22:52.243061', '0.00', null, '1532431372.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1382', 'Executed', '2018-07-24 11:22:54.243061', '0.00', null, '1532431374.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1383', 'Executed', '2018-07-24 11:22:56.243061', '0.00', null, '1532431376.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1384', 'Executed', '2018-07-24 11:22:58.243061', '0.00', null, '1532431378.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1385', 'Executed', '2018-07-24 11:23:00.243061', '0.00', null, '1532431380.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1386', 'Executed', '2018-07-24 11:23:02.243061', '0.00', null, '1532431382.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1387', 'Started execution', '2018-07-24 11:23:02.243061', null, '1532431382.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1388', 'Executed', '2018-07-24 11:23:04.243061', '0.00', null, '1532431384.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1389', 'Executed', '2018-07-24 11:23:06.243061', '0.00', null, '1532431386.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1390', 'Started execution', '2018-07-24 11:23:06.243061', null, '1532431386.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1391', 'Executed', '2018-07-24 11:23:08.243061', '0.00', null, '1532431388.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1392', 'Started execution', '2018-07-24 11:23:08.243061', null, '1532431388.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1393', 'Executed', '2018-07-24 11:23:10.243061', '0.00', null, '1532431390.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1394', 'Started execution', '2018-07-24 11:23:10.243061', null, '1532431390.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1395', 'Executed', '2018-07-24 11:23:12.243061', '0.00', null, '1532431392.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1396', 'Started execution', '2018-07-24 11:23:12.243061', null, '1532431392.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1397', 'Executed', '2018-07-24 11:23:14.243061', '0.00', null, '1532431394.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1398', 'Executed', '2018-07-24 11:23:16.243061', '0.00', null, '1532431396.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1399', 'Started execution', '2018-07-24 11:23:16.243061', null, '1532431396.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1400', 'Executed', '2018-07-24 11:23:18.243061', '0.00', null, '1532431398.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1401', 'Started execution', '2018-07-24 11:23:18.243061', null, '1532431398.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1402', 'Executed', '2018-07-24 11:23:20.243061', '0.00', null, '1532431400.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1403', 'Executed', '2018-07-24 11:23:22.243061', '0.00', null, '1532431402.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1404', 'Started execution', '2018-07-24 11:23:22.243061', null, '1532431402.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1405', 'Executed', '2018-07-24 11:23:24.243061', '0.00', null, '1532431404.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1406', 'Started execution', '2018-07-24 11:23:24.243061', null, '1532431404.52', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1407', 'Executed', '2018-07-24 11:23:26.243061', '0.00', null, '1532431406.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1408', 'Started execution', '2018-07-24 11:23:26.243061', null, '1532431406.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1409', 'Executed', '2018-07-24 11:23:28.243061', '0.00', null, '1532431408.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1410', 'Started execution', '2018-07-24 11:23:28.243061', null, '1532431408.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1411', 'Executed', '2018-07-24 11:23:30.243061', '0.00', null, '1532431410.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1412', 'Started execution', '2018-07-24 11:23:30.243061', null, '1532431410.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1413', 'Executed', '2018-07-24 11:23:32.243061', '0.00', null, '1532431412.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1414', 'Executed', '2018-07-24 11:23:34.243061', '0.00', null, '1532431414.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1415', 'Executed', '2018-07-24 11:23:36.243061', '0.00', null, '1532431416.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1416', 'Executed', '2018-07-24 11:23:38.243061', '0.00', null, '1532431418.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1417', 'Started execution', '2018-07-24 11:23:38.243061', null, '1532431418.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1418', 'Executed', '2018-07-24 11:23:40.243061', '0.00', null, '1532431420.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1419', 'Started execution', '2018-07-24 11:23:40.243061', null, '1532431420.55', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1420', 'Executed', '2018-07-24 11:23:42.243061', '0.00', null, '1532431422.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1421', 'Executed', '2018-07-24 11:23:44.243061', '0.00', null, '1532431424.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1422', 'Executed', '2018-07-24 11:23:46.243061', '0.00', null, '1532431426.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1423', 'Executed', '2018-07-24 11:23:48.243061', '0.00', null, '1532431428.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1424', 'Executed', '2018-07-24 11:23:50.243061', '0.00', null, '1532431430.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1425', 'Executed', '2018-07-24 11:23:52.243061', '0.00', null, '1532431432.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1426', 'Started execution', '2018-07-24 11:23:52.243061', null, '1532431432.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1427', 'Executed', '2018-07-24 11:23:54.243061', '0.00', null, '1532431434.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1428', 'Executed', '2018-07-24 11:23:56.243061', '0.00', null, '1532431436.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1429', 'Executed', '2018-07-24 11:23:58.243061', '0.00', null, '1532431438.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1430', 'Started execution', '2018-07-24 11:23:58.243061', null, '1532431438.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1431', 'Executed', '2018-07-24 11:24:00.243061', '0.00', null, '1532431440.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1432', 'Started execution', '2018-07-24 11:24:00.243061', null, '1532431440.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1433', 'Executed', '2018-07-24 11:24:02.243061', '0.00', null, '1532431442.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1434', 'Executed', '2018-07-24 11:24:04.243061', '0.00', null, '1532431444.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1435', 'Started execution', '2018-07-24 11:24:04.243061', null, '1532431444.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1436', 'Executed', '2018-07-24 11:24:06.243061', '0.00', null, '1532431446.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1437', 'Started execution', '2018-07-24 11:24:06.243061', null, '1532431446.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1438', 'Executed', '2018-07-24 11:24:08.243061', '0.00', null, '1532431448.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1439', 'Executed', '2018-07-24 11:24:10.243061', '0.00', null, '1532431450.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1440', 'Started execution', '2018-07-24 11:24:10.243061', null, '1532431450.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1441', 'Executed', '2018-07-24 11:24:12.243061', '0.00', null, '1532431452.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1442', 'Started execution', '2018-07-24 11:24:12.243061', null, '1532431452.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1443', 'Executed', '2018-07-24 11:24:14.243061', '0.00', null, '1532431454.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1444', 'Executed', '2018-07-24 11:24:16.243061', '0.00', null, '1532431456.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1445', 'Executed', '2018-07-24 11:24:18.243061', '0.00', null, '1532431458.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1446', 'Started execution', '2018-07-24 11:24:18.243061', null, '1532431458.55', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1447', 'Executed', '2018-07-24 11:24:20.243061', '0.00', null, '1532431460.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1448', 'Executed', '2018-07-24 11:24:22.243061', '0.00', null, '1532431462.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1449', 'Started execution', '2018-07-24 11:24:22.243061', null, '1532431462.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1450', 'Executed', '2018-07-24 11:24:24.243061', '0.00', null, '1532431464.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1451', 'Started execution', '2018-07-24 11:24:24.243061', null, '1532431464.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1452', 'Executed', '2018-07-24 11:24:26.243061', '0.00', null, '1532431466.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1453', 'Started execution', '2018-07-24 11:24:26.243061', null, '1532431466.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1454', 'Executed', '2018-07-24 11:24:28.243061', '0.00', null, '1532431468.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1455', 'Started execution', '2018-07-24 11:24:28.243061', null, '1532431468.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1456', 'Executed', '2018-07-24 11:24:30.243061', '0.00', null, '1532431470.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1457', 'Executed', '2018-07-24 11:24:32.243061', '0.00', null, '1532431472.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1458', 'Started execution', '2018-07-24 11:24:32.243061', null, '1532431472.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1459', 'Executed', '2018-07-24 11:24:34.243061', '0.00', null, '1532431474.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1460', 'Executed', '2018-07-24 11:24:36.243061', '0.00', null, '1532431476.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1461', 'Executed', '2018-07-24 11:24:38.243061', '0.00', null, '1532431478.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1462', 'Executed', '2018-07-24 11:24:40.243061', '0.00', null, '1532431480.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1463', 'Started execution', '2018-07-24 11:24:40.243061', null, '1532431480.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1464', 'Executed', '2018-07-24 11:24:42.243061', '0.00', null, '1532431482.85', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1465', 'Started execution', '2018-07-24 11:24:42.243061', null, '1532431482.79', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1466', 'Executed', '2018-07-24 11:24:44.243061', '0.00', null, '1532431484.87', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1467', 'Executed', '2018-07-24 11:24:46.243061', '0.00', null, '1532431486.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1468', 'Executed', '2018-07-24 11:24:48.243061', '0.00', null, '1532431488.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1469', 'Started execution', '2018-07-24 11:24:48.243061', null, '1532431488.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1470', 'Executed', '2018-07-24 11:24:50.243061', '0.00', null, '1532431490.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1471', 'Executed', '2018-07-24 11:24:52.243061', '0.00', null, '1532431492.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1472', 'Executed', '2018-07-24 11:24:54.243061', '0.00', null, '1532431494.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1473', 'Executed', '2018-07-24 11:24:56.243061', '0.00', null, '1532431496.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1474', 'Started execution', '2018-07-24 11:24:56.243061', null, '1532431496.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1475', 'Executed', '2018-07-24 11:24:58.243061', '0.00', null, '1532431498.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1476', 'Executed', '2018-07-24 11:25:00.243061', '0.00', null, '1532431500.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1477', 'Executed', '2018-07-24 11:25:02.243061', '0.00', null, '1532431502.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1478', 'Started execution', '2018-07-24 11:25:02.243061', null, '1532431502.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1479', 'Executed', '2018-07-24 11:25:04.243061', '0.00', null, '1532431504.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1480', 'Executed', '2018-07-24 11:25:06.243061', '0.00', null, '1532431506.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1481', 'Executed', '2018-07-24 11:25:08.243061', '0.00', null, '1532431508.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1482', 'Executed', '2018-07-24 11:25:10.243061', '0.00', null, '1532431510.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1483', 'Executed', '2018-07-24 11:25:12.243061', '0.00', null, '1532431512.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1484', 'Started execution', '2018-07-24 11:25:12.243061', null, '1532431512.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1485', 'Executed', '2018-07-24 11:25:14.243061', '0.00', null, '1532431514.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1486', 'Started execution', '2018-07-24 11:25:14.243061', null, '1532431514.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1487', 'Executed', '2018-07-24 11:25:16.243061', '0.00', null, '1532431516.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1488', 'Started execution', '2018-07-24 11:25:16.243061', null, '1532431516.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1489', 'Executed', '2018-07-24 11:25:18.243061', '0.00', null, '1532431518.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1490', 'Started execution', '2018-07-24 11:25:18.243061', null, '1532431518.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1491', 'Executed', '2018-07-24 11:25:20.243061', '0.00', null, '1532431520.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1492', 'Started execution', '2018-07-24 11:25:20.243061', null, '1532431520.52', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1493', 'Executed', '2018-07-24 11:25:22.243061', '0.00', null, '1532431522.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1494', 'Executed', '2018-07-24 11:25:24.243061', '0.00', null, '1532431524.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1495', 'Started execution', '2018-07-24 11:25:24.243061', null, '1532431524.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1496', 'Executed', '2018-07-24 11:25:26.243061', '0.00', null, '1532431526.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1497', 'Started execution', '2018-07-24 11:25:26.243061', null, '1532431526.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1498', 'Executed', '2018-07-24 11:25:28.243061', '0.00', null, '1532431528.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1499', 'Started execution', '2018-07-24 11:25:28.243061', null, '1532431528.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1500', 'Executed', '2018-07-24 11:25:30.243061', '0.00', null, '1532431530.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1501', 'Started execution', '2018-07-24 11:25:32.243061', null, '1532431532.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1502', 'Executed', '2018-07-24 11:25:34.243061', '0.00', null, '1532431534.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1503', 'Executed', '2018-07-24 11:25:36.243061', '0.00', null, '1532431536.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1504', 'Started execution', '2018-07-24 11:25:36.243061', null, '1532431536.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1505', 'Executed', '2018-07-24 11:25:38.243061', '0.00', null, '1532431538.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1506', 'Executed', '2018-07-24 11:25:40.243061', '0.00', null, '1532431540.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1507', 'Executed', '2018-07-24 11:25:42.243061', '0.00', null, '1532431542.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1508', 'Executed', '2018-07-24 11:25:44.243061', '0.00', null, '1532431544.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1509', 'Executed', '2018-07-24 11:25:46.243061', '0.00', null, '1532431546.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1510', 'Started execution', '2018-07-24 11:25:46.243061', null, '1532431546.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1511', 'Executed', '2018-07-24 11:25:48.243061', '0.00', null, '1532431548.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1512', 'Started execution', '2018-07-24 11:25:48.243061', null, '1532431548.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1513', 'Executed', '2018-07-24 11:25:50.243061', '0.00', null, '1532431550.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1514', 'Executed', '2018-07-24 11:25:52.243061', '0.00', null, '1532431552.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1515', 'Executed', '2018-07-24 11:25:54.243061', '0.00', null, '1532431554.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1516', 'Executed', '2018-07-24 11:25:56.243061', '0.00', null, '1532431556.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1517', 'Executed', '2018-07-24 11:25:58.243061', '0.00', null, '1532431558.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1518', 'Started execution', '2018-07-24 11:25:58.243061', null, '1532431558.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1519', 'Executed', '2018-07-24 11:26:00.243061', '0.00', null, '1532431560.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1520', 'Started execution', '2018-07-24 11:26:00.243061', null, '1532431560.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1521', 'Executed', '2018-07-24 11:26:02.243061', '0.00', null, '1532431562.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1522', 'Executed', '2018-07-24 11:26:04.243061', '0.00', null, '1532431564.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1523', 'Started execution', '2018-07-24 11:26:04.243061', null, '1532431564.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1524', 'Executed', '2018-07-24 11:26:06.243061', '0.00', null, '1532431566.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1525', 'Started execution', '2018-07-24 11:26:06.243061', null, '1532431566.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1526', 'Executed', '2018-07-24 11:26:08.243061', '0.00', null, '1532431568.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1527', 'Started execution', '2018-07-24 11:26:08.243061', null, '1532431568.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1528', 'Executed', '2018-07-24 11:26:10.243061', '0.00', null, '1532431570.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1529', 'Started execution', '2018-07-24 11:26:10.243061', null, '1532431570.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1530', 'Executed', '2018-07-24 11:26:12.243061', '0.00', null, '1532431572.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1531', 'Executed', '2018-07-24 11:26:14.243061', '0.00', null, '1532431574.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1532', 'Started execution', '2018-07-24 11:26:14.243061', null, '1532431574.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1533', 'Executed', '2018-07-24 11:26:16.243061', '0.00', null, '1532431576.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1534', 'Started execution', '2018-07-24 11:26:16.243061', null, '1532431576.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1535', 'Executed', '2018-07-24 11:26:18.243061', '0.00', null, '1532431578.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1536', 'Started execution', '2018-07-24 11:26:18.243061', null, '1532431578.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1537', 'Executed', '2018-07-24 11:26:20.243061', '0.00', null, '1532431580.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1538', 'Started execution', '2018-07-24 11:26:20.243061', null, '1532431580.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1539', 'Executed', '2018-07-24 11:26:22.243061', '0.00', null, '1532431582.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1540', 'Executed', '2018-07-24 11:26:24.243061', '0.00', null, '1532431584.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1541', 'Started execution', '2018-07-24 11:26:24.243061', null, '1532431584.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1542', 'Executed', '2018-07-24 11:26:26.243061', '0.00', null, '1532431586.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1543', 'Started execution', '2018-07-24 11:26:26.243061', null, '1532431586.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1544', 'Executed', '2018-07-24 11:26:28.243061', '0.00', null, '1532431588.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1545', 'Executed', '2018-07-24 11:26:30.243061', '0.00', null, '1532431590.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1546', 'Started execution', '2018-07-24 11:26:30.243061', null, '1532431590.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1547', 'Executed', '2018-07-24 11:26:32.243061', '0.00', null, '1532431592.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1548', 'Started execution', '2018-07-24 11:26:32.243061', null, '1532431592.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1549', 'Executed', '2018-07-24 11:26:34.243061', '0.00', null, '1532431594.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1550', 'Executed', '2018-07-24 11:26:36.243061', '0.00', null, '1532431596.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1551', 'Executed', '2018-07-24 11:26:38.243061', '0.00', null, '1532431598.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1552', 'Started execution', '2018-07-24 11:26:38.243061', null, '1532431598.57', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1553', 'Executed', '2018-07-24 11:26:40.243061', '0.00', null, '1532431600.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1554', 'Executed', '2018-07-24 11:26:42.243061', '0.00', null, '1532431602.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1555', 'Started execution', '2018-07-24 11:26:42.243061', null, '1532431602.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1556', 'Executed', '2018-07-24 11:26:44.243061', '0.00', null, '1532431604.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1557', 'Started execution', '2018-07-24 11:26:44.243061', null, '1532431604.52', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1558', 'Executed', '2018-07-24 11:26:46.243061', '0.00', null, '1532431606.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1559', 'Executed', '2018-07-24 11:26:48.243061', '0.00', null, '1532431608.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1560', 'Executed', '2018-07-24 11:26:50.243061', '0.00', null, '1532431610.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1561', 'Started execution', '2018-07-24 11:26:50.243061', null, '1532431610.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1562', 'Executed', '2018-07-24 11:26:52.243061', '0.00', null, '1532431612.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1563', 'Executed', '2018-07-24 11:26:54.243061', '0.00', null, '1532431614.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1564', 'Executed', '2018-07-24 11:26:56.243061', '0.00', null, '1532431616.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1565', 'Executed', '2018-07-24 11:26:58.243061', '0.00', null, '1532431618.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1566', 'Executed', '2018-07-24 11:27:00.243061', '0.00', null, '1532431620.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1567', 'Executed', '2018-07-24 11:27:02.243061', '-0.01', '1532431622.47', '1532431622.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1568', 'Executed', '2018-07-24 11:27:04.243061', '0.00', null, '1532431624.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1569', 'Executed', '2018-07-24 11:27:06.243061', '0.00', null, '1532431626.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1570', 'Executed', '2018-07-24 11:27:08.243061', '0.00', null, '1532431628.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1571', 'Started execution', '2018-07-24 11:27:08.243061', null, '1532431628.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1572', 'Executed', '2018-07-24 11:27:10.243061', '0.00', null, '1532431630.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1573', 'Executed', '2018-07-24 11:27:12.243061', '0.00', null, '1532431632.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1574', 'Started execution', '2018-07-24 11:27:12.243061', null, '1532431632.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1575', 'Executed', '2018-07-24 11:27:14.243061', '0.00', null, '1532431634.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1576', 'Started execution', '2018-07-24 11:27:14.243061', null, '1532431634.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1577', 'Executed', '2018-07-24 11:27:16.243061', '0.00', null, '1532431636.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1578', 'Started execution', '2018-07-24 11:27:16.243061', null, '1532431636.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1579', 'Executed', '2018-07-24 11:27:18.243061', '0.00', null, '1532431638.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1580', 'Started execution', '2018-07-24 11:27:18.243061', null, '1532431638.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1581', 'Executed', '2018-07-24 11:27:20.243061', '0.00', null, '1532431640.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1582', 'Started execution', '2018-07-24 11:27:20.243061', null, '1532431640.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1583', 'Executed', '2018-07-24 11:27:22.243061', '0.00', null, '1532431642.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1584', 'Executed', '2018-07-24 11:27:24.243061', '0.00', null, '1532431644.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1585', 'Started execution', '2018-07-24 11:27:24.243061', null, '1532431644.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1586', 'Executed', '2018-07-24 11:27:26.243061', '0.00', null, '1532431646.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1587', 'Executed', '2018-07-24 11:27:28.243061', '0.00', null, '1532431648.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1588', 'Executed', '2018-07-24 11:27:30.243061', '0.00', null, '1532431650.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1589', 'Executed', '2018-07-24 11:27:32.243061', '0.00', null, '1532431652.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1590', 'Executed', '2018-07-24 11:27:34.243061', '0.00', null, '1532431654.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1591', 'Executed', '2018-07-24 11:27:36.243061', '0.00', null, '1532431656.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1592', 'Started execution', '2018-07-24 11:27:36.243061', null, '1532431656.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1593', 'Executed', '2018-07-24 11:27:38.243061', '0.00', null, '1532431658.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1594', 'Executed', '2018-07-24 11:27:40.243061', '0.00', null, '1532431660.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1595', 'Executed', '2018-07-24 11:27:42.243061', '0.00', null, '1532431662.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1596', 'Started execution', '2018-07-24 11:27:42.243061', null, '1532431662.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1597', 'Executed', '2018-07-24 11:27:44.243061', '0.00', null, '1532431664.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1598', 'Executed', '2018-07-24 11:27:46.243061', '0.00', null, '1532431666.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1599', 'Executed', '2018-07-24 11:27:48.243061', '0.00', null, '1532431668.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1600', 'Executed', '2018-07-24 11:27:50.243061', '0.00', null, '1532431670.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1601', 'Started execution', '2018-07-24 11:27:52.243061', null, '1532431672.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1602', 'Executed', '2018-07-24 11:27:54.243061', '0.00', null, '1532431674.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1603', 'Started execution', '2018-07-24 11:27:54.243061', null, '1532431674.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1604', 'Executed', '2018-07-24 11:27:56.243061', '0.00', null, '1532431676.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1605', 'Started execution', '2018-07-24 11:27:56.243061', null, '1532431676.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1606', 'Executed', '2018-07-24 11:27:58.243061', '0.00', null, '1532431678.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1607', 'Executed', '2018-07-24 11:28:00.243061', '0.00', null, '1532431680.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1608', 'Executed', '2018-07-24 11:28:02.243061', '0.00', null, '1532431682.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1609', 'Executed', '2018-07-24 11:28:04.243061', '0.00', null, '1532431684.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1610', 'Started execution', '2018-07-24 11:28:04.243061', null, '1532431684.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1611', 'Executed', '2018-07-24 11:28:06.243061', '0.00', null, '1532431686.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1612', 'Started execution', '2018-07-24 11:28:06.243061', null, '1532431686.45', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1613', 'Executed', '2018-07-24 11:28:08.243061', '0.00', null, '1532431688.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1614', 'Started execution', '2018-07-24 11:28:08.243061', null, '1532431688.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1615', 'Executed', '2018-07-24 11:28:10.243061', '0.00', null, '1532431690.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1616', 'Executed', '2018-07-24 11:28:12.243061', '0.00', null, '1532431692.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1617', 'Started execution', '2018-07-24 11:28:12.243061', null, '1532431692.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1618', 'Executed', '2018-07-24 11:28:14.243061', '0.00', null, '1532431694.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1619', 'Started execution', '2018-07-24 11:28:14.243061', null, '1532431694.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1620', 'Executed', '2018-07-24 11:28:16.243061', '0.00', null, '1532431696.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1621', 'Executed', '2018-07-24 11:28:18.243061', '0.00', null, '1532431698.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1622', 'Started execution', '2018-07-24 11:28:18.243061', null, '1532431698.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1623', 'Executed', '2018-07-24 11:28:20.243061', '0.00', null, '1532431700.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1624', 'Executed', '2018-07-24 11:28:22.243061', '0.00', null, '1532431702.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1625', 'Started execution', '2018-07-24 11:28:22.243061', null, '1532431702.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1626', 'Executed', '2018-07-24 11:28:24.243061', '0.00', null, '1532431704.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1627', 'Executed', '2018-07-24 11:28:26.243061', '0.00', null, '1532431706.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1628', 'Started execution', '2018-07-24 11:28:26.243061', null, '1532431706.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1629', 'Executed', '2018-07-24 11:28:28.243061', '0.00', null, '1532431708.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1630', 'Executed', '2018-07-24 11:28:30.243061', '0.00', null, '1532431710.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1631', 'Started execution', '2018-07-24 11:28:30.243061', null, '1532431710.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1632', 'Executed', '2018-07-24 11:28:32.243061', '0.00', null, '1532431712.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1633', 'Executed', '2018-07-24 11:28:34.243061', '0.00', null, '1532431714.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1634', 'Executed', '2018-07-24 11:28:36.243061', '0.00', null, '1532431716.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1635', 'Executed', '2018-07-24 11:28:38.243061', '0.00', null, '1532431718.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1636', 'Started execution', '2018-07-24 11:28:38.243061', null, '1532431718.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1637', 'Executed', '2018-07-24 11:28:40.243061', '0.00', null, '1532431720.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1638', 'Started execution', '2018-07-24 11:28:40.243061', null, '1532431720.55', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1639', 'Executed', '2018-07-24 11:28:42.243061', '0.00', null, '1532431722.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1640', 'Executed', '2018-07-24 11:28:44.243061', '0.00', null, '1532431724.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1641', 'Executed', '2018-07-24 11:28:46.243061', '0.00', null, '1532431726.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1642', 'Started execution', '2018-07-24 11:28:46.243061', null, '1532431726.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1643', 'Executed', '2018-07-24 11:28:48.243061', '0.00', null, '1532431728.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1644', 'Executed', '2018-07-24 11:28:50.243061', '0.00', null, '1532431730.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1645', 'Started execution', '2018-07-24 11:28:50.243061', null, '1532431730.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1646', 'Executed', '2018-07-24 11:28:52.243061', '0.00', null, '1532431732.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1647', 'Executed', '2018-07-24 11:28:54.243061', '0.00', null, '1532431734.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1648', 'Executed', '2018-07-24 11:28:56.243061', '0.00', null, '1532431736.36', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1649', 'Executed', '2018-07-24 11:28:58.243061', '0.00', null, '1532431738.38', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1650', 'Started execution', '2018-07-24 11:28:58.243061', null, '1532431738.34', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1651', 'Executed', '2018-07-24 11:29:00.243061', '0.00', null, '1532431740.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1652', 'Started execution', '2018-07-24 11:29:00.243061', null, '1532431740.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1653', 'Executed', '2018-07-24 11:29:02.243061', '0.00', null, '1532431742.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1654', 'Started execution', '2018-07-24 11:29:02.243061', null, '1532431742.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1655', 'Executed', '2018-07-24 11:29:04.243061', '0.00', null, '1532431744.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1656', 'Executed', '2018-07-24 11:29:06.243061', '0.00', null, '1532431746.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1657', 'Executed', '2018-07-24 11:29:08.243061', '0.00', null, '1532431748.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1658', 'Started execution', '2018-07-24 11:29:08.243061', null, '1532431748.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1659', 'Executed', '2018-07-24 11:29:10.243061', '0.00', null, '1532431750.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1660', 'Started execution', '2018-07-24 11:29:10.243061', null, '1532431750.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1661', 'Executed', '2018-07-24 11:29:12.243061', '0.00', null, '1532431752.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1662', 'Started execution', '2018-07-24 11:29:12.243061', null, '1532431752.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1663', 'Executed', '2018-07-24 11:29:14.243061', '0.00', null, '1532431754.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1664', 'Executed', '2018-07-24 11:29:16.243061', '0.00', null, '1532431756.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1665', 'Executed', '2018-07-24 11:29:18.243061', '0.00', null, '1532431758.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1666', 'Started execution', '2018-07-24 11:29:18.243061', null, '1532431758.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1667', 'Executed', '2018-07-24 11:29:20.243061', '0.00', null, '1532431760.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1668', 'Executed', '2018-07-24 11:29:22.243061', '0.00', null, '1532431762.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1669', 'Started execution', '2018-07-24 11:29:22.243061', null, '1532431762.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1670', 'Executed', '2018-07-24 11:29:24.243061', '0.00', null, '1532431764.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1671', 'Started execution', '2018-07-24 11:29:24.243061', null, '1532431764.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1672', 'Executed', '2018-07-24 11:29:26.243061', '0.00', null, '1532431766.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1673', 'Executed', '2018-07-24 11:29:28.243061', '0.00', null, '1532431768.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1674', 'Executed', '2018-07-24 11:29:30.243061', '0.00', null, '1532431770.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1675', 'Executed', '2018-07-24 11:29:32.243061', '0.00', null, '1532431772.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1676', 'Executed', '2018-07-24 11:29:34.243061', '0.00', null, '1532431774.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1677', 'Executed', '2018-07-24 11:29:36.243061', '0.00', null, '1532431776.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1678', 'Executed', '2018-07-24 11:29:38.243061', '0.00', '1532431778.61', '1532431778.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1679', 'Executed', '2018-07-24 11:29:40.243061', '0.00', null, '1532431780.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1680', 'Executed', '2018-07-24 11:29:42.243061', '0.00', null, '1532431782.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1681', 'Started execution', '2018-07-24 11:29:42.243061', null, '1532431782.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1682', 'Executed', '2018-07-24 11:29:44.243061', '0.00', null, '1532431784.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1683', 'Started execution', '2018-07-24 11:29:44.243061', null, '1532431784.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1684', 'Executed', '2018-07-24 11:29:46.243061', '0.00', null, '1532431786.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1685', 'Executed', '2018-07-24 11:29:48.243061', '0.00', null, '1532431788.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1686', 'Started execution', '2018-07-24 11:29:48.243061', null, '1532431788.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1687', 'Executed', '2018-07-24 11:29:50.243061', '0.00', null, '1532431790.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1688', 'Started execution', '2018-07-24 11:29:50.243061', null, '1532431790.55', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1689', 'Executed', '2018-07-24 11:29:52.243061', '0.00', null, '1532431792.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1690', 'Executed', '2018-07-24 11:29:54.243061', '0.00', null, '1532431794.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1691', 'Started execution', '2018-07-24 11:29:54.243061', null, '1532431794.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1692', 'Executed', '2018-07-24 11:29:56.243061', '0.00', null, '1532431796.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1693', 'Executed', '2018-07-24 11:29:58.243061', '0.00', null, '1532431798.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1694', 'Executed', '2018-07-24 11:30:00.243061', '0.00', null, '1532431800.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1695', 'Started execution', '2018-07-24 11:30:00.243061', null, '1532431800.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1696', 'Executed', '2018-07-24 11:30:02.243061', '0.00', null, '1532431802.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1697', 'Executed', '2018-07-24 11:30:04.243061', '0.00', null, '1532431804.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1698', 'Started execution', '2018-07-24 11:30:04.243061', null, '1532431804.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1699', 'Executed', '2018-07-24 11:30:06.243061', '0.00', null, '1532431806.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1700', 'Executed', '2018-07-24 11:30:08.243061', '0.00', null, '1532431808.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1701', 'Started execution', '2018-07-24 11:30:08.243061', null, '1532431808.48', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1702', 'Executed', '2018-07-24 11:30:10.243061', '0.00', null, '1532431810.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1703', 'Started execution', '2018-07-24 11:30:10.243061', null, '1532431810.57', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1704', 'Executed', '2018-07-24 11:30:12.243061', '0.00', null, '1532431812.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1705', 'Started execution', '2018-07-24 11:30:12.243061', null, '1532431812.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1706', 'Executed', '2018-07-24 11:30:14.243061', '0.00', null, '1532431814.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1707', 'Started execution', '2018-07-24 11:30:14.243061', null, '1532431814.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1708', 'Executed', '2018-07-24 11:30:16.243061', '0.00', null, '1532431816.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1709', 'Executed', '2018-07-24 11:30:18.243061', '0.00', null, '1532431818.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1710', 'Executed', '2018-07-24 11:30:20.243061', '0.00', null, '1532431820.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1711', 'Executed', '2018-07-24 11:30:22.243061', '0.00', null, '1532431822.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1712', 'Executed', '2018-07-24 11:30:24.243061', '0.00', null, '1532431824.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1713', 'Executed', '2018-07-24 11:30:26.243061', '0.00', null, '1532431826.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1714', 'Executed', '2018-07-24 11:30:28.243061', '0.00', null, '1532431828.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1715', 'Started execution', '2018-07-24 11:30:28.243061', null, '1532431828.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1716', 'Executed', '2018-07-24 11:30:30.243061', '0.00', null, '1532431830.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1717', 'Started execution', '2018-07-24 11:30:30.243061', null, '1532431830.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1718', 'Executed', '2018-07-24 11:30:32.243061', '0.00', null, '1532431832.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1719', 'Executed', '2018-07-24 11:30:34.243061', '0.00', null, '1532431834.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1720', 'Executed', '2018-07-24 11:30:36.243061', '0.00', null, '1532431836.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1721', 'Executed', '2018-07-24 11:30:38.243061', '0.00', null, '1532431838.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1722', 'Executed', '2018-07-24 11:30:40.243061', '0.00', null, '1532431840.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1723', 'Executed', '2018-07-24 11:30:42.243061', '0.00', null, '1532431842.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1724', 'Executed', '2018-07-24 11:30:44.243061', '0.00', null, '1532431844.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1725', 'Started execution', '2018-07-24 11:30:44.243061', null, '1532431844.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1726', 'Executed', '2018-07-24 11:30:46.243061', '0.00', null, '1532431846.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1727', 'Executed', '2018-07-24 11:30:48.243061', '0.00', null, '1532431848.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1728', 'Executed', '2018-07-24 11:30:50.243061', '0.00', null, '1532431850.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1729', 'Started execution', '2018-07-24 11:30:50.243061', null, '1532431850.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1730', 'Executed', '2018-07-24 11:30:52.243061', '0.00', null, '1532431852.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1731', 'Executed', '2018-07-24 11:30:54.243061', '0.00', null, '1532431854.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1732', 'Executed', '2018-07-24 11:30:56.243061', '0.00', null, '1532431856.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1733', 'Started execution', '2018-07-24 11:30:56.243061', null, '1532431856.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1734', 'Executed', '2018-07-24 11:30:58.243061', '0.00', null, '1532431858.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1735', 'Executed', '2018-07-24 11:31:00.243061', '0.00', null, '1532431860.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1736', 'Started execution', '2018-07-24 11:31:00.243061', null, '1532431860.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1737', 'Executed', '2018-07-24 11:31:02.243061', '0.00', null, '1532431862.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1738', 'Started execution', '2018-07-24 11:31:02.243061', null, '1532431862.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1739', 'Executed', '2018-07-24 11:31:04.243061', '0.00', null, '1532431864.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1740', 'Executed', '2018-07-24 11:31:06.243061', '0.00', null, '1532431866.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1741', 'Started execution', '2018-07-24 11:31:06.243061', null, '1532431866.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1742', 'Executed', '2018-07-24 11:31:08.243061', '0.00', null, '1532431868.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1743', 'Started execution', '2018-07-24 11:31:08.243061', null, '1532431868.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1744', 'Executed', '2018-07-24 11:31:10.243061', '0.00', null, '1532431870.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1745', 'Started execution', '2018-07-24 11:31:10.243061', null, '1532431870.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1746', 'Executed', '2018-07-24 11:31:12.243061', '0.00', null, '1532431872.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1747', 'Started execution', '2018-07-24 11:31:12.243061', null, '1532431872.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1748', 'Executed', '2018-07-24 11:31:14.243061', '0.00', null, '1532431874.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1749', 'Started execution', '2018-07-24 11:31:14.243061', null, '1532431874.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1750', 'Executed', '2018-07-24 11:31:16.243061', '0.00', null, '1532431876.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1751', 'Started execution', '2018-07-24 11:31:16.243061', null, '1532431876.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1752', 'Executed', '2018-07-24 11:31:18.243061', '0.00', null, '1532431878.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1753', 'Started execution', '2018-07-24 11:31:18.243061', null, '1532431878.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1754', 'Executed', '2018-07-24 11:31:20.243061', '0.00', null, '1532431880.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1755', 'Started execution', '2018-07-24 11:31:20.243061', null, '1532431880.55', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1756', 'Executed', '2018-07-24 11:31:22.243061', '0.00', null, '1532431882.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1757', 'Started execution', '2018-07-24 11:31:22.243061', null, '1532431882.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1758', 'Executed', '2018-07-24 11:31:24.243061', '0.00', null, '1532431884.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1759', 'Started execution', '2018-07-24 11:31:24.243061', null, '1532431884.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1760', 'Executed', '2018-07-24 11:31:26.243061', '0.00', null, '1532431886.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1761', 'Started execution', '2018-07-24 11:31:26.243061', null, '1532431886.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1762', 'Executed', '2018-07-24 11:31:28.243061', '0.00', null, '1532431888.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1763', 'Started execution', '2018-07-24 11:31:28.243061', null, '1532431888.37', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1764', 'Executed', '2018-07-24 11:31:30.243061', '0.00', null, '1532431890.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1765', 'Started execution', '2018-07-24 11:31:30.243061', null, '1532431890.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1766', 'Executed', '2018-07-24 11:31:32.243061', '0.00', null, '1532431892.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1767', 'Started execution', '2018-07-24 11:31:32.243061', null, '1532431892.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1768', 'Executed', '2018-07-24 11:31:34.243061', '0.00', null, '1532431894.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1769', 'Executed', '2018-07-24 11:31:36.243061', '0.00', null, '1532431896.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1770', 'Executed', '2018-07-24 11:31:38.243061', '0.00', null, '1532431898.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1771', 'Executed', '2018-07-24 11:31:40.243061', '0.00', null, '1532431900.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1772', 'Started execution', '2018-07-24 11:31:40.243061', null, '1532431900.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1773', 'Executed', '2018-07-24 11:31:42.243061', '0.00', null, '1532431902.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1774', 'Executed', '2018-07-24 11:31:44.243061', '0.00', null, '1532431904.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1775', 'Executed', '2018-07-24 11:31:46.243061', '0.00', null, '1532431906.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1776', 'Started execution', '2018-07-24 11:31:46.243061', null, '1532431906.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1777', 'Executed', '2018-07-24 11:31:48.243061', '0.00', null, '1532431908.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1778', 'Started execution', '2018-07-24 11:31:48.243061', null, '1532431908.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1779', 'Executed', '2018-07-24 11:31:50.243061', '0.00', null, '1532431910.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1780', 'Started execution', '2018-07-24 11:31:50.243061', null, '1532431910.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1781', 'Executed', '2018-07-24 11:31:52.243061', '0.00', null, '1532431912.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1782', 'Started execution', '2018-07-24 11:31:52.243061', null, '1532431912.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1783', 'Executed', '2018-07-24 11:31:54.243061', '0.00', null, '1532431914.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1784', 'Started execution', '2018-07-24 11:31:54.243061', null, '1532431914.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1785', 'Executed', '2018-07-24 11:31:56.243061', '0.00', null, '1532431916.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1786', 'Started execution', '2018-07-24 11:31:56.243061', null, '1532431916.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1787', 'Executed', '2018-07-24 11:31:58.243061', '0.00', null, '1532431918.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1788', 'Started execution', '2018-07-24 11:31:58.243061', null, '1532431918.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1789', 'Executed', '2018-07-24 11:32:00.243061', '0.00', null, '1532431920.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1790', 'Started execution', '2018-07-24 11:32:00.243061', null, '1532431920.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1791', 'Executed', '2018-07-24 11:32:02.243061', '0.00', null, '1532431922.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1792', 'Started execution', '2018-07-24 11:32:02.243061', null, '1532431922.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1793', 'Executed', '2018-07-24 11:32:04.243061', '0.00', null, '1532431924.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1794', 'Started execution', '2018-07-24 11:32:04.243061', null, '1532431924.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1795', 'Executed', '2018-07-24 11:32:06.243061', '0.00', null, '1532431926.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1796', 'Started execution', '2018-07-24 11:32:06.243061', null, '1532431926.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1797', 'Executed', '2018-07-24 11:32:08.243061', '0.00', null, '1532431928.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1798', 'Executed', '2018-07-24 11:32:10.243061', '0.00', null, '1532431930.68', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1799', 'Started execution', '2018-07-24 11:32:10.243061', null, '1532431930.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1800', 'Executed', '2018-07-24 11:32:12.243061', '0.00', null, '1532431932.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1801', 'Executed', '2018-07-24 11:32:14.243061', '0.00', null, '1532431934.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1802', 'Started execution', '2018-07-24 11:32:14.243061', null, '1532431934.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1803', 'Executed', '2018-07-24 11:32:16.243061', '0.00', null, '1532431936.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1804', 'Started execution', '2018-07-24 11:32:16.243061', null, '1532431936.41', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1805', 'Executed', '2018-07-24 11:32:18.243061', '0.00', null, '1532431938.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1806', 'Started execution', '2018-07-24 11:32:18.243061', null, '1532431938.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1807', 'Executed', '2018-07-24 11:32:20.243061', '0.00', null, '1532431940.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1808', 'Started execution', '2018-07-24 11:32:20.243061', null, '1532431940.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1809', 'Executed', '2018-07-24 11:32:22.243061', '0.00', null, '1532431942.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1810', 'Executed', '2018-07-24 11:32:24.243061', '0.00', null, '1532431944.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1811', 'Executed', '2018-07-24 11:32:26.243061', '0.00', null, '1532431946.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1812', 'Executed', '2018-07-24 11:32:28.243061', '0.00', null, '1532431948.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1813', 'Executed', '2018-07-24 11:32:30.243061', '0.00', null, '1532431950.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1814', 'Executed', '2018-07-24 11:32:32.243061', '0.00', null, '1532431952.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1815', 'Executed', '2018-07-24 11:32:34.243061', '0.00', null, '1532431954.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1816', 'Executed', '2018-07-24 11:32:36.243061', '0.00', null, '1532431956.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1817', 'Executed', '2018-07-24 11:32:38.243061', '0.00', null, '1532431958.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1818', 'Started execution', '2018-07-24 11:32:38.243061', null, '1532431958.54', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1819', 'Executed', '2018-07-24 11:32:40.243061', '0.00', null, '1532431960.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1820', 'Executed', '2018-07-24 11:32:42.243061', '0.00', null, '1532431962.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1821', 'Started execution', '2018-07-24 11:32:42.243061', null, '1532431962.51', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1822', 'Executed', '2018-07-24 11:32:44.243061', '0.00', null, '1532431964.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1823', 'Executed', '2018-07-24 11:32:46.243061', '0.00', null, '1532431966.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1824', 'Started execution', '2018-07-24 11:32:46.243061', null, '1532431966.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1825', 'Executed', '2018-07-24 11:32:48.243061', '0.00', null, '1532431968.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1826', 'Executed', '2018-07-24 11:32:50.243061', '0.00', null, '1532431970.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1827', 'Started execution', '2018-07-24 11:32:50.243061', null, '1532431970.46', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1828', 'Executed', '2018-07-24 11:32:52.243061', '0.00', null, '1532431972.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1829', 'Executed', '2018-07-24 11:32:54.243061', '0.00', null, '1532431974.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1830', 'Started execution', '2018-07-24 11:32:54.243061', null, '1532431974.55', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1831', 'Started execution', '2018-07-24 11:51:02.991530', null, '1532433063.22', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1832', 'Executed', '2018-07-24 11:51:02.991530', '0.00', null, '1532433063.28', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1833', 'Executed', '2018-07-24 11:51:04.991530', '-0.19', '1532433065.56', '1532433065.37', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1834', 'Executed', '2018-07-24 11:51:06.991530', '-0.12', '1532433067.54', '1532433067.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1835', 'Executed', '2018-07-24 11:51:08.991530', '-0.12', '1532433069.51', '1532433069.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1836', 'Executed', '2018-07-24 11:51:10.991530', '-0.09', '1532433071.45', '1532433071.36', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1837', 'Executed', '2018-07-24 11:51:12.991530', '-0.21', '1532433073.50', '1532433073.29', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1838', 'Executed', '2018-07-24 11:51:14.991530', '-0.28', '1532433075.92', '1532433075.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1839', 'Executed', '2018-07-24 11:51:16.991530', '-0.04', '1532433077.78', '1532433077.74', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1840', 'Executed', '2018-07-24 11:51:18.991530', '-0.06', '1532433079.29', '1532433079.23', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1841', 'Executed', '2018-07-24 11:51:20.991530', '-0.05', '1532433081.35', '1532433081.30', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1842', 'Executed', '2018-07-24 11:51:22.991530', '0.00', null, '1532433083.28', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1843', 'Started execution', '2018-07-24 11:51:22.991530', null, '1532433083.24', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1844', 'Executed', '2018-07-24 11:51:24.991530', '0.00', null, '1532433085.18', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1845', 'Executed', '2018-07-24 11:51:26.991530', '0.00', null, '1532433087.14', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1846', 'Started execution', '2018-07-24 11:51:26.991530', null, '1532433087.10', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1847', 'Executed', '2018-07-24 11:51:28.991530', '0.00', null, '1532433089.26', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1848', 'Started execution', '2018-07-24 11:51:28.991530', null, '1532433089.18', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1849', 'Executed', '2018-07-24 11:51:30.991530', '0.00', null, '1532433091.33', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1850', 'Executed', '2018-07-24 11:51:32.991530', '0.00', null, '1532433093.21', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1851', 'Started execution', '2018-07-24 11:51:32.991530', null, '1532433093.17', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1852', 'Executed', '2018-07-24 11:51:34.991530', '0.00', null, '1532433095.18', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1853', 'Started execution', '2018-07-24 11:51:34.991530', null, '1532433095.15', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1854', 'Executed', '2018-07-24 11:51:36.991530', '0.00', null, '1532433097.18', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1855', 'Started execution', '2018-07-24 11:51:36.991530', null, '1532433097.13', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1856', 'Executed', '2018-07-24 11:51:38.991530', '0.00', null, '1532433099.18', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1857', 'Started execution', '2018-07-24 11:51:38.991530', null, '1532433099.14', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1858', 'Executed', '2018-07-24 11:51:40.991530', '0.00', null, '1532433101.23', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1859', 'Started execution', '2018-07-24 11:51:40.991530', null, '1532433101.20', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1860', 'Executed', '2018-07-24 11:51:42.991530', '0.00', null, '1532433103.25', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1861', 'Executed', '2018-07-24 11:51:44.991530', '0.00', null, '1532433105.20', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1862', 'Started execution', '2018-07-24 11:51:44.991530', null, '1532433105.16', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1863', 'Executed', '2018-07-24 11:51:46.991530', '0.00', null, '1532433107.24', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1864', 'Executed', '2018-07-24 11:51:48.991530', '0.00', null, '1532433109.24', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1865', 'Executed', '2018-07-24 11:51:50.991530', '0.00', null, '1532433111.20', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1866', 'Executed', '2018-07-24 11:51:52.991530', '0.00', null, '1532433113.24', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1867', 'Executed', '2018-07-24 11:51:54.991530', '0.00', null, '1532433115.25', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1868', 'Executed', '2018-07-24 11:51:56.991530', '0.00', null, '1532433117.23', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1869', 'Started execution', '2018-07-24 11:51:56.991530', null, '1532433117.20', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1870', 'Executed', '2018-07-24 11:51:58.991530', '0.00', null, '1532433119.20', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1871', 'Started execution', '2018-07-24 11:51:58.991530', null, '1532433119.16', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1872', 'Executed', '2018-07-24 11:52:00.991530', '0.00', null, '1532433121.20', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1873', 'Executed', '2018-07-24 11:52:02.991530', '0.00', null, '1532433123.18', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1874', 'Executed', '2018-07-24 11:52:04.991530', '0.00', null, '1532433125.19', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1875', 'Executed', '2018-07-24 11:52:06.991530', '0.00', null, '1532433127.31', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1876', 'Started execution', '2018-07-24 11:52:06.991530', null, '1532433127.21', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1877', 'Executed', '2018-07-24 11:52:24.663645', '0.00', null, '1532433144.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1878', 'Started execution', '2018-07-24 11:52:24.663645', null, '1532433144.74', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1879', 'Executed', '2018-07-24 11:52:26.663645', '-0.11', '1532433147.07', '1532433146.96', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1880', 'Executed', '2018-07-24 11:52:28.663645', '0.00', null, '1532433149.09', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1881', 'Started execution', '2018-07-24 11:52:28.663645', null, '1532433149.03', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1882', 'Executed', '2018-07-24 11:52:30.663645', '0.00', null, '1532433150.96', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1883', 'Executed', '2018-07-24 11:52:32.663645', '-0.09', '1532433153.01', '1532433152.92', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1884', 'Executed', '2018-07-24 11:52:34.663645', '0.00', null, '1532433155.00', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1885', 'Executed', '2018-07-24 11:52:36.663645', '0.00', null, '1532433156.98', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1886', 'Executed', '2018-07-24 11:52:58.244473', '0.00', null, '1532433178.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1887', 'Started execution', '2018-07-24 11:52:58.244473', null, '1532433178.39', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1888', 'Executed', '2018-07-24 11:53:00.244473', '-0.24', '1532433180.90', '1532433180.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1889', 'Executed', '2018-07-24 11:53:02.244473', '-0.07', '1532433182.71', '1532433182.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1890', 'Executed', '2018-07-24 11:53:04.244473', '-0.12', '1532433184.69', '1532433184.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1891', 'Executed', '2018-07-24 11:53:06.244473', '-0.06', '1532433186.67', '1532433186.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1892', 'Executed', '2018-07-24 11:53:08.244473', '-0.10', '1532433188.53', '1532433188.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1893', 'Executed', '2018-07-24 11:53:10.244473', '-0.10', '1532433190.82', '1532433190.72', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1894', 'Executed', '2018-07-24 11:53:12.244473', '-0.09', '1532433192.78', '1532433192.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1895', 'Executed', '2018-07-24 11:53:14.244473', '-0.07', '1532433194.67', '1532433194.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1896', 'Executed', '2018-07-24 11:53:16.244473', '-0.03', '1532433196.70', '1532433196.67', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1897', 'Executed', '2018-07-24 11:53:18.244473', '0.00', null, '1532433198.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1898', 'Started execution', '2018-07-24 11:53:18.244473', null, '1532433198.57', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1899', 'Executed', '2018-07-24 11:53:20.244473', '0.00', null, '1532433200.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1900', 'Started execution', '2018-07-24 11:53:20.244473', null, '1532433200.50', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1901', 'Executed', '2018-07-24 11:53:22.244473', '0.00', null, '1532433202.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1902', 'Started execution', '2018-07-24 11:53:22.244473', null, '1532433202.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1903', 'Executed', '2018-07-24 11:53:24.244473', '0.00', null, '1532433204.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1904', 'Started execution', '2018-07-24 11:53:24.244473', null, '1532433204.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1905', 'Executed', '2018-07-24 11:53:26.244473', '0.00', null, '1532433206.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1906', 'Started execution', '2018-07-24 11:53:26.244473', null, '1532433206.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1907', 'Executed', '2018-07-24 11:53:28.244473', '0.00', null, '1532433208.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1908', 'Executed', '2018-07-24 11:53:30.244473', '0.00', null, '1532433210.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1909', 'Started execution', '2018-07-24 11:53:30.244473', null, '1532433210.71', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1910', 'Executed', '2018-07-24 11:53:32.244473', '0.00', null, '1532433212.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1911', 'Started execution', '2018-07-24 11:53:32.244473', null, '1532433212.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1912', 'Executed', '2018-07-24 11:53:34.244473', '0.00', null, '1532433214.52', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1913', 'Started execution', '2018-07-24 11:53:34.244473', null, '1532433214.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1914', 'Executed', '2018-07-24 11:53:36.244473', '0.00', null, '1532433216.57', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1915', 'Started execution', '2018-07-24 11:53:36.244473', null, '1532433216.53', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1916', 'Executed', '2018-07-24 11:53:38.244473', '0.00', null, '1532433218.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1917', 'Executed', '2018-07-24 11:53:40.244473', '0.00', null, '1532433220.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1918', 'Started execution', '2018-07-24 11:53:40.244473', null, '1532433220.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1919', 'Executed', '2018-07-24 11:53:42.244473', '0.00', null, '1532433223.05', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1920', 'Started execution', '2018-07-24 11:53:42.244473', null, '1532433222.83', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1921', 'Executed', '2018-07-24 11:53:44.244473', '0.00', null, '1532433224.94', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1922', 'Executed', '2018-07-24 11:53:46.244473', '0.00', null, '1532433226.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1923', 'Executed', '2018-07-24 11:53:48.244473', '0.00', null, '1532433228.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1924', 'Started execution', '2018-07-24 11:53:48.244473', null, '1532433228.43', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1925', 'Executed', '2018-07-24 11:53:50.244473', '0.00', null, '1532433230.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1926', 'Started execution', '2018-07-24 11:53:50.244473', null, '1532433230.63', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1927', 'Executed', '2018-07-24 11:53:52.244473', '0.00', null, '1532433232.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1928', 'Executed', '2018-07-24 11:53:54.244473', '0.00', null, '1532433234.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1929', 'Executed', '2018-07-24 11:53:56.244473', '0.00', null, '1532433236.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1930', 'Executed', '2018-07-24 11:53:58.244473', '0.00', null, '1532433238.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1931', 'Executed', '2018-07-24 11:54:00.244473', '0.00', null, '1532433240.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1932', 'Executed', '2018-07-24 11:54:02.244473', '0.00', null, '1532433242.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1933', 'Started execution', '2018-07-24 11:54:02.244473', null, '1532433242.44', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1934', 'Executed', '2018-07-24 11:54:04.244473', '0.00', null, '1532433244.62', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1935', 'Executed', '2018-07-24 11:54:06.244473', '0.00', null, '1532433246.87', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1936', 'Executed', '2018-07-24 11:54:08.244473', '0.00', null, '1532433248.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1937', 'Started execution', '2018-07-24 11:54:08.244473', null, '1532433248.61', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1938', 'Executed', '2018-07-24 11:54:10.244473', '0.00', null, '1532433250.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1939', 'Started execution', '2018-07-24 11:54:10.244473', null, '1532433250.38', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1940', 'Executed', '2018-07-24 11:54:12.244473', '0.00', null, '1532433252.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1941', 'Started execution', '2018-07-24 11:54:12.244473', null, '1532433252.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1942', 'Executed', '2018-07-24 11:54:14.244473', '0.00', null, '1532433254.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1943', 'Started execution', '2018-07-24 11:54:14.244473', null, '1532433254.49', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1944', 'Executed', '2018-07-24 11:54:16.244473', '0.00', null, '1532433256.76', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1945', 'Executed', '2018-07-24 11:54:18.244473', '0.00', null, '1532433258.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1946', 'Started execution', '2018-07-24 11:54:18.244473', null, '1532433258.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1947', 'Executed', '2018-07-24 11:54:20.244473', '0.00', null, '1532433260.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1948', 'Started execution', '2018-07-24 11:54:20.244473', null, '1532433260.47', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1949', 'Executed', '2018-07-24 11:54:22.244473', '0.00', null, '1532433262.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1950', 'Started execution', '2018-07-24 11:54:22.244473', null, '1532433262.42', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1951', 'Executed', '2018-07-24 11:54:24.244473', '0.00', null, '1532433264.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1952', 'Started execution', '2018-07-24 11:54:26.244473', null, '1532433266.56', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1953', 'Executed', '2018-07-24 11:54:28.244473', '0.00', null, '1532433268.78', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1954', 'Executed', '2018-07-24 11:54:30.244473', '0.00', null, '1532433270.72', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1955', 'Executed', '2018-07-24 11:54:32.244473', '0.00', null, '1532433272.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1956', 'Executed', '2018-07-24 11:54:34.244473', '0.00', null, '1532433274.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1957', 'Executed', '2018-07-24 11:54:36.244473', '0.00', null, '1532433276.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1958', 'Executed', '2018-07-24 11:54:38.244473', '0.00', null, '1532433278.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1959', 'Executed', '2018-07-24 11:54:40.244473', '0.00', null, '1532433280.46', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1960', 'Executed', '2018-07-24 11:54:42.244473', '0.00', null, '1532433282.45', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1961', 'Executed', '2018-07-24 11:54:44.244473', '0.00', null, '1532433284.44', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1962', 'Executed', '2018-07-24 11:54:46.244473', '0.00', null, '1532433286.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1963', 'Executed', '2018-07-24 11:54:48.244473', '0.00', null, '1532433288.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1964', 'Executed', '2018-07-24 11:54:50.244473', '0.00', null, '1532433290.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1965', 'Started execution', '2018-07-24 11:54:50.244473', null, '1532433290.61', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1966', 'Executed', '2018-07-24 11:54:52.244473', '0.00', null, '1532433292.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1967', 'Executed', '2018-07-24 11:54:54.244473', '0.00', null, '1532433294.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1968', 'Executed', '2018-07-24 11:54:56.244473', '0.00', null, '1532433296.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1969', 'Executed', '2018-07-24 11:54:58.244473', '0.00', null, '1532433298.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1970', 'Executed', '2018-07-24 11:55:00.244473', '0.00', null, '1532433300.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1971', 'Executed', '2018-07-24 11:55:02.244473', '0.00', null, '1532433302.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1972', 'Started execution', '2018-07-24 11:55:02.244473', null, '1532433302.40', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1973', 'Executed', '2018-07-24 11:55:04.244473', '0.00', null, '1532433304.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1974', 'Executed', '2018-07-24 11:55:06.244473', '0.00', null, '1532433306.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1975', 'Executed', '2018-07-24 11:55:08.244473', '0.00', null, '1532433308.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1976', 'Executed', '2018-07-24 11:55:10.244473', '0.00', null, '1532433310.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1977', 'Executed', '2018-07-24 11:55:12.244473', '0.00', null, '1532433312.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1978', 'Executed', '2018-07-24 11:55:14.244473', '0.00', null, '1532433314.40', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1979', 'Executed', '2018-07-24 11:55:16.244473', '0.00', null, '1532433316.41', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1980', 'Started execution', '2018-07-24 11:55:16.244473', null, '1532433316.36', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1981', 'Executed', '2018-07-24 11:55:18.244473', '0.00', null, '1532433318.58', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1982', 'Executed', '2018-07-24 11:56:40.434637', '-0.14', '1532433400.62', '1532433400.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1983', 'Executed', '2018-07-24 11:56:42.434637', '-0.05', '1532433402.79', '1532433402.74', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1984', 'Executed', '2018-07-24 11:56:44.434637', '-0.06', '1532433404.79', '1532433404.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1985', 'Executed', '2018-07-24 11:56:46.434637', '-0.14', '1532433406.87', '1532433406.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1986', 'Executed', '2018-07-24 11:56:48.434637', '-0.05', '1532433408.76', '1532433408.71', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1987', 'Executed', '2018-07-24 11:56:50.434637', '-0.13', '1532433410.85', '1532433410.72', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1988', 'Executed', '2018-07-24 11:56:52.434637', '-0.05', '1532433412.83', '1532433412.78', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1989', 'Executed', '2018-07-24 11:56:54.434637', '-0.22', '1532433414.85', '1532433414.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1990', 'Executed', '2018-07-24 11:56:56.434637', '-0.07', '1532433416.87', '1532433416.80', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1991', 'Executed', '2018-07-24 11:56:58.434637', '-0.06', '1532433418.81', '1532433418.75', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1992', 'Executed', '2018-07-24 11:57:00.434637', '0.00', null, '1532433421.05', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1993', 'Executed', '2018-07-24 11:57:02.434637', '0.00', null, '1532433422.89', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1994', 'Started execution', '2018-07-24 11:57:02.434637', null, '1532433422.85', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1995', 'Executed', '2018-07-24 11:57:04.434637', '0.00', null, '1532433424.68', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1996', 'Started execution', '2018-07-24 11:57:04.434637', null, '1532433424.60', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1997', 'Executed', '2018-07-24 11:57:06.434637', '0.00', null, '1532433426.68', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1998', 'Started execution', '2018-07-24 11:57:06.434637', null, '1532433426.65', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('1999', 'Executed', '2018-07-24 11:57:08.434637', '0.00', null, '1532433428.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2000', 'Executed', '2018-07-24 11:57:10.434637', '0.00', null, '1532433430.89', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2001', 'Started execution', '2018-07-24 11:57:10.434637', null, '1532433430.85', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2002', 'Executed', '2018-07-24 11:57:12.434637', '0.00', null, '1532433432.81', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2003', 'Started execution', '2018-07-24 11:57:12.434637', null, '1532433432.78', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2004', 'Executed', '2018-07-24 11:57:14.434637', '0.00', null, '1532433434.65', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2005', 'Started execution', '2018-07-24 11:57:14.434637', null, '1532433434.58', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2006', 'Executed', '2018-07-24 11:57:16.434637', '0.00', null, '1532433436.84', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2007', 'Started execution', '2018-07-24 11:57:16.434637', null, '1532433436.79', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2008', 'Executed', '2018-07-24 11:57:18.434637', '0.00', null, '1532433438.78', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2009', 'Started execution', '2018-07-24 11:57:18.434637', null, '1532433438.74', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2010', 'Executed', '2018-07-24 11:57:20.434637', '0.00', null, '1532433440.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2011', 'Started execution', '2018-07-24 11:57:20.434637', null, '1532433440.58', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2012', 'Executed', '2018-07-24 11:57:22.434637', '0.00', null, '1532433442.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2013', 'Executed', '2018-07-24 11:57:24.434637', '0.00', null, '1532433444.93', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2014', 'Started execution', '2018-07-24 11:57:24.434637', null, '1532433444.87', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2015', 'Executed', '2018-07-24 11:57:26.434637', '0.00', null, '1532433446.85', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2016', 'Started execution', '2018-07-24 11:57:28.434637', null, '1532433448.67', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2017', 'Executed', '2018-07-24 11:57:30.434637', '0.00', null, '1532433450.79', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2018', 'Executed', '2018-07-24 11:57:32.434637', '0.00', null, '1532433452.70', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2019', 'Executed', '2018-07-24 11:57:34.434637', '0.00', null, '1532433455.02', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2020', 'Started execution', '2018-07-24 11:57:34.434637', null, '1532433454.91', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2021', 'Executed', '2018-07-24 11:57:36.434637', '0.00', null, '1532433456.90', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2022', 'Started execution', '2018-07-24 11:57:36.434637', null, '1532433456.83', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2023', 'Executed', '2018-07-24 11:57:42.366972', '-0.04', '1532433462.54', '1532433462.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2024', 'Executed', '2018-07-24 11:57:44.366972', '-0.10', '1532433464.70', '1532433464.60', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2025', 'Executed', '2018-07-24 11:57:50.504732', '0.00', null, '1532433470.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2026', 'Started execution', '2018-07-24 11:57:50.504732', null, '1532433470.58', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2027', 'Executed', '2018-07-24 11:57:52.504732', '-0.07', '1532433472.87', '1532433472.80', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2028', 'Executed', '2018-07-24 11:57:54.504732', '-0.09', '1532433474.93', '1532433474.84', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2029', 'Executed', '2018-07-24 11:57:56.504732', '-0.07', '1532433476.83', '1532433476.76', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2030', 'Executed', '2018-07-24 11:57:58.504732', '-0.08', '1532433478.85', '1532433478.77', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2031', 'Executed', '2018-07-24 11:58:00.504732', '-0.08', '1532433480.85', '1532433480.77', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2032', 'Executed', '2018-07-24 11:58:02.504732', '-0.14', '1532433482.96', '1532433482.82', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2033', 'Executed', '2018-07-24 11:58:04.504732', '-0.07', '1532433484.96', '1532433484.89', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2034', 'Executed', '2018-07-24 11:58:06.504732', '-0.10', '1532433486.89', '1532433486.79', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2035', 'Executed', '2018-07-24 11:58:08.504732', '-0.10', '1532433488.88', '1532433488.78', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2036', 'Executed', '2018-07-24 11:58:10.504732', '0.00', null, '1532433490.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2037', 'Started execution', '2018-07-24 11:58:10.504732', null, '1532433490.84', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2038', 'Executed', '2018-07-24 11:58:12.504732', '0.00', null, '1532433492.93', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2039', 'Started execution', '2018-07-24 11:58:12.504732', null, '1532433492.89', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2040', 'Executed', '2018-07-24 11:58:14.504732', '0.00', null, '1532433494.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2041', 'Executed', '2018-07-24 11:58:16.504732', '0.00', null, '1532433496.91', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2042', 'Started execution', '2018-07-24 11:58:16.504732', null, '1532433496.83', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2043', 'Executed', '2018-07-24 11:58:18.504732', '0.00', null, '1532433498.85', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2044', 'Started execution', '2018-07-24 11:58:18.504732', null, '1532433498.81', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2045', 'Executed', '2018-07-24 11:58:20.504732', '0.00', null, '1532433500.79', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2046', 'Executed', '2018-07-24 11:58:22.504732', '0.00', null, '1532433502.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2047', 'Executed', '2018-07-24 11:58:24.504732', '0.00', null, '1532433504.86', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2048', 'Started execution', '2018-07-24 11:58:24.504732', null, '1532433504.81', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2049', 'Executed', '2018-07-24 11:58:26.504732', '0.00', null, '1532433506.83', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2050', 'Started execution', '2018-07-24 11:58:26.504732', null, '1532433506.79', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2051', 'Executed', '2018-07-24 11:58:28.504732', '0.00', null, '1532433508.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2052', 'Executed', '2018-07-24 11:58:30.504732', '0.00', null, '1532433510.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2053', 'Started execution', '2018-07-24 11:58:30.504732', null, '1532433510.83', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2054', 'Executed', '2018-07-24 11:58:32.504732', '0.00', null, '1532433512.85', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2055', 'Started execution', '2018-07-24 11:58:32.504732', null, '1532433512.80', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2056', 'Started execution', '2018-07-24 11:58:34.504732', null, '1532433514.74', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2057', 'Executed', '2018-07-24 11:58:36.504732', '0.00', null, '1532433516.87', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2058', 'Started execution', '2018-07-24 11:58:36.504732', null, '1532433516.82', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2059', 'Executed', '2018-07-24 11:58:38.504732', '0.00', null, '1532433518.79', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2060', 'Started execution', '2018-07-24 11:58:38.504732', null, '1532433518.65', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2061', 'Executed', '2018-07-24 11:58:40.504732', '0.00', null, '1532433520.86', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2062', 'Executed', '2018-07-24 11:58:42.504732', '0.00', null, '1532433522.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2063', 'Executed', '2018-07-24 11:58:44.504732', '0.00', null, '1532433524.95', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2064', 'Started execution', '2018-07-24 11:58:44.504732', null, '1532433524.87', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2065', 'Executed', '2018-07-24 11:58:46.504732', '0.00', null, '1532433526.85', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2066', 'Executed', '2018-07-24 11:58:48.504732', '0.00', null, '1532433528.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2067', 'Started execution', '2018-07-24 11:58:48.504732', null, '1532433528.66', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2068', 'Executed', '2018-07-24 11:58:50.504732', '0.00', null, '1532433530.71', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2069', 'Executed', '2018-07-24 11:58:52.504732', '0.00', null, '1532433532.89', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2070', 'Executed', '2018-07-24 11:58:54.504732', '0.00', null, '1532433534.84', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2071', 'Started execution', '2018-07-24 11:58:56.504732', null, '1532433536.73', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2072', 'Executed', '2018-07-24 11:58:58.504732', '0.00', null, '1532433538.87', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2073', 'Executed', '2018-07-24 11:59:00.504732', '0.00', null, '1532433540.70', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2074', 'Executed', '2018-07-24 11:59:02.504732', '0.00', null, '1532433542.84', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2075', 'Started execution', '2018-07-24 11:59:02.504732', null, '1532433542.81', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2076', 'Executed', '2018-07-24 11:59:04.504732', '0.00', null, '1532433544.91', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2077', 'Executed', '2018-07-24 11:59:06.504732', '0.00', null, '1532433546.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2078', 'Executed', '2018-07-24 11:59:08.504732', '0.00', '1532433549.01', '1532433549.01', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2079', 'Executed', '2018-07-24 11:59:10.504732', '0.00', null, '1532433550.97', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2080', 'Started execution', '2018-07-24 11:59:10.504732', null, '1532433550.94', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2081', 'Executed', '2018-07-24 11:59:12.504732', '0.00', null, '1532433552.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2082', 'Executed', '2018-07-24 11:59:14.504732', '0.00', null, '1532433554.79', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2083', 'Executed', '2018-07-24 11:59:16.504732', '0.00', null, '1532433556.81', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2084', 'Executed', '2018-07-24 11:59:18.504732', '0.00', null, '1532433558.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2085', 'Executed', '2018-07-24 11:59:20.504732', '0.00', null, '1532433560.86', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2086', 'Executed', '2018-07-24 11:59:25.814181', '-0.09', '1532433565.95', '1532433565.86', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2087', 'Executed', '2018-07-24 11:59:31.462633', '0.00', null, '1532433571.64', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2088', 'Started execution', '2018-07-24 11:59:31.462633', null, '1532433571.58', null, null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2089', 'Error!', '2018-07-24 12:29:06.079928', '5.16', '1532435346.48', '1532435351.64', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=usdtbtc&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000017786018128>, \'Connection to api.huobi.pro timed out. (connect timeout=5)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=5)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2090', 'Error!', '2018-07-24 12:37:02.424029', '4.99', '1532435822.53', '1532435827.52', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=usdtbtc&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000027841FCAB00>, \'Connection to api.huobi.pro timed out. (connect timeout=5)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=5)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2091', 'Error!', '2018-07-24 12:37:32.424029', '4.93', '1532435852.71', '1532435857.64', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=usdtbtc&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x000002784203B358>, \'Connection to api.huobi.pro timed out. (connect timeout=5)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=5)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2092', 'Error!', '2018-07-24 12:38:02.424029', '4.94', '1532435882.68', '1532435887.62', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=usdtbtc&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x000002784203BF98>, \'Connection to api.huobi.pro timed out. (connect timeout=5)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=5)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2093', 'Error!', '2018-07-24 12:38:32.424029', '4.88', '1532435912.76', '1532435917.64', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=usdtbtc&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000027842049080>, \'Connection to api.huobi.pro timed out. (connect timeout=5)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=5)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2094', 'Error!', '2018-07-24 12:39:02.424029', '4.92', '1532435942.72', '1532435947.64', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=usdtbtc&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000027842049D30>, \'Connection to api.huobi.pro timed out. (connect timeout=5)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=5)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2095', 'Error!', '2018-07-24 12:39:32.424029', '4.90', '1532435972.74', '1532435977.64', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=usdtbtc&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000027842041710>, \'Connection to api.huobi.pro timed out. (connect timeout=5)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=5)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2096', 'Error!', '2018-07-24 12:40:36.180289', '4.93', '1532436036.29', '1532436041.22', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000017FCC02BB70>, \'Connection to api.huobi.pro timed out. (connect timeout=5)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=5)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2097', 'Error!', '2018-07-24 12:41:06.180289', '4.92', '1532436066.39', '1532436071.31', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000017FCC03FB38>, \'Connection to api.huobi.pro timed out. (connect timeout=5)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=5)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2098', 'Error!', '2018-07-24 12:41:36.180289', '4.92', '1532436096.59', '1532436101.51', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000017FCC0A0198>, \'Connection to api.huobi.pro timed out. (connect timeout=5)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=5)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2099', 'Error!', '2018-07-24 12:42:26.079076', '10.04', '1532436146.14', '1532436156.18', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x000001DA6D44AAC8>, \'Connection to api.huobi.pro timed out. (connect timeout=10)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=10)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2100', 'Error!', '2018-07-24 12:42:56.079076', '9.93', '1532436176.28', '1532436186.21', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x000001DA6E486320>, \'Connection to api.huobi.pro timed out. (connect timeout=10)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=10)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2101', 'Error!', '2018-07-24 12:43:45.231092', '10.02', '1532436225.30', '1532436235.32', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000016321804198>, \'Connection to api.huobi.pro timed out. (connect timeout=10)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=10)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2102', 'Error!', '2018-07-24 12:44:15.231092', '9.96', '1532436255.41', '1532436265.37', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x000001632186E9B0>, \'Connection to api.huobi.pro timed out. (connect timeout=10)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=10)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2103', 'Error!', '2018-07-24 12:45:05.131637', '9.98', '1532436305.19', '1532436315.17', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000028C4056CA58>, \'Connection to api.huobi.pro timed out. (connect timeout=10)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 33, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=10)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2104', 'Error!', '2018-07-24 12:45:35.131637', '9.81', '1532436335.47', '1532436345.28', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000028C415B7470>, \'Connection to api.huobi.pro timed out. (connect timeout=10)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 33, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=10)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2105', 'Error!', '2018-07-24 12:46:05.131637', '9.97', '1532436365.55', '1532436375.52', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ConnectTimeoutError(<urllib3.connection.VerifiedHTTPSConnection object at 0x0000028C415C0048>, \'Connection to api.huobi.pro timed out. (connect timeout=10)\'))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 33, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=10)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 496, in send\n    raise ConnectTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2106', 'Error!', '2018-07-24 12:46:35.131637', '11.22', '1532436395.34', '1532436406.56', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ProxyError(\'Cannot connect to proxy.\', timeout(\'_ssl.c:761: The handshake operation timed out\',)))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 33, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=10)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 502, in send\n    raise ProxyError(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2107', 'Executed', '2018-07-24 12:47:24.639870', '3.32', '1532436444.72', '1532436448.04', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2108', 'Executed', '2018-07-24 12:48:18.829754', '4.06', '1532436498.94', '1532436503.00', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2109', 'Executed', '2018-07-24 12:48:48.829754', '4.11', '1532436529.14', '1532436533.25', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2110', 'Executed', '2018-07-24 12:49:18.829754', '3.13', '1532436559.10', '1532436562.23', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2111', 'Error!', '2018-07-24 12:49:48.829754', '10.44', '1532436589.13', '1532436599.57', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ProxyError(\'Cannot connect to proxy.\', timeout(\'_ssl.c:761: The handshake operation timed out\',)))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=10)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 502, in send\n    raise ProxyError(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2112', 'Executed', '2018-07-24 12:50:47.622065', '2.32', '1532436647.74', '1532436650.06', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2113', 'Executed', '2018-07-24 12:51:17.622065', '1.69', '1532436677.90', '1532436679.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2114', 'Executed', '2018-07-24 12:51:47.622065', '1.78', '1532436707.91', '1532436709.69', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2115', 'Executed', '2018-07-24 12:52:17.622065', '1.76', '1532436737.94', '1532436739.70', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2116', 'Executed', '2018-07-24 12:52:47.622065', '3.59', '1532436768.00', '1532436771.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2117', 'Executed', '2018-07-24 12:53:17.622065', '5.97', '1532436797.86', '1532436803.83', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2118', 'Error!', '2018-07-24 13:06:00.864115', '10.92', '1532437561.03', '1532437571.95', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ProxyError(\'Cannot connect to proxy.\', timeout(\'_ssl.c:761: The handshake operation timed out\',)))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=10)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 502, in send\n    raise ProxyError(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2119', 'Error!', '2018-07-24 13:07:00.864115', '10.29', '1532437621.20', '1532437631.49', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ProxyError(\'Cannot connect to proxy.\', timeout(\'_ssl.c:761: The handshake operation timed out\',)))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=30)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 502, in send\n    raise ProxyError(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2120', 'Error!', '2018-07-24 13:08:15.551443', '30.97', '1532437695.66', '1532437726.63', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ProxyError(\'Cannot connect to proxy.\', timeout(\'_ssl.c:761: The handshake operation timed out\',)))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 13, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 25, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=30)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 502, in send\n    raise ProxyError(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2121', 'Executed', '2018-07-24 13:09:15.551443', '2.97', '1532437755.86', '1532437758.83', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2122', 'Executed', '2018-07-24 13:10:34.259613', '7.66', '1532437834.46', '1532437842.12', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2123', 'Executed', '2018-07-24 13:11:34.259613', '6.98', '1532437894.68', '1532437901.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2124', 'Executed', '2018-07-24 13:14:14.017129', '2.81', '1532438054.13', '1532438056.94', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2125', 'Executed', '2018-07-24 13:15:14.017129', '6.38', '1532438114.30', '1532438120.68', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2126', 'Executed', '2018-07-24 13:16:14.017129', '1.89', '1532438174.30', '1532438176.19', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2127', 'Executed', '2018-07-24 13:17:14.017129', '1.74', '1532438234.23', '1532438235.97', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2128', 'Executed', '2018-07-24 13:18:14.017129', '2.35', '1532438294.28', '1532438296.63', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2129', 'Executed', '2018-07-24 13:19:14.017129', '1.94', '1532438354.25', '1532438356.19', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2130', 'Executed', '2018-07-24 13:20:14.017129', '1.86', '1532438414.27', '1532438416.13', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2131', 'Executed', '2018-07-24 13:21:14.017129', '8.77', '1532438474.29', '1532438483.06', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2132', 'Executed', '2018-07-24 13:22:14.017129', '2.49', '1532438534.30', '1532438536.79', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2133', 'Executed', '2018-07-24 13:23:14.017129', '9.75', '1532438594.25', '1532438604.00', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2134', 'Executed', '2018-07-24 13:24:14.017129', '7.16', '1532438654.26', '1532438661.42', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2135', 'Executed', '2018-07-24 13:25:14.017129', '2.28', '1532438714.20', '1532438716.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2136', 'Executed', '2018-07-24 13:26:14.017129', '1.84', '1532438774.23', '1532438776.07', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2137', 'Executed', '2018-07-24 13:27:14.017129', '4.37', '1532438834.16', '1532438838.53', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2138', 'Executed', '2018-07-24 13:28:14.017129', '2.96', '1532438894.23', '1532438897.19', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2139', 'Executed', '2018-07-24 13:29:14.017129', '1.81', '1532438954.21', '1532438956.02', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2140', 'Executed', '2018-07-24 13:30:14.017129', '8.89', '1532439014.27', '1532439023.16', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2141', 'Executed', '2018-07-24 13:31:14.017129', '1.78', '1532439074.28', '1532439076.06', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2142', 'Executed', '2018-07-24 13:32:14.017129', '7.85', '1532439134.39', '1532439142.24', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2143', 'Executed', '2018-07-24 13:33:14.017129', '4.97', '1532439194.28', '1532439199.25', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2144', 'Executed', '2018-07-24 13:34:14.017129', '12.73', '1532439254.37', '1532439267.10', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2145', 'Executed', '2018-07-24 13:35:14.017129', '1.77', '1532439314.28', '1532439316.05', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2146', 'Executed', '2018-07-24 13:36:14.017129', '10.57', '1532439374.31', '1532439384.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2147', 'Executed', '2018-07-24 13:37:14.017129', '7.46', '1532439434.22', '1532439441.68', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2148', 'Executed', '2018-07-24 13:38:14.017129', '6.50', '1532439494.23', '1532439500.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2149', 'Executed', '2018-07-24 13:39:14.017129', '6.67', '1532439554.21', '1532439560.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2150', 'Executed', '2018-07-24 13:40:14.017129', '2.52', '1532439614.24', '1532439616.76', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2151', 'Executed', '2018-07-24 13:41:14.017129', '24.91', '1532439674.26', '1532439699.17', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2152', 'Executed', '2018-07-24 13:42:14.017129', '8.58', '1532439734.27', '1532439742.85', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2153', 'Executed', '2018-07-24 13:43:14.017129', '6.68', '1532439794.17', '1532439800.85', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2154', 'Executed', '2018-07-24 13:44:14.017129', '9.01', '1532439854.25', '1532439863.26', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2155', 'Executed', '2018-07-24 13:45:14.017129', '4.08', '1532439914.21', '1532439918.29', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2156', 'Executed', '2018-07-24 13:46:14.017129', '14.85', '1532439974.22', '1532439989.07', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2157', 'Executed', '2018-07-24 13:47:14.017129', '1.79', '1532440034.16', '1532440035.95', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2158', 'Executed', '2018-07-24 13:48:14.017129', '2.41', '1532440094.20', '1532440096.61', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2159', 'Executed', '2018-07-24 13:49:14.017129', '5.33', '1532440154.18', '1532440159.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2160', 'Executed', '2018-07-24 13:50:14.017129', '12.16', '1532440214.21', '1532440226.37', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2161', 'Executed', '2018-07-24 13:51:14.017129', '8.60', '1532440274.26', '1532440282.86', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2162', 'Executed', '2018-07-24 13:52:14.017129', '3.99', '1532440334.29', '1532440338.28', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2163', 'Executed', '2018-07-24 13:53:14.017129', '12.45', '1532440394.25', '1532440406.70', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2164', 'Error!', '2018-07-24 13:54:14.017129', '21.81', '1532440454.31', '1532440476.12', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by SSLError(SSLEOFError(8, \'EOF occurred in violation of protocol (_ssl.c:777)\'),))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 14, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 28, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=30)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 506, in send\n    raise SSLError(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2165', 'Executed', '2018-07-24 13:55:14.017129', '4.31', '1532440514.19', '1532440518.50', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2166', 'Executed', '2018-07-24 13:56:14.017129', '13.06', '1532440574.21', '1532440587.27', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2167', 'Error!', '2018-07-24 13:57:14.017129', '23.70', '1532440634.19', '1532440657.89', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by SSLError(SSLEOFError(8, \'EOF occurred in violation of protocol (_ssl.c:777)\'),))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 14, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 28, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=30)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 506, in send\n    raise SSLError(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2168', 'Executed', '2018-07-24 13:58:14.017129', '2.03', '1532440694.21', '1532440696.24', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2169', 'Executed', '2018-07-24 13:59:14.017129', '1.96', '1532440754.22', '1532440756.18', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2170', 'Executed', '2018-07-24 14:00:14.017129', '3.90', '1532440814.23', '1532440818.13', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2171', 'Executed', '2018-07-24 14:01:14.017129', '1.98', '1532440874.20', '1532440876.18', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2172', 'Executed', '2018-07-24 14:02:14.017129', '2.21', '1532440934.18', '1532440936.39', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2173', 'Executed', '2018-07-24 14:03:14.017129', '2.57', '1532440994.22', '1532440996.79', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2174', 'Executed', '2018-07-24 14:04:14.017129', '2.53', '1532441054.27', '1532441056.80', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2175', 'Executed', '2018-07-24 14:05:14.017129', '1.83', '1532441114.20', '1532441116.03', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2176', 'Executed', '2018-07-24 14:06:14.017129', '7.24', '1532441174.23', '1532441181.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2177', 'Executed', '2018-07-24 14:07:14.017129', '3.70', '1532441234.28', '1532441237.98', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2178', 'Executed', '2018-07-24 14:08:14.017129', '2.08', '1532441294.17', '1532441296.25', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2179', 'Executed', '2018-07-24 14:09:14.017129', '2.71', '1532441354.17', '1532441356.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2180', 'Executed', '2018-07-24 14:10:14.017129', '2.03', '1532441414.20', '1532441416.23', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2181', 'Executed', '2018-07-24 14:11:14.017129', '3.61', '1532441474.22', '1532441477.83', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2182', 'Executed', '2018-07-24 14:12:14.017129', '3.65', '1532441534.19', '1532441537.84', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2183', 'Executed', '2018-07-24 14:13:14.017129', '5.65', '1532441594.18', '1532441599.83', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2184', 'Executed', '2018-07-24 14:14:14.017129', '1.97', '1532441654.18', '1532441656.15', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2185', 'Executed', '2018-07-24 14:15:14.017129', '6.02', '1532441714.16', '1532441720.18', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2186', 'Executed', '2018-07-24 14:16:14.017129', '6.83', '1532441774.18', '1532441781.01', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2187', 'Executed', '2018-07-24 14:17:14.017129', '2.54', '1532441834.19', '1532441836.73', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2188', 'Executed', '2018-07-24 14:18:14.017129', '1.94', '1532441894.29', '1532441896.23', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2189', 'Executed', '2018-07-24 14:19:14.017129', '3.72', '1532441954.28', '1532441958.00', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2190', 'Executed', '2018-07-24 14:20:14.017129', '1.85', '1532442014.23', '1532442016.08', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2191', 'Executed', '2018-07-24 14:21:14.017129', '3.02', '1532442074.34', '1532442077.36', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2192', 'Executed', '2018-07-24 14:22:14.017129', '3.69', '1532442134.32', '1532442138.01', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2193', 'Executed', '2018-07-24 14:23:14.017129', '3.66', '1532442194.20', '1532442197.86', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2194', 'Executed', '2018-07-24 14:24:14.017129', '1.95', '1532442254.19', '1532442256.14', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2195', 'Executed', '2018-07-24 14:25:14.017129', '3.00', '1532442314.34', '1532442317.34', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2196', 'Executed', '2018-07-24 14:26:14.017129', '4.24', '1532442374.35', '1532442378.59', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2197', 'Executed', '2018-07-24 14:27:14.017129', '2.44', '1532442434.27', '1532442436.71', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2198', 'Error!', '2018-07-24 14:28:14.017129', '37.28', '1532442494.29', '1532442531.57', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Read timed out. (read timeout=30)', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 14, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 28, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=30)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 521, in send\n    raise ReadTimeout(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2199', 'Executed', '2018-07-24 14:29:14.017129', '9.84', '1532442554.25', '1532442564.09', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2200', 'Executed', '2018-07-24 14:30:14.017129', '4.91', '1532442614.32', '1532442619.23', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2201', 'Executed', '2018-07-24 14:31:14.017129', '14.85', '1532442674.18', '1532442689.03', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2202', 'Executed', '2018-07-24 14:32:14.017129', '3.02', '1532442734.21', '1532442737.23', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2203', 'Executed', '2018-07-24 14:33:14.017129', '3.10', '1532442794.23', '1532442797.33', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2204', 'Executed', '2018-07-24 14:34:14.017129', '2.08', '1532442854.22', '1532442856.30', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2205', 'Executed', '2018-07-24 14:35:14.017129', '5.96', '1532442914.21', '1532442920.17', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2206', 'Executed', '2018-07-24 14:36:14.017129', '13.00', '1532442974.30', '1532442987.30', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2207', 'Executed', '2018-07-24 14:37:14.017129', '14.68', '1532443034.26', '1532443048.94', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2208', 'Executed', '2018-07-24 14:38:14.017129', '8.48', '1532443094.38', '1532443102.86', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2209', 'Executed', '2018-07-24 14:39:14.017129', '3.51', '1532443154.29', '1532443157.80', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2210', 'Executed', '2018-07-24 14:40:14.017129', '2.25', '1532443214.41', '1532443216.66', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2211', 'Executed', '2018-07-24 14:41:14.017129', '7.91', '1532443274.27', '1532443282.18', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2212', 'Executed', '2018-07-24 14:42:14.017129', '3.27', '1532443334.27', '1532443337.54', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2213', 'Executed', '2018-07-24 14:43:14.017129', '1.97', '1532443394.24', '1532443396.21', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2214', 'Executed', '2018-07-24 14:44:14.017129', '3.11', '1532443454.32', '1532443457.43', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2215', 'Executed', '2018-07-24 14:45:14.017129', '5.44', '1532443514.42', '1532443519.86', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2216', 'Executed', '2018-07-24 14:46:14.017129', '8.04', '1532443574.33', '1532443582.37', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2217', 'Executed', '2018-07-24 14:47:14.017129', '6.81', '1532443634.34', '1532443641.15', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2218', 'Executed', '2018-07-24 14:48:14.017129', '7.77', '1532443694.32', '1532443702.09', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2219', 'Executed', '2018-07-24 14:49:14.017129', '10.84', '1532443754.30', '1532443765.14', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2220', 'Executed', '2018-07-24 14:50:14.017129', '15.06', '1532443814.41', '1532443829.47', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2221', 'Executed', '2018-07-24 14:51:14.017129', '29.15', '1532443874.33', '1532443903.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2222', 'Executed', '2018-07-24 14:52:14.017129', '18.81', '1532443934.34', '1532443953.15', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2223', 'Executed', '2018-07-24 14:53:14.017129', '11.61', '1532443994.27', '1532444005.88', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2224', 'Executed', '2018-07-24 14:54:14.017129', '7.23', '1532444054.26', '1532444061.49', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2225', 'Error!', '2018-07-24 14:55:14.017129', '31.39', '1532444114.19', '1532444145.58', 'HTTPSConnectionPool(host=\'api.huobi.pro\', port=443): Max retries exceeded with url: /market/history/kline?symbol=btcusdt&period=5min&size=50 (Caused by ProxyError(\'Cannot connect to proxy.\', timeout(\'_ssl.c:761: The handshake operation timed out\',)))', '  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\apscheduler\\executors\\base.py\", line 125, in run_job\n    retval = job.func(*job.args, **job.kwargs)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 14, in test_job\n    print(get_kline(\'usdt\', \'btc\'))\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\views.py\", line 28, in get_kline\n    return http_get_request(url, params)\n  File \"D:\\Users\\code\\python\\TradeSystem\\DataAcquisition\\HuoBiUtils.py\", line 32, in http_get_request\n    response = requests.get(url, postdata, headers=headers, timeout=30)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 72, in get\n    return request(\'get\', url, params=params, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\api.py\", line 58, in request\n    return session.request(method=method, url=url, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 508, in request\n    resp = self.send(prep, **send_kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\sessions.py\", line 618, in send\n    r = adapter.send(request, **kwargs)\n  File \"D:\\Users\\zhang\\Anaconda3\\lib\\site-packages\\requests\\adapters.py\", line 502, in send\n    raise ProxyError(e, request=request)\n', '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2226', 'Executed', '2018-07-24 14:56:14.017129', '6.01', '1532444174.20', '1532444180.21', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2227', 'Executed', '2018-07-24 14:57:14.017129', '6.30', '1532444234.21', '1532444240.51', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2228', 'Executed', '2018-07-24 14:58:14.017129', '6.37', '1532444294.19', '1532444300.56', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2229', 'Executed', '2018-07-24 14:59:14.017129', '2.95', '1532444354.20', '1532444357.15', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2230', 'Executed', '2018-07-24 15:00:14.017129', '2.29', '1532444414.19', '1532444416.48', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2231', 'Executed', '2018-07-24 15:01:14.017129', '8.38', '1532444474.17', '1532444482.55', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2232', 'Executed', '2018-07-24 15:02:14.017129', '6.77', '1532444534.19', '1532444540.96', null, null, '1');
INSERT INTO `django_apscheduler_djangojobexecution` VALUES ('2233', 'Executed', '2018-07-24 15:03:14.017129', '14.35', '1532444594.15', '1532444608.50', null, null, '1');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'DataAcquisition', 'klinedata');
INSERT INTO `django_content_type` VALUES ('8', 'DataAcquisition', 'klinedatarealtime');
INSERT INTO `django_content_type` VALUES ('11', 'DataAcquisition', 'tradeparis');
INSERT INTO `django_content_type` VALUES ('9', 'django_apscheduler', 'djangojob');
INSERT INTO `django_content_type` VALUES ('10', 'django_apscheduler', 'djangojobexecution');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'DataAcquisition', '0001_initial', '2018-07-23 14:15:01.743837');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0001_initial', '2018-07-23 14:15:02.188039');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2018-07-23 14:15:09.005937');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0001_initial', '2018-07-23 14:15:10.936956');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0002_logentry_remove_auto_add', '2018-07-23 14:15:11.002343');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2018-07-23 14:15:11.698150');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2018-07-23 14:15:12.262538');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2018-07-23 14:15:13.269268');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2018-07-23 14:15:13.315387');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2018-07-23 14:15:13.822427');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2018-07-23 14:15:13.837865');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2018-07-23 14:15:13.877405');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2018-07-23 14:15:14.321538');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2018-07-23 14:15:14.929518');
INSERT INTO `django_migrations` VALUES ('15', 'django_apscheduler', '0001_initial', '2018-07-23 14:15:16.547903');
INSERT INTO `django_migrations` VALUES ('16', 'django_apscheduler', '0002_auto_20180412_0758', '2018-07-23 14:15:16.965868');
INSERT INTO `django_migrations` VALUES ('17', 'sessions', '0001_initial', '2018-07-23 14:15:17.331394');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('w1wo7bdmkk89qbett4ubtghuttpb342u', 'YWFlM2JhYjBkOTY3MjNlMGEwOWY0NjI3MmI3ZDg3M2MyYTI4ZGU4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4MjdlNTlhMTEwODBiNTlkMWNiODA5ZWUxMzJiMzc5NGM1ZDJhY2U2In0=', '2018-08-07 12:12:41.481725');

-- ----------------------------
-- Table structure for `kline_15min`
-- ----------------------------
DROP TABLE IF EXISTS `kline_15min`;
CREATE TABLE `kline_15min` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trad_pari` bigint(20) unsigned NOT NULL,
  `k_id` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `count` varchar(20) NOT NULL,
  `open` varchar(20) NOT NULL,
  `close` varchar(20) NOT NULL,
  `high` varchar(20) NOT NULL,
  `vol` varchar(20) NOT NULL,
  `_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `k_id` (`k_id`) USING BTREE,
  KEY `trad_pari` (`trad_pari`),
  CONSTRAINT `kline_15min_ibfk_1` FOREIGN KEY (`trad_pari`) REFERENCES `trade_paris` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kline_15min
-- ----------------------------

-- ----------------------------
-- Table structure for `kline_1d`
-- ----------------------------
DROP TABLE IF EXISTS `kline_1d`;
CREATE TABLE `kline_1d` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trad_pari` bigint(20) unsigned NOT NULL,
  `k_id` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `count` varchar(20) NOT NULL,
  `open` varchar(20) NOT NULL,
  `close` varchar(20) NOT NULL,
  `high` varchar(20) NOT NULL,
  `vol` varchar(20) NOT NULL,
  `_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `k_id` (`k_id`) USING BTREE,
  KEY `trad_pari` (`trad_pari`),
  CONSTRAINT `kline_1d_ibfk_1` FOREIGN KEY (`trad_pari`) REFERENCES `trade_paris` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kline_1d
-- ----------------------------

-- ----------------------------
-- Table structure for `kline_1h`
-- ----------------------------
DROP TABLE IF EXISTS `kline_1h`;
CREATE TABLE `kline_1h` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trad_pari` bigint(20) unsigned NOT NULL,
  `k_id` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `count` varchar(20) NOT NULL,
  `open` varchar(20) NOT NULL,
  `close` varchar(20) NOT NULL,
  `high` varchar(20) NOT NULL,
  `vol` varchar(20) NOT NULL,
  `_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `k_id` (`k_id`) USING BTREE,
  KEY `trad_pari` (`trad_pari`),
  CONSTRAINT `kline_1h_ibfk_1` FOREIGN KEY (`trad_pari`) REFERENCES `trade_paris` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kline_1h
-- ----------------------------

-- ----------------------------
-- Table structure for `kline_30min`
-- ----------------------------
DROP TABLE IF EXISTS `kline_30min`;
CREATE TABLE `kline_30min` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trad_pari` bigint(20) unsigned NOT NULL,
  `k_id` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `count` varchar(20) NOT NULL,
  `open` varchar(20) NOT NULL,
  `close` varchar(20) NOT NULL,
  `high` varchar(20) NOT NULL,
  `vol` varchar(20) NOT NULL,
  `_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `k_id` (`k_id`) USING BTREE,
  KEY `trad_pari` (`trad_pari`),
  CONSTRAINT `kline_30min_ibfk_1` FOREIGN KEY (`trad_pari`) REFERENCES `trade_paris` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kline_30min
-- ----------------------------

-- ----------------------------
-- Table structure for `kline_4h`
-- ----------------------------
DROP TABLE IF EXISTS `kline_4h`;
CREATE TABLE `kline_4h` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trad_pari` bigint(20) unsigned NOT NULL,
  `k_id` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `count` varchar(20) NOT NULL,
  `open` varchar(20) NOT NULL,
  `close` varchar(20) NOT NULL,
  `high` varchar(20) NOT NULL,
  `vol` varchar(20) NOT NULL,
  `_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `k_id` (`k_id`) USING BTREE,
  KEY `trad_pari` (`trad_pari`),
  CONSTRAINT `kline_4h_ibfk_1` FOREIGN KEY (`trad_pari`) REFERENCES `trade_paris` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kline_4h
-- ----------------------------

-- ----------------------------
-- Table structure for `kline_5min`
-- ----------------------------
DROP TABLE IF EXISTS `kline_5min`;
CREATE TABLE `kline_5min` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trad_pari` bigint(20) unsigned NOT NULL,
  `k_id` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `count` varchar(20) NOT NULL,
  `open` varchar(20) NOT NULL,
  `close` varchar(20) NOT NULL,
  `high` varchar(20) NOT NULL,
  `vol` varchar(20) NOT NULL,
  `_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `k_id` (`k_id`) USING BTREE,
  KEY `trad_pari` (`trad_pari`),
  CONSTRAINT `kline_5min_ibfk_1` FOREIGN KEY (`trad_pari`) REFERENCES `trade_paris` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kline_5min
-- ----------------------------
INSERT INTO `kline_5min` VALUES ('1', '1', '123', '23', '265', '12.25', '12.25', '12.25', '63', '2018-07-24 20:06:43');

-- ----------------------------
-- Table structure for `trade_paris`
-- ----------------------------
DROP TABLE IF EXISTS `trade_paris`;
CREATE TABLE `trade_paris` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `base_currency` varchar(50) NOT NULL,
  `aim_currency` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trade_paris
-- ----------------------------
INSERT INTO `trade_paris` VALUES ('1', 'usdt', 'btc');
