/*
Navicat MySQL Data Transfer

Source Server         : whqet
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : survey_db

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2016-07-04 01:46:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `answerlist`
-- ----------------------------
DROP TABLE IF EXISTS `answerlist`;
CREATE TABLE `answerlist` (
  `id` int(11) NOT NULL auto_increment COMMENT ' 票序号',
  `voteid` int(11) NOT NULL COMMENT '投票序号',
  `answerid` int(11) default NULL COMMENT '选项序号',
  `questionid` int(11) NOT NULL COMMENT '题目序号',
  `surveyid` int(11) unsigned NOT NULL COMMENT '调查问卷序号',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=551 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answerlist
-- ----------------------------
INSERT INTO `answerlist` VALUES ('58', '16', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('59', '16', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('60', '16', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('61', '16', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('62', '16', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('63', '16', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('64', '16', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('65', '16', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('66', '16', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('67', '16', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('68', '16', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('69', '16', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('70', '16', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('71', '16', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('72', '16', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('73', '16', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('74', '16', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('75', '16', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('76', '16', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('77', '16', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('78', '16', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('79', '16', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('80', '16', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('81', '16', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('27', '15', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('28', '15', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('29', '15', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('30', '15', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('31', '15', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('32', '15', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('33', '15', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('34', '15', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('35', '15', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('36', '15', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('37', '15', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('38', '15', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('39', '15', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('40', '15', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('41', '15', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('42', '15', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('43', '15', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('44', '15', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('45', '15', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('46', '15', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('47', '15', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('48', '15', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('49', '15', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('50', '15', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('51', '15', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('52', '15', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('53', '15', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('54', '15', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('55', '15', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('56', '15', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('57', '15', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('82', '16', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('83', '16', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('84', '16', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('85', '16', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('86', '16', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('87', '16', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('88', '16', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('89', '17', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('90', '17', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('91', '17', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('92', '17', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('93', '17', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('94', '17', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('95', '17', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('96', '17', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('97', '17', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('98', '17', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('99', '17', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('100', '17', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('101', '17', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('102', '17', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('103', '17', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('104', '17', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('105', '17', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('106', '17', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('107', '17', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('108', '17', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('109', '17', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('110', '17', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('111', '17', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('112', '17', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('113', '17', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('114', '17', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('115', '17', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('116', '17', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('117', '17', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('118', '17', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('119', '17', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('120', '18', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('121', '18', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('122', '18', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('123', '18', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('124', '18', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('125', '18', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('126', '18', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('127', '18', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('128', '18', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('129', '18', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('130', '18', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('131', '18', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('132', '18', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('133', '18', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('134', '18', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('135', '18', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('136', '18', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('137', '18', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('138', '18', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('139', '18', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('140', '18', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('141', '18', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('142', '18', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('143', '18', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('144', '18', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('145', '18', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('146', '18', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('147', '18', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('148', '18', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('149', '18', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('150', '18', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('151', '19', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('152', '19', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('153', '19', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('154', '19', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('155', '19', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('156', '19', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('157', '19', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('158', '19', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('159', '19', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('160', '19', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('161', '19', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('162', '19', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('163', '19', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('164', '19', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('165', '19', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('166', '19', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('167', '19', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('168', '19', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('169', '19', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('170', '19', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('171', '19', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('172', '19', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('173', '19', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('174', '19', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('175', '19', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('176', '19', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('177', '19', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('178', '19', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('179', '19', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('180', '19', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('181', '19', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('182', '20', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('183', '20', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('184', '20', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('185', '20', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('186', '20', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('187', '20', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('188', '20', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('189', '20', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('190', '20', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('191', '20', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('192', '20', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('193', '20', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('194', '20', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('195', '20', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('196', '20', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('197', '20', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('198', '20', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('199', '20', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('200', '20', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('201', '20', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('202', '20', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('203', '20', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('204', '20', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('205', '20', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('206', '20', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('207', '20', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('208', '20', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('209', '20', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('210', '20', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('211', '20', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('212', '20', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('213', '21', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('214', '21', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('215', '21', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('216', '21', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('217', '21', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('218', '21', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('219', '21', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('220', '21', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('221', '21', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('222', '21', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('223', '21', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('224', '21', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('225', '21', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('226', '21', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('227', '21', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('228', '21', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('229', '21', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('230', '21', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('231', '21', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('232', '21', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('233', '21', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('234', '21', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('235', '21', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('236', '21', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('237', '21', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('238', '21', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('239', '21', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('240', '21', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('241', '21', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('242', '21', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('243', '21', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('244', '22', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('245', '22', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('246', '22', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('247', '22', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('248', '22', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('249', '22', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('250', '22', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('251', '22', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('252', '22', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('253', '22', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('254', '22', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('255', '22', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('256', '22', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('257', '22', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('258', '22', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('259', '22', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('260', '22', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('261', '22', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('262', '22', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('263', '22', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('264', '22', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('265', '22', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('266', '22', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('267', '22', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('268', '22', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('269', '22', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('270', '22', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('271', '22', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('272', '22', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('273', '22', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('274', '22', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('275', '23', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('276', '23', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('277', '23', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('278', '23', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('279', '23', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('280', '23', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('281', '23', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('282', '23', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('283', '23', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('284', '23', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('285', '23', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('286', '23', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('287', '23', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('288', '23', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('289', '23', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('290', '23', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('291', '23', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('292', '23', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('293', '23', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('294', '23', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('295', '23', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('296', '23', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('297', '23', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('298', '23', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('299', '23', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('300', '23', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('301', '23', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('302', '23', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('303', '23', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('304', '23', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('305', '23', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('306', '24', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('307', '24', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('308', '24', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('309', '24', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('310', '24', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('311', '24', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('312', '24', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('313', '24', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('314', '24', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('315', '24', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('316', '24', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('317', '24', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('318', '24', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('319', '24', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('320', '24', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('321', '24', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('322', '24', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('323', '24', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('324', '24', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('325', '24', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('326', '24', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('327', '24', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('328', '24', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('329', '24', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('330', '24', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('331', '24', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('332', '24', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('333', '24', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('334', '24', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('335', '24', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('336', '24', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('337', '25', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('338', '25', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('339', '25', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('340', '25', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('341', '25', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('342', '25', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('343', '25', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('344', '25', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('345', '25', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('346', '25', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('347', '25', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('348', '25', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('349', '25', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('350', '25', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('351', '25', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('352', '25', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('353', '25', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('354', '25', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('355', '25', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('356', '25', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('357', '25', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('358', '25', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('359', '25', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('360', '25', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('361', '25', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('362', '25', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('363', '25', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('364', '25', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('365', '25', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('366', '25', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('367', '25', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('368', '26', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('369', '26', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('370', '26', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('371', '26', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('372', '26', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('373', '26', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('374', '26', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('375', '26', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('376', '26', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('377', '26', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('378', '26', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('379', '26', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('380', '26', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('381', '26', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('382', '26', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('383', '26', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('384', '26', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('385', '26', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('386', '26', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('387', '26', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('388', '26', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('389', '26', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('390', '26', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('391', '26', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('392', '26', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('393', '26', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('394', '26', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('395', '26', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('396', '26', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('397', '26', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('398', '26', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('399', '27', '2', '1', '1');
INSERT INTO `answerlist` VALUES ('400', '27', '4', '2', '1');
INSERT INTO `answerlist` VALUES ('401', '27', '9', '3', '1');
INSERT INTO `answerlist` VALUES ('402', '27', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('403', '27', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('404', '27', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('405', '27', '34', '7', '1');
INSERT INTO `answerlist` VALUES ('406', '27', '39', '8', '1');
INSERT INTO `answerlist` VALUES ('407', '27', '45', '9', '1');
INSERT INTO `answerlist` VALUES ('408', '27', '51', '10', '1');
INSERT INTO `answerlist` VALUES ('409', '27', '56', '11', '1');
INSERT INTO `answerlist` VALUES ('410', '27', '60', '12', '1');
INSERT INTO `answerlist` VALUES ('411', '27', '67', '13', '1');
INSERT INTO `answerlist` VALUES ('412', '27', '74', '14', '1');
INSERT INTO `answerlist` VALUES ('413', '27', '80', '15', '1');
INSERT INTO `answerlist` VALUES ('414', '27', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('415', '28', '1', '1', '1');
INSERT INTO `answerlist` VALUES ('416', '28', '3', '2', '1');
INSERT INTO `answerlist` VALUES ('417', '28', '10', '3', '1');
INSERT INTO `answerlist` VALUES ('418', '28', '12', '4', '1');
INSERT INTO `answerlist` VALUES ('419', '28', '17', '5', '1');
INSERT INTO `answerlist` VALUES ('420', '28', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('421', '28', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('422', '28', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('423', '28', '34', '7', '1');
INSERT INTO `answerlist` VALUES ('424', '28', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('425', '28', '41', '8', '1');
INSERT INTO `answerlist` VALUES ('426', '28', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('427', '28', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('428', '28', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('429', '28', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('430', '28', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('431', '28', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('432', '28', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('433', '28', '60', '12', '1');
INSERT INTO `answerlist` VALUES ('434', '28', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('435', '28', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('436', '28', '67', '13', '1');
INSERT INTO `answerlist` VALUES ('437', '28', '72', '14', '1');
INSERT INTO `answerlist` VALUES ('438', '28', '74', '14', '1');
INSERT INTO `answerlist` VALUES ('439', '28', '75', '14', '1');
INSERT INTO `answerlist` VALUES ('440', '28', '78', '15', '1');
INSERT INTO `answerlist` VALUES ('441', '28', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('442', '28', '80', '15', '1');
INSERT INTO `answerlist` VALUES ('443', '28', '81', '15', '1');
INSERT INTO `answerlist` VALUES ('444', '28', '82', '15', '1');
INSERT INTO `answerlist` VALUES ('445', '28', '83', '15', '1');
INSERT INTO `answerlist` VALUES ('446', '28', '84', '15', '1');
INSERT INTO `answerlist` VALUES ('447', '28', '85', '15', '1');
INSERT INTO `answerlist` VALUES ('448', '28', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('449', '28', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('450', '28', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('451', '28', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('452', '28', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('453', '28', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('454', '28', '92', '16', '1');
INSERT INTO `answerlist` VALUES ('455', '28', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('456', '28', '94', '16', '1');
INSERT INTO `answerlist` VALUES ('457', '28', '96', '16', '1');
INSERT INTO `answerlist` VALUES ('458', '28', '97', '16', '1');
INSERT INTO `answerlist` VALUES ('459', '28', '98', '16', '1');
INSERT INTO `answerlist` VALUES ('460', '28', '99', '16', '1');
INSERT INTO `answerlist` VALUES ('461', '29', '1', '1', '1');
INSERT INTO `answerlist` VALUES ('462', '29', '6', '2', '1');
INSERT INTO `answerlist` VALUES ('463', '29', '8', '3', '1');
INSERT INTO `answerlist` VALUES ('464', '29', '11', '4', '1');
INSERT INTO `answerlist` VALUES ('465', '29', '15', '5', '1');
INSERT INTO `answerlist` VALUES ('466', '29', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('467', '29', '20', '6', '1');
INSERT INTO `answerlist` VALUES ('468', '29', '21', '6', '1');
INSERT INTO `answerlist` VALUES ('469', '29', '22', '6', '1');
INSERT INTO `answerlist` VALUES ('470', '29', '24', '6', '1');
INSERT INTO `answerlist` VALUES ('471', '29', '26', '6', '1');
INSERT INTO `answerlist` VALUES ('472', '29', '29', '6', '1');
INSERT INTO `answerlist` VALUES ('473', '29', '30', '6', '1');
INSERT INTO `answerlist` VALUES ('474', '29', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('475', '29', '35', '7', '1');
INSERT INTO `answerlist` VALUES ('476', '29', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('477', '29', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('478', '29', '41', '8', '1');
INSERT INTO `answerlist` VALUES ('479', '29', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('480', '29', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('481', '29', '49', '10', '1');
INSERT INTO `answerlist` VALUES ('482', '29', '54', '11', '1');
INSERT INTO `answerlist` VALUES ('483', '29', '58', '12', '1');
INSERT INTO `answerlist` VALUES ('484', '29', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('485', '29', '69', '13', '1');
INSERT INTO `answerlist` VALUES ('486', '29', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('487', '29', '78', '15', '1');
INSERT INTO `answerlist` VALUES ('488', '29', '79', '15', '1');
INSERT INTO `answerlist` VALUES ('489', '29', '80', '15', '1');
INSERT INTO `answerlist` VALUES ('490', '29', '83', '15', '1');
INSERT INTO `answerlist` VALUES ('491', '29', '84', '15', '1');
INSERT INTO `answerlist` VALUES ('492', '29', '86', '16', '1');
INSERT INTO `answerlist` VALUES ('493', '29', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('494', '29', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('495', '29', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('496', '29', '90', '16', '1');
INSERT INTO `answerlist` VALUES ('497', '29', '91', '16', '1');
INSERT INTO `answerlist` VALUES ('498', '29', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('499', '30', '1', '1', '1');
INSERT INTO `answerlist` VALUES ('500', '30', '5', '2', '1');
INSERT INTO `answerlist` VALUES ('501', '30', '7', '3', '1');
INSERT INTO `answerlist` VALUES ('502', '30', '13', '4', '1');
INSERT INTO `answerlist` VALUES ('503', '30', '16', '5', '1');
INSERT INTO `answerlist` VALUES ('504', '30', '19', '6', '1');
INSERT INTO `answerlist` VALUES ('505', '30', '22', '6', '1');
INSERT INTO `answerlist` VALUES ('506', '30', '24', '6', '1');
INSERT INTO `answerlist` VALUES ('507', '30', '25', '6', '1');
INSERT INTO `answerlist` VALUES ('508', '30', '28', '6', '1');
INSERT INTO `answerlist` VALUES ('509', '30', '30', '6', '1');
INSERT INTO `answerlist` VALUES ('510', '30', '31', '6', '1');
INSERT INTO `answerlist` VALUES ('511', '30', '32', '7', '1');
INSERT INTO `answerlist` VALUES ('512', '30', '33', '7', '1');
INSERT INTO `answerlist` VALUES ('513', '30', '34', '7', '1');
INSERT INTO `answerlist` VALUES ('514', '30', '35', '7', '1');
INSERT INTO `answerlist` VALUES ('515', '30', '37', '8', '1');
INSERT INTO `answerlist` VALUES ('516', '30', '38', '8', '1');
INSERT INTO `answerlist` VALUES ('517', '30', '43', '9', '1');
INSERT INTO `answerlist` VALUES ('518', '30', '44', '9', '1');
INSERT INTO `answerlist` VALUES ('519', '30', '45', '9', '1');
INSERT INTO `answerlist` VALUES ('520', '30', '50', '10', '1');
INSERT INTO `answerlist` VALUES ('521', '30', '55', '11', '1');
INSERT INTO `answerlist` VALUES ('522', '30', '59', '12', '1');
INSERT INTO `answerlist` VALUES ('523', '30', '60', '12', '1');
INSERT INTO `answerlist` VALUES ('524', '30', '62', '12', '1');
INSERT INTO `answerlist` VALUES ('525', '30', '63', '12', '1');
INSERT INTO `answerlist` VALUES ('526', '30', '64', '12', '1');
INSERT INTO `answerlist` VALUES ('527', '30', '65', '13', '1');
INSERT INTO `answerlist` VALUES ('528', '30', '66', '13', '1');
INSERT INTO `answerlist` VALUES ('529', '30', '67', '13', '1');
INSERT INTO `answerlist` VALUES ('530', '30', '68', '13', '1');
INSERT INTO `answerlist` VALUES ('531', '30', '69', '13', '1');
INSERT INTO `answerlist` VALUES ('532', '30', '70', '13', '1');
INSERT INTO `answerlist` VALUES ('533', '30', '71', '13', '1');
INSERT INTO `answerlist` VALUES ('534', '30', '72', '14', '1');
INSERT INTO `answerlist` VALUES ('535', '30', '73', '14', '1');
INSERT INTO `answerlist` VALUES ('536', '30', '74', '14', '1');
INSERT INTO `answerlist` VALUES ('537', '30', '75', '14', '1');
INSERT INTO `answerlist` VALUES ('538', '30', '76', '14', '1');
INSERT INTO `answerlist` VALUES ('539', '30', '77', '14', '1');
INSERT INTO `answerlist` VALUES ('540', '30', '83', '15', '1');
INSERT INTO `answerlist` VALUES ('541', '30', '84', '15', '1');
INSERT INTO `answerlist` VALUES ('542', '30', '85', '15', '1');
INSERT INTO `answerlist` VALUES ('543', '30', '87', '16', '1');
INSERT INTO `answerlist` VALUES ('544', '30', '88', '16', '1');
INSERT INTO `answerlist` VALUES ('545', '30', '89', '16', '1');
INSERT INTO `answerlist` VALUES ('546', '30', '93', '16', '1');
INSERT INTO `answerlist` VALUES ('547', '30', '96', '16', '1');
INSERT INTO `answerlist` VALUES ('548', '30', '98', '16', '1');
INSERT INTO `answerlist` VALUES ('549', '30', '99', '16', '1');
INSERT INTO `answerlist` VALUES ('550', '30', '100', '16', '1');

-- ----------------------------
-- Table structure for `answers`
-- ----------------------------
DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL auto_increment COMMENT '选项序号',
  `text` varchar(100) NOT NULL COMMENT '选项内容',
  `qid` int(11) NOT NULL COMMENT '归属题目序号',
  `num` int(11) default NULL COMMENT '选项显示顺序',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answers
-- ----------------------------
INSERT INTO `answers` VALUES ('1', '程序猿', '1', '1');
INSERT INTO `answers` VALUES ('2', '程序媛', '1', '2');
INSERT INTO `answers` VALUES ('3', '16-24', '2', '1');
INSERT INTO `answers` VALUES ('4', '25-29', '2', '2');
INSERT INTO `answers` VALUES ('5', '30-35', '2', '3');
INSERT INTO `answers` VALUES ('6', '36+', '2', '4');
INSERT INTO `answers` VALUES ('7', '高中及以下', '3', '1');
INSERT INTO `answers` VALUES ('8', '专科', '3', '2');
INSERT INTO `answers` VALUES ('9', '本科', '3', '3');
INSERT INTO `answers` VALUES ('10', '硕士及以上', '3', '4');
INSERT INTO `answers` VALUES ('11', '0-1年', '4', '1');
INSERT INTO `answers` VALUES ('12', ' 1-3年', '4', '2');
INSERT INTO `answers` VALUES ('13', '3-5年', '4', '3');
INSERT INTO `answers` VALUES ('14', '5年+', '4', '4');
INSERT INTO `answers` VALUES ('15', '1000-3000', '5', '1');
INSERT INTO `answers` VALUES ('16', '3000-5000', '5', '2');
INSERT INTO `answers` VALUES ('17', ' 5000-10000', '5', '3');
INSERT INTO `answers` VALUES ('18', '10000+', '5', '4');
INSERT INTO `answers` VALUES ('19', 'Sublime text', '6', '1');
INSERT INTO `answers` VALUES ('20', 'Vim', '6', '2');
INSERT INTO `answers` VALUES ('21', 'Emacs', '6', '3');
INSERT INTO `answers` VALUES ('22', 'Brackets', '6', '4');
INSERT INTO `answers` VALUES ('23', 'Atom', '6', '5');
INSERT INTO `answers` VALUES ('24', 'VS Code', '6', '6');
INSERT INTO `answers` VALUES ('25', 'IntelliJ IDEA', '6', '7');
INSERT INTO `answers` VALUES ('26', 'Hbuilder', '6', '8');
INSERT INTO `answers` VALUES ('27', 'WebStorm', '6', '9');
INSERT INTO `answers` VALUES ('28', 'Aptana Studio', '6', '10');
INSERT INTO `answers` VALUES ('29', 'Web IDE', '6', '11');
INSERT INTO `answers` VALUES ('30', 'Dreamweaver', '6', '12');
INSERT INTO `answers` VALUES ('31', 'Visual Studio', '6', '13');
INSERT INTO `answers` VALUES ('32', '-prefix-free', '7', '1');
INSERT INTO `answers` VALUES ('33', '编辑器插件或IDE特性', '7', '2');
INSERT INTO `answers` VALUES ('34', '预处理中的mixin', '7', '3');
INSERT INTO `answers` VALUES ('35', 'Autoprefixer', '7', '4');
INSERT INTO `answers` VALUES ('36', '其他', '7', '5');
INSERT INTO `answers` VALUES ('37', 'Sass', '8', '1');
INSERT INTO `answers` VALUES ('38', 'Less', '8', '2');
INSERT INTO `answers` VALUES ('39', 'Stylus', '8', '3');
INSERT INTO `answers` VALUES ('40', 'Rework', '8', '4');
INSERT INTO `answers` VALUES ('41', 'PostCSS', '8', '5');
INSERT INTO `answers` VALUES ('42', '其他', '8', '6');
INSERT INTO `answers` VALUES ('43', 'Gulp', '9', '1');
INSERT INTO `answers` VALUES ('44', 'Grunt', '9', '2');
INSERT INTO `answers` VALUES ('45', 'npm run', '9', '3');
INSERT INTO `answers` VALUES ('46', 'Make', '9', '4');
INSERT INTO `answers` VALUES ('47', 'Broccoli', '9', '5');
INSERT INTO `answers` VALUES ('48', '其他', '9', '6');
INSERT INTO `answers` VALUES ('49', 'npm', '10', '1');
INSERT INTO `answers` VALUES ('50', 'Bower', '10', '2');
INSERT INTO `answers` VALUES ('51', 'Component', '10', '3');
INSERT INTO `answers` VALUES ('52', 'spm', '10', '4');
INSERT INTO `answers` VALUES ('53', '其他', '10', '5');
INSERT INTO `answers` VALUES ('54', 'Browserify', '11', '1');
INSERT INTO `answers` VALUES ('55', 'Webpack', '11', '2');
INSERT INTO `answers` VALUES ('56', 'Require.js', '11', '3');
INSERT INTO `answers` VALUES ('57', 'Sea.js', '11', '4');
INSERT INTO `answers` VALUES ('58', 'jQuery', '12', '1');
INSERT INTO `answers` VALUES ('59', 'Lodash', '12', '2');
INSERT INTO `answers` VALUES ('60', 'underscore', '12', '3');
INSERT INTO `answers` VALUES ('61', 'request', '12', '4');
INSERT INTO `answers` VALUES ('62', 'async', '12', '5');
INSERT INTO `answers` VALUES ('63', 'xhr', '12', '6');
INSERT INTO `answers` VALUES ('64', '其他', '12', '7');
INSERT INTO `answers` VALUES ('65', 'React', '13', '1');
INSERT INTO `answers` VALUES ('66', 'AngularJS', '13', '2');
INSERT INTO `answers` VALUES ('67', 'Backbone', '13', '3');
INSERT INTO `answers` VALUES ('68', 'KnockoutJS', '13', '4');
INSERT INTO `answers` VALUES ('69', 'Ember', '13', '5');
INSERT INTO `answers` VALUES ('70', 'Ploymer', '13', '6');
INSERT INTO `answers` VALUES ('71', '其他', '13', '7');
INSERT INTO `answers` VALUES ('72', '浏览器端', '14', '1');
INSERT INTO `answers` VALUES ('73', '服务器端', '14', '2');
INSERT INTO `answers` VALUES ('74', '移动应用', '14', '3');
INSERT INTO `answers` VALUES ('75', '微信开发', '14', '4');
INSERT INTO `answers` VALUES ('76', '嵌入式开发', '14', '5');
INSERT INTO `answers` VALUES ('77', '其他', '14', '6');
INSERT INTO `answers` VALUES ('78', '微信公众号', '15', '1');
INSERT INTO `answers` VALUES ('79', '微博', '15', '2');
INSERT INTO `answers` VALUES ('80', '博客', '15', '3');
INSERT INTO `answers` VALUES ('81', '论坛', '15', '4');
INSERT INTO `answers` VALUES ('82', '邮件订阅', '15', '5');
INSERT INTO `answers` VALUES ('83', '搜索引擎', '15', '6');
INSERT INTO `answers` VALUES ('84', '书籍', '15', '7');
INSERT INTO `answers` VALUES ('85', '其他', '15', '8');
INSERT INTO `answers` VALUES ('86', 'Github', '16', '1');
INSERT INTO `answers` VALUES ('87', 'Codepen', '16', '2');
INSERT INTO `answers` VALUES ('88', 'Codrops', '16', '3');
INSERT INTO `answers` VALUES ('89', 'Stack Overflow', '16', '4');
INSERT INTO `answers` VALUES ('90', 'SitePoint', '16', '5');
INSERT INTO `answers` VALUES ('91', 'CSS-Tricks', '16', '6');
INSERT INTO `answers` VALUES ('92', 'Web Platform', '16', '7');
INSERT INTO `answers` VALUES ('93', 'MDN', '16', '8');
INSERT INTO `answers` VALUES ('94', 'w3cplus', '16', '9');
INSERT INTO `answers` VALUES ('95', 'W3Cfuns', '16', '10');
INSERT INTO `answers` VALUES ('96', 'w3ctech', '16', '11');
INSERT INTO `answers` VALUES ('97', '知乎', '16', '12');
INSERT INTO `answers` VALUES ('98', 'HTML5梦工厂', '16', '13');
INSERT INTO `answers` VALUES ('99', 'imweb前端社区', '16', '14');
INSERT INTO `answers` VALUES ('100', '其他', '16', '15');

-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL auto_increment COMMENT '题目序号',
  `title` varchar(100) NOT NULL COMMENT '题目文字',
  `type` char(1) NOT NULL COMMENT '题目类型，1代表单选，2代表多选，3代表填空，',
  `sid` int(11) NOT NULL COMMENT '归属调查问卷的序号',
  `num` int(11) default NULL COMMENT '题目顺序',
  `isnecessary` char(1) default '1' COMMENT '是否必答题',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', '您的性别是？', '1', '1', '1', '1');
INSERT INTO `questions` VALUES ('2', '您的年龄？', '1', '1', '2', '1');
INSERT INTO `questions` VALUES ('3', '您的学历？', '1', '1', '3', '1');
INSERT INTO `questions` VALUES ('4', '您的工作年限？', '1', '1', '4', '1');
INSERT INTO `questions` VALUES ('5', '您的工资水平（元/月）？', '1', '1', '5', '1');
INSERT INTO `questions` VALUES ('6', '您常用的开发环境？', '2', '1', '6', '1');
INSERT INTO `questions` VALUES ('7', '您常用的CSS前缀处理方式？', '2', '1', '7', '1');
INSERT INTO `questions` VALUES ('8', '您经常使用的CSS处理器?', '2', '1', '8', '1');
INSERT INTO `questions` VALUES ('9', '您经常使用的脚本构建工具?', '2', '1', '9', '1');
INSERT INTO `questions` VALUES ('10', '您经常使用的包管理器?', '2', '1', '10', '1');
INSERT INTO `questions` VALUES ('11', '您经常使用的JS模块加载工具?', '2', '1', '11', '1');
INSERT INTO `questions` VALUES ('12', '您经常使用那些JS类库?', '2', '1', '12', '1');
INSERT INTO `questions` VALUES ('13', '您经常使用那些JS框架?', '2', '1', '13', '1');
INSERT INTO `questions` VALUES ('14', '您经常开发那种类型的JS?', '2', '1', '14', '1');
INSERT INTO `questions` VALUES ('15', '您经常那种途径获得前端资讯?', '2', '1', '15', '1');
INSERT INTO `questions` VALUES ('16', '您经常访问的技术社区?', '2', '1', '16', '1');

-- ----------------------------
-- Table structure for `surveys`
-- ----------------------------
DROP TABLE IF EXISTS `surveys`;
CREATE TABLE `surveys` (
  `id` int(11) NOT NULL auto_increment COMMENT '序号',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `startTime` datetime default NULL COMMENT '开始时间',
  `endTime` datetime default NULL COMMENT '结束时间',
  `creater` int(11) default NULL COMMENT '创建者',
  `createTime` datetime default NULL COMMENT '创建时间',
  `type` char(1) NOT NULL default '1' COMMENT '调查类型，1代表问卷调查，2代表图文投票',
  `welcome` varchar(500) default '' COMMENT '欢迎语',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of surveys
-- ----------------------------
INSERT INTO `surveys` VALUES ('1', '前端开发行业现状调查', '2016-07-04 08:25:57', null, '1', '2016-07-01 08:25:05', '1', '<p>尊敬的前端前辈们：</p>\r\n        <p>大牛们万安，我们是来自<a class=\"background-slide\" href=\"http://zptc.cn\" target=\"_blank\">浙江邮电职业技术学院</a>的<a class=\"background-slide\" href=\"https://github.com/HappyFedClub\" target=\"_blank\">前端开发俱乐部</a>，正在进行《前端开发行业现状调查》的暑期社会实践，恳请占用您几分钟时间，帮助我们了解前端开发行业现状，<em>万分感谢</em>！！</p>');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL COMMENT '用户名',
  `sex` varchar(10) default NULL,
  `age` int(4) default NULL,
  `mail` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `company` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'whqet', '1', '36', 'whqet@qq.com', 'shaoxing', 'zptc');

-- ----------------------------
-- Table structure for `votes`
-- ----------------------------
DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL auto_increment COMMENT '投票序号',
  `userid` int(11) default NULL COMMENT '投票人序号，如果为0，代表为匿名用户；如果不是匿名用户，则存储用户名',
  `ip` varchar(15) NOT NULL COMMENT '投票ip',
  `time` datetime NOT NULL COMMENT '投票时间',
  `surveyid` int(11) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of votes
-- ----------------------------
INSERT INTO `votes` VALUES ('16', '0', '127.0.0.1', '2016-07-02 09:52:15', '1');
INSERT INTO `votes` VALUES ('17', '0', '127.0.0.1', '2016-07-02 09:55:11', '1');
INSERT INTO `votes` VALUES ('18', '0', '127.0.0.1', '2016-07-02 09:55:39', '1');
INSERT INTO `votes` VALUES ('19', '0', '127.0.0.1', '2016-07-02 09:55:47', '1');
INSERT INTO `votes` VALUES ('20', '0', '127.0.0.1', '2016-07-02 09:57:03', '1');
INSERT INTO `votes` VALUES ('21', '0', '127.0.0.1', '2016-07-02 09:57:55', '1');
INSERT INTO `votes` VALUES ('22', '0', '127.0.0.1', '2016-07-02 09:58:56', '1');
INSERT INTO `votes` VALUES ('15', '0', '127.0.0.1', '2016-07-02 09:45:14', '1');
INSERT INTO `votes` VALUES ('23', '0', '127.0.0.1', '2016-07-02 10:03:36', '1');
INSERT INTO `votes` VALUES ('24', '0', '127.0.0.1', '2016-07-02 10:06:05', '1');
INSERT INTO `votes` VALUES ('25', '0', '127.0.0.1', '2016-07-02 10:08:52', '1');
INSERT INTO `votes` VALUES ('26', '0', '127.0.0.1', '2016-07-02 10:11:14', '1');
INSERT INTO `votes` VALUES ('27', '0', '127.0.0.1', '2016-07-02 10:32:14', '1');
INSERT INTO `votes` VALUES ('28', '0', '127.0.0.1', '2016-07-03 07:08:35', '1');
INSERT INTO `votes` VALUES ('29', '0', '127.0.0.1', '2016-07-03 11:14:51', '1');
INSERT INTO `votes` VALUES ('30', '0', '127.0.0.1', '2016-07-04 01:45:38', '1');
