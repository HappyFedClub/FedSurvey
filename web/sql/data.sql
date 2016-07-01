/*
MySQL Data Transfer
Source Host: localhost
Source Database: survey_db
Target Host: localhost
Target Database: survey_db
Date: 2016-7-1 10:10:49
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
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users
-- ----------------------------
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
INSERT INTO `surveys` VALUES ('1', '前端开发行业现状调查', '2016-07-04 08:25:57', null, '1', '2016-07-01 08:25:05', '1', '<p>尊敬的前端前辈们：</p>\r\n        <p>大牛们万安，我们是来自<a class=\"background-slide\" href=\"http://zptc.cn\" target=\"_blank\">浙江邮电职业技术学院</a>的<a class=\"background-slide\" href=\"https://github.com/HappyFedClub\" target=\"_blank\">前端俱乐部</a>，正在进行《前端开发行业现状调查》的暑期社会实践，恳请占用您几分钟时间，帮助我们了解前端开发行业现状，<em>万分感谢</em>！！</p>');
INSERT INTO `users` VALUES ('1', 'whqet', '1', '36', 'whqet@qq.com', 'shaoxing', 'zptc');
