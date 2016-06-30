/*
MySQL Data Transfer
Source Host: localhost
Source Database: survey_db
Target Host: localhost
Target Database: survey_db
Date: 2016-6-30 14:47:34
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for answerlist
-- ----------------------------
CREATE TABLE `answerlist` (
  `id` int(11) NOT NULL auto_increment COMMENT ' 票序号',
  `voteid` int(11) NOT NULL COMMENT '投票序号',
  `answerid` int(11) NOT NULL COMMENT '选项序号',
  `questionid` int(11) NOT NULL COMMENT '题目序号',
  `surveyid` int(11) unsigned NOT NULL COMMENT '调查问卷序号',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for answers
-- ----------------------------
CREATE TABLE `answers` (
  `id` int(11) NOT NULL auto_increment COMMENT '选项序号',
  `text` varchar(100) NOT NULL COMMENT '选项内容',
  `qid` int(11) NOT NULL COMMENT '归属题目序号',
  `sort` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for questions
-- ----------------------------
CREATE TABLE `questions` (
  `id` int(11) NOT NULL auto_increment COMMENT '题目序号',
  `title` varchar(100) NOT NULL COMMENT '题目文字',
  `type` char(1) NOT NULL COMMENT '题目类型，1代表单选，2代表多选，3代表填空，',
  `sid` int(11) NOT NULL COMMENT '归属调查问卷的序号',
  `order` int(11) default NULL COMMENT '题目顺序',
  `isnessesary` char(1) default NULL COMMENT '是否必答题',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for surveys
-- ----------------------------
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL COMMENT '用户名',
  `sex` varchar(10) default NULL,
  `age` int(4) default NULL,
  `mail` varchar(50) default NULL,
  `city` varchar(50) default NULL,
  `company` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for votes
-- ----------------------------
CREATE TABLE `votes` (
  `id` int(11) NOT NULL COMMENT '投票序号',
  `voterid` int(11) default NULL,
  `ip` varchar(15) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
