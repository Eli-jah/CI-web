/*
Navicat MySQL Data Transfer

Source Server         : 本机Windows
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : init

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-31 09:04:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `shm_acount`
-- ----------------------------
DROP TABLE IF EXISTS `shm_acount`;
CREATE TABLE `shm_acount` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL COMMENT 'Mail作为帐号',
  `uname` varchar(50) NOT NULL COMMENT '帐号',
  `nickname` varchar(50) NOT NULL COMMENT '显示名称',
  `pwd` varchar(64) NOT NULL COMMENT '密码',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话',
  `phone` varchar(30) DEFAULT NULL COMMENT '手机',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `photo` varchar(100) DEFAULT NULL COMMENT '头像',
  `thumb` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '用户状态，0 禁用',
  `login_today` int(11) NOT NULL COMMENT '今日登录次数',
  `pwd_errors` int(1) NOT NULL DEFAULT '0' COMMENT '密码错误次数',
  `login_ip` varchar(25) NOT NULL COMMENT '最后登录的IP',
  `reg_time` int(11) NOT NULL COMMENT '添加时间',
  `login_time` int(11) NOT NULL COMMENT '最后一次登录时间',
  `ga` varchar(20) NOT NULL COMMENT 'GA 两部验证密钥 开启与否',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='前端会员帐号';

-- ----------------------------
-- Records of shm_acount
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_adminmodels`
-- ----------------------------
DROP TABLE IF EXISTS `shm_adminmodels`;
CREATE TABLE `shm_adminmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `mid` int(10) DEFAULT '1' COMMENT '1:新闻模块',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '1' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '模块标识',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `link` text COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(200) DEFAULT NULL COMMENT '图片缩略图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='模块列表';

-- ----------------------------
-- Records of shm_adminmodels
-- ----------------------------
INSERT INTO `shm_adminmodels` VALUES ('17', '0', '0', '2', '6', '1', '0', '0', '1', '模块1', null, null, null, null, null, '1492415573', '13', '2017/04/17/thumbnail/14924159147287ins5x.jpg');
INSERT INTO `shm_adminmodels` VALUES ('16', '0', '0', '1', '5', '1', '0', '0', '5', '模块5', null, null, null, null, null, '1489377405', '6', '2017/03/13/thumbnail/14893892559326x71d4.jpg');
INSERT INTO `shm_adminmodels` VALUES ('15', '0', '0', '1', '4', '1', '0', '0', '4', '模块4', null, null, null, null, null, '1489377393', '5', '2017/03/13/thumbnail/14893892411976clryg.jpg');
INSERT INTO `shm_adminmodels` VALUES ('14', '0', '0', '1', '3', '1', '0', '0', '3', '模块3', null, null, null, null, null, '1489377383', '4', '2017/03/13/thumbnail/14893892305067qloi4.jpg');
INSERT INTO `shm_adminmodels` VALUES ('12', '0', '0', '1', '1', '1', '0', '0', '1', '模块1', null, null, null, null, null, '1489116282', '2', '2017/03/13/thumbnail/14893892035051vvu0w.jpg');
INSERT INTO `shm_adminmodels` VALUES ('13', '0', '0', '1', '2', '1', '0', '0', '2', '模块2', null, null, null, null, null, '1489116466', '3', '2017/03/13/thumbnail/14893892187479s1vqp.jpg');
INSERT INTO `shm_adminmodels` VALUES ('18', '0', '0', '2', '7', '1', '0', '0', '2', '模块2', null, null, null, null, null, '1492415589', '14', '2017/04/17/thumbnail/14924159235296dxq84.jpg');
INSERT INTO `shm_adminmodels` VALUES ('19', '0', '0', '2', '8', '1', '0', '0', '3', '模块3', null, null, null, null, null, '1492415601', '15', '2017/04/17/thumbnail/14924159336625fonvz.jpg');
INSERT INTO `shm_adminmodels` VALUES ('20', '0', '0', '2', '9', '1', '0', '0', '4', '模块4', null, null, null, null, null, '1492415611', '16', '2017/04/17/thumbnail/14924159404476vzltt.jpg');
INSERT INTO `shm_adminmodels` VALUES ('21', '0', '0', '1', '10', '1', '0', '0', '6', '模版6', null, null, null, null, null, '1492568126', '17', '2017/04/19/thumbnail/149256812539143bm7h.jpg');
INSERT INTO `shm_adminmodels` VALUES ('22', '0', '0', '1', '11', '1', '0', '0', '7', '模版7', null, null, null, null, null, '1492568139', '18', '2017/04/19/thumbnail/14925681384586shijf.jpg');

-- ----------------------------
-- Table structure for `shm_advert`
-- ----------------------------
DROP TABLE IF EXISTS `shm_advert`;
CREATE TABLE `shm_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) DEFAULT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext COMMENT '标题',
  `link` text COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(200) DEFAULT NULL COMMENT '图片缩略图',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='广告';

-- ----------------------------
-- Records of shm_advert
-- ----------------------------
INSERT INTO `shm_advert` VALUES ('2', '0', '0', '1', '1', '0', '0', null, '首页漂浮广告', 'http://www.shmweb.cn', '', '  ', '', null, '1487917385', null, '0', '0', '1', '2017/03/13/thumbnail/14893891775331cprts.jpg', null);

-- ----------------------------
-- Table structure for `shm_article`
-- ----------------------------
DROP TABLE IF EXISTS `shm_article`;
CREATE TABLE `shm_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `author` varchar(50) DEFAULT NULL COMMENT '消息作者',
  `source` varchar(50) DEFAULT NULL COMMENT '消息来源',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `recommend` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐到分类门户的页面显示',
  `photo` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `thumb` varchar(200) DEFAULT NULL COMMENT '图片缩略图',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='信息表';

-- ----------------------------
-- Records of shm_article
-- ----------------------------
INSERT INTO `shm_article` VALUES ('1', '8', '0', '1', '1', '0', '2', null, '测试1', '', '  ', '', '<p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; color: rgb(51, 51, 51); font-family: sinmsun; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp;12月17日，由国家科技部现代服务产业联盟主办，功虎社区联合主办，中英HiTECH创新创业协会、杭州市移动互联网技术学会、杭州市计算机学会、浙江大学创新创业中心联合承办，尚禾维曼网络全程战略支持的第三届中国(杭州)移动互联网大会在浙江杭州举行。中国工程院院士、联想集团首任总工程师倪光南教授出席会议并致辞。国内移动互联网领域大咖、资深投资人、知名企业家、创业者及相关协会代表等千余人参加会议。</p><p style=\"margin-top: 26px; margin-bottom: 26px; padding: 0px; color: rgb(51, 51, 51); font-family: sinmsun; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\">　　近年来，作为战略支持方的尚禾维曼网络在移动互联网营销及开发领域的突出优势获得市场及客户的广泛认可，在移动大数据领域也拥有自主知识产权的平台级产品，在移动营销领域的综合能力方面在国内居于领先位置。</p><div class=\"img_wrapper\" style=\"margin: 0px 0px 10px; padding: 0px; font-size: 12px; position: relative; text-align: center; color: rgb(51, 51, 51); font-family: sinmsun; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://localhost/shmweb/web/upload/148775661822781.jpg\" alt=\"278103075.jpg\" style=\"border: 1px solid black; vertical-align: top; display: inline; margin: 0px auto; z-index: 1; position: relative;\" width=\"500\" height=\"332\"/><span class=\"img_descr\" style=\"display: block; margin: 5px auto; z-index: 1;\"></span></div><div class=\"img_wrapper\" style=\"margin: 0px 0px 10px; padding: 0px; font-size: 12px; position: relative; text-align: center; color: rgb(51, 51, 51); font-family: sinmsun; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://localhost/shmweb/web/upload/14877566186278.jpg\" alt=\"994788439.jpg\" style=\"border: 1px solid black; vertical-align: top; display: inline; margin: 0px auto; z-index: 1; position: relative;\" width=\"500\" height=\"332\"/><span class=\"img_descr\" style=\"display: block; margin: 5px auto; z-index: 1;\"></span></div><div class=\"img_wrapper\" style=\"margin: 0px 0px 10px; padding: 0px; font-size: 12px; position: relative; text-align: center; color: rgb(51, 51, 51); font-family: sinmsun; line-height: 26px; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://localhost/shmweb/web/upload/14877566185180.jpg\" alt=\"webwxgetmsgimg.jpg\" style=\"border: 1px solid black; vertical-align: top; display: inline; margin: 0px auto; z-index: 1; position: relative;\" width=\"500\" height=\"333\"/></div><p><br/></p>', '1487142495', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('2', '8', '0', '2', '1', '0', '2', null, '测试2', '', '  ', '', '<p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; vertical-align: baseline; border: none; color: rgb(68, 68, 68); text-indent: 2em;\">近日，西湖区人民政府副区长陈玮，在区政府办公室罗主任、文新街道郎主任和张科长的陪同下，莅临青岛尚禾维曼网络科技股份有限公司考察指导工作。</p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; vertical-align: baseline; border: none; color: rgb(68, 68, 68); text-align: center;\"><img src=\"http://localhost/shmweb/web/upload/148775705412514.png\" title=\"1480308314381844.png\" alt=\"图片1.png\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: none; max-width: 100%;\"/></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; vertical-align: baseline; border: none; color: rgb(68, 68, 68); text-indent: 2em;\">&nbsp;<br/></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; vertical-align: baseline; border: none; color: rgb(68, 68, 68); text-align: center;\"><img src=\"http://localhost/shmweb/web/upload/148775705711176.png\" title=\"1480308327994856.png\" alt=\"图片2.png\" style=\"margin: 0px; padding: 0px; vertical-align: baseline; border: none; max-width: 100%;\"/></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; vertical-align: baseline; border: none; color: rgb(68, 68, 68); text-indent: 2em;\">&nbsp;<br/></p><p style=\"margin-top: 0px; margin-bottom: 10px; padding: 0px; vertical-align: baseline; border: medium none; color: rgb(68, 68, 68); text-indent: 2em;\">尚禾维曼网络董事长叶栋栋、董秘兼总经理祝珍来，董事胡小飞在司陪同接待，对来访的西湖区政府领导关于尚禾维曼网络的成长历程及相关业务情况进行了汇报，陈玮副区长对尚禾维曼网络取得的成绩给予了充分肯定，并鼓励公司要走出去，多互动多交流，以进一步发展壮大，区政府和有关部门、街道将一如既往地做好服务工作，帮助公司排忧解难，让公司把更多精力放到做大、做强、做精上。</p>', '1487757041', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('3', '8', '0', '3', '1', '0', '2', null, '测试3', '', '  ', '', '<p><span style=\"white-space: normal;\">&nbsp; &nbsp; &nbsp; &nbsp;测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span>测试3<span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span>测试3<span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span>测试3<span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span>测试3<span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span>测试3<span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span>测试3<span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span>测试3<span style=\"white-space: normal;\">测试3</span><span style=\"white-space: normal;\">测试3</span></p>', '1487817805', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('4', '8', '0', '4', '1', '0', '2', null, '测试4', '', '  ', '', '<p style=\"text-align: center;\"><img src=\"http://localhost/shmweb/web/upload/148792296124561.png\" title=\"14847963917932761Kdb.png\" alt=\"201612191127322628.png\" style=\"-webkit-font-smoothing: antialiased; border: 0px; vertical-align: middle; max-width: 100%;\"/></p><p></p>', '1487922891', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('5', '8', '0', '5', '1', '0', '2', null, '测试5', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5测试5</p>', '1489975974', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('6', '8', '0', '6', '1', '0', '2', null, '测试6', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6测试6</p>', '1490667472', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('7', '8', '0', '7', '1', '0', '2', null, '测试7', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7测试7</p>', '1490667473', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('8', '8', '0', '8', '1', '0', '2', null, '测试8', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8测试8</p>', '1490667474', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('9', '8', '0', '9', '1', '0', '2', null, '测试9', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9测试9</p>', '1490667474', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('10', '8', '0', '10', '1', '0', '1', null, '测试10', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10测试10</p>', '1490667475', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('11', '8', '0', '11', '1', '0', '1', null, '测试11', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11测试11</p>', '1490667476', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('12', '8', '0', '12', '1', '0', '1', null, '测试12', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12测试12</p>', '1490667476', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('13', '8', '0', '13', '1', '0', '1', null, '测试13', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13测试13</p>', '1490667477', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('14', '8', '0', '14', '1', '0', '1', null, '测试14', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14测试14</p>', '1490667477', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('15', '8', '0', '15', '1', '1', '1', null, '测试15', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15测试15</p>', '1490667478', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('16', '8', '0', '16', '1', '1', '1', null, '测试16', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16测试16</p>', '1490667479', null, '0', null, null, '0', '0', '20', '2017/05/26/thumbnail/14957788622974degra.jpg', null);
INSERT INTO `shm_article` VALUES ('17', '8', '0', '17', '1', '1', '1', null, '测试177', '', '  ', '', '<p>&nbsp; &nbsp; &nbsp; 测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17测试17</p>', '1490667479', null, '0', null, null, '0', '0', '', '', null);
INSERT INTO `shm_article` VALUES ('49', '31', '0', '28', '1', '0', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540523', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);
INSERT INTO `shm_article` VALUES ('48', '31', '0', '27', '1', '0', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540523', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);
INSERT INTO `shm_article` VALUES ('47', '31', '0', '26', '1', '0', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540522', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);
INSERT INTO `shm_article` VALUES ('46', '31', '0', '25', '1', '0', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540515', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);
INSERT INTO `shm_article` VALUES ('45', '31', '0', '24', '1', '0', '10', null, '媒体新闻测试BBB', '', '  ', '', '<p>媒体新闻测试BBB媒体新闻测试BBB</p><p>媒体新闻测试BBB</p>', '1524540514', null, '0', null, null, '0', '0', '29', '2018/04/24/thumbnail/15245404804734nfqf2.jpg', null);
INSERT INTO `shm_article` VALUES ('44', '31', '0', '23', '1', '0', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540514', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);
INSERT INTO `shm_article` VALUES ('43', '31', '0', '22', '1', '0', '10', null, '媒体新闻测试BBB', '', '  ', '', '<p>媒体新闻测试BBB媒体新闻测试BBB</p><p>媒体新闻测试BBB</p>', '1524540513', null, '0', null, null, '0', '0', '29', '2018/04/24/thumbnail/15245404804734nfqf2.jpg', null);
INSERT INTO `shm_article` VALUES ('42', '31', '0', '21', '1', '1', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540502', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);
INSERT INTO `shm_article` VALUES ('41', '31', '0', '20', '1', '0', '10', null, '媒体新闻测试BBB', '', '  ', '', '<p>媒体新闻测试BBB媒体新闻测试BBB</p><p>媒体新闻测试BBB</p>', '1524540502', null, '0', null, null, '0', '0', '29', '2018/04/24/thumbnail/15245404804734nfqf2.jpg', null);
INSERT INTO `shm_article` VALUES ('38', '31', '0', '19', '1', '1', '10', null, '媒体新闻测试BBB', '', '  ', '', '<p>媒体新闻测试BBB媒体新闻测试BBB</p><p>媒体新闻测试BBB</p>', '1524540452', null, '0', null, null, '0', '0', '29', '2018/04/24/thumbnail/15245404804734nfqf2.jpg', null);
INSERT INTO `shm_article` VALUES ('37', '31', '0', '18', '1', '0', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540430', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);
INSERT INTO `shm_article` VALUES ('50', '31', '0', '29', '1', '0', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540523', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);
INSERT INTO `shm_article` VALUES ('51', '31', '0', '30', '1', '0', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540523', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);
INSERT INTO `shm_article` VALUES ('52', '31', '0', '31', '1', '0', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540523', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);
INSERT INTO `shm_article` VALUES ('53', '31', '0', '32', '1', '0', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540524', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);
INSERT INTO `shm_article` VALUES ('54', '31', '0', '33', '1', '0', '9', null, '行业新闻测试AAA', '', '  ', '', '<p>行业新闻测试AAA行业新闻测试AAA</p><p>行业新闻测试AAA行业新闻测试AAA</p><p><br/></p><p>行业新闻测试AAA行业新闻测试AAA行业新闻测试AAA</p>', '1524540525', null, '0', null, null, '0', '0', '28', '2018/04/24/thumbnail/152454044866366z8c8.jpg', null);

-- ----------------------------
-- Table structure for `shm_article_tag`
-- ----------------------------
DROP TABLE IF EXISTS `shm_article_tag`;
CREATE TABLE `shm_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(30) NOT NULL COMMENT '标签',
  `record` int(11) DEFAULT NULL COMMENT '使用的 article id',
  `count` int(11) DEFAULT NULL COMMENT '计数',
  PRIMARY KEY (`id`),
  KEY `record_index` (`id`,`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of shm_article_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_banners`
-- ----------------------------
DROP TABLE IF EXISTS `shm_banners`;
CREATE TABLE `shm_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` text COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(200) DEFAULT NULL COMMENT '图片缩略图',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='导航';

-- ----------------------------
-- Records of shm_banners
-- ----------------------------
INSERT INTO `shm_banners` VALUES ('1', '3', '0', '1', '1', '0', '0', null, '1', '1', '', '  ', '', null, '1495182635', null, '0', '0', '11', '', null);

-- ----------------------------
-- Table structure for `shm_city`
-- ----------------------------
DROP TABLE IF EXISTS `shm_city`;
CREATE TABLE `shm_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `sort_id` int(11) DEFAULT NULL,
  `depth` tinyint(4) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `timeline` int(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=430 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_city
-- ----------------------------
INSERT INTO `shm_city` VALUES ('1', '110000', '0', '0', '0', '', '北京市', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('2', '120000', '0', '0', '0', '', '天津市', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('3', '130000', '0', '0', '0', '', '河北省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('4', '140000', '0', '0', '0', '', '山西省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('5', '150000', '0', '0', '0', '', '内蒙自治区', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('6', '210000', '0', '0', '0', '', '辽宁省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('7', '220000', '0', '0', '0', '', '吉林市', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('8', '230000', '0', '0', '0', '', '黑龙江省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('9', '310000', '0', '0', '0', '', '上海市', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('10', '320000', '0', '0', '0', '', '江苏省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('11', '330000', '0', '0', '0', '', '浙江省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('12', '340000', '0', '0', '0', '', '安徽省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('13', '350000', '0', '0', '0', '', '福建省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('14', '360000', '0', '0', '0', '', '江西省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('15', '370000', '0', '0', '0', '', '山东省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('16', '410000', '0', '0', '0', '', '河南省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('17', '420000', '0', '0', '0', '', '湖北省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('18', '430000', '0', '0', '0', '', '湖南省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('19', '440000', '0', '0', '0', '', '广东省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('20', '450000', '0', '0', '0', '', '广西自治区', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('21', '460000', '0', '0', '0', '', '海南省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('22', '500000', '0', '0', '0', '', '重庆市', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('23', '510000', '0', '0', '0', '', '四川省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('24', '520000', '0', '0', '0', '', '贵州省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('25', '530000', '0', '0', '0', '', '云南省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('26', '540000', '0', '0', '0', '', '西藏自治区', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('27', '610000', '0', '0', '0', '', '陕西省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('28', '620000', '0', '0', '0', '', '甘肃省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('29', '630000', '0', '0', '0', '', '青海省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('30', '640000', '0', '0', '0', '', '宁夏自治区', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('31', '650000', '0', '0', '0', '', '新疆自治区', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('32', '710000', '0', '0', '0', '', '台湾省', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('33', '810000', '0', '0', '0', '', '香港特区', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('34', '820000', '0', '0', '0', '', '澳门特区', '0', '', '', '1368120198');
INSERT INTO `shm_city` VALUES ('35', '110100', '0', '0', '1', '', '北京市', '110000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('36', '120100', '0', '0', '1', '', '天津市', '120000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('37', '130100', '0', '0', '1', '', '石家庄市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('38', '130200', '0', '0', '1', '', '唐山市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('39', '130300', '0', '0', '1', '', '秦皇岛市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('40', '130400', '0', '0', '1', '', '邯郸市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('41', '130500', '0', '0', '1', '', '邢台市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('42', '130600', '0', '0', '1', '', '保定市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('43', '130700', '0', '0', '1', '', '张家口市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('44', '130800', '0', '0', '1', '', '承德市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('45', '130900', '0', '0', '1', '', '沧州市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('46', '131000', '0', '0', '1', '', '廊坊市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('47', '131100', '0', '0', '1', '', '衡水市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('48', '140100', '0', '0', '1', '', '太原市', '140000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('49', '140200', '0', '0', '1', '', '大同市', '140000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('50', '140300', '0', '0', '1', '', '阳泉市', '140000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('51', '140400', '0', '0', '1', '', '长治市', '140000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('52', '140500', '0', '0', '1', '', '晋城市', '140000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('53', '140600', '0', '0', '1', '', '朔州市', '140000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('54', '140700', '0', '0', '1', '', '晋中市', '140000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('55', '140800', '0', '0', '1', '', '运城市', '140000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('56', '140900', '0', '0', '1', '', '忻州市', '140000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('57', '141000', '0', '0', '1', '', '临汾市', '140000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('58', '141100', '0', '0', '1', '', '吕梁市', '140000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('59', '150100', '0', '0', '1', '', '呼和浩特市', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('60', '150200', '0', '0', '1', '', '包头市', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('61', '150300', '0', '0', '1', '', '乌海市', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('62', '150400', '0', '0', '1', '', '赤峰市', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('63', '150500', '0', '0', '1', '', '通辽市', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('64', '150600', '0', '0', '1', '', '鄂尔多斯市', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('65', '150700', '0', '0', '1', '', '呼伦贝尔市', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('66', '150800', '0', '0', '1', '', '巴彦淖尔市', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('67', '150900', '0', '0', '1', '', '乌兰察布市', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('68', '151000', '0', '0', '1', '', '东胜', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('69', '152200', '0', '0', '1', '', '兴安盟', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('70', '152500', '0', '0', '1', '', '锡林郭勒盟', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('71', '152900', '0', '0', '1', '', '阿拉善盟', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('72', '210100', '0', '0', '1', '', '沈阳市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('73', '210200', '0', '0', '1', '', '大连市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('74', '210300', '0', '0', '1', '', '鞍山市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('75', '210400', '0', '0', '1', '', '抚顺市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('76', '210500', '0', '0', '1', '', '本溪市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('77', '210600', '0', '0', '1', '', '丹东市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('78', '210700', '0', '0', '1', '', '锦州市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('79', '210800', '0', '0', '1', '', '营口市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('80', '210900', '0', '0', '1', '', '阜新市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('81', '211000', '0', '0', '1', '', '辽阳市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('82', '211100', '0', '0', '1', '', '盘锦市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('83', '211200', '0', '0', '1', '', '铁岭市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('84', '211300', '0', '0', '1', '', '朝阳市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('85', '211400', '0', '0', '1', '', '葫芦岛市', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('86', '211500', '0', '0', '1', '', '北宁', '210000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('87', '220100', '0', '0', '1', '', '长春市', '220000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('88', '220200', '0', '0', '1', '', '吉林市', '220000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('89', '220300', '0', '0', '1', '', '四平市', '220000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('90', '220400', '0', '0', '1', '', '辽源市', '220000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('91', '220500', '0', '0', '1', '', '通化市', '220000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('92', '220600', '0', '0', '1', '', '白山市', '220000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('93', '220700', '0', '0', '1', '', '松原市', '220000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('94', '220800', '0', '0', '1', '', '白城市', '220000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('95', '222400', '0', '0', '1', '', '延边州', '220000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('96', '230100', '0', '0', '1', '', '哈尔滨市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('97', '230200', '0', '0', '1', '', '齐齐哈尔市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('98', '230300', '0', '0', '1', '', '鸡西市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('99', '230400', '0', '0', '1', '', '鹤岗市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('100', '230500', '0', '0', '1', '', '双鸭山市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('101', '230600', '0', '0', '1', '', '大庆市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('102', '230700', '0', '0', '1', '', '伊春市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('103', '230800', '0', '0', '1', '', '佳木斯市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('104', '230900', '0', '0', '1', '', '七台河市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('105', '231000', '0', '0', '1', '', '牡丹江市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('106', '231100', '0', '0', '1', '', '黑河市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('107', '231200', '0', '0', '1', '', '绥化市', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('108', '232700', '0', '0', '1', '', '大兴安岭', '230000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('109', '310100', '0', '0', '1', '', '上海市', '310000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('110', '320100', '0', '0', '1', '', '南京市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('111', '320200', '0', '0', '1', '', '无锡市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('112', '320300', '0', '0', '1', '', '徐州市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('113', '320400', '0', '0', '1', '', '常州市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('114', '320500', '0', '0', '1', '', '苏州市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('115', '320600', '0', '0', '1', '', '南通市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('116', '320700', '0', '0', '1', '', '连云港市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('117', '320800', '0', '0', '1', '', '淮安市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('118', '320900', '0', '0', '1', '', '盐城市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('119', '321000', '0', '0', '1', '', '扬州市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('120', '321100', '0', '0', '1', '', '镇江市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('121', '321200', '0', '0', '1', '', '泰州市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('122', '321300', '0', '0', '1', '', '宿迁市', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('123', '330100', '0', '0', '1', '', '杭州市', '330000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('124', '330200', '0', '0', '1', '', '宁波市', '330000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('125', '330300', '0', '0', '1', '', '温州市', '330000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('126', '330400', '0', '0', '1', '', '嘉兴市', '330000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('127', '330500', '0', '0', '1', '', '湖州市', '330000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('128', '330600', '0', '0', '1', '', '绍兴市', '330000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('129', '330700', '0', '0', '1', '', '金华市', '330000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('130', '330800', '0', '0', '1', '', '衢州市', '330000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('131', '330900', '0', '0', '1', '', '舟山市', '330000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('132', '331000', '0', '0', '1', '', '台州市', '330000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('133', '331100', '0', '0', '1', '', '丽水市', '330000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('134', '340100', '0', '0', '1', '', '合肥市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('135', '340200', '0', '0', '1', '', '芜湖市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('136', '340300', '0', '0', '1', '', '蚌埠市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('137', '340400', '0', '0', '1', '', '淮南市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('138', '340500', '0', '0', '1', '', '马鞍山市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('139', '340600', '0', '0', '1', '', '淮北市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('140', '340700', '0', '0', '1', '', '铜陵市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('141', '340800', '0', '0', '1', '', '安庆市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('142', '341000', '0', '0', '1', '', '黄山市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('143', '341100', '0', '0', '1', '', '滁州市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('144', '341200', '0', '0', '1', '', '阜阳市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('145', '341300', '0', '0', '1', '', '宿州市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('146', '341400', '0', '0', '1', '', '巢湖', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('147', '341500', '0', '0', '1', '', '六安市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('148', '341600', '0', '0', '1', '', '亳州市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('149', '341700', '0', '0', '1', '', '池州市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('150', '341800', '0', '0', '1', '', '宣城市', '340000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('151', '350100', '0', '0', '1', '', '福州市', '350000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('152', '350200', '0', '0', '1', '', '厦门市', '350000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('153', '350300', '0', '0', '1', '', '莆田市', '350000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('154', '350400', '0', '0', '1', '', '三明市', '350000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('155', '350500', '0', '0', '1', '', '泉州市', '350000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('156', '350600', '0', '0', '1', '', '漳州市', '350000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('157', '350700', '0', '0', '1', '', '南平市', '350000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('158', '350800', '0', '0', '1', '', '龙岩市', '350000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('159', '350900', '0', '0', '1', '', '宁德市', '350000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('160', '360100', '0', '0', '1', '', '南昌市', '360000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('161', '360200', '0', '0', '1', '', '景德镇市', '360000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('162', '360300', '0', '0', '1', '', '萍乡市', '360000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('163', '360400', '0', '0', '1', '', '九江市', '360000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('164', '360500', '0', '0', '1', '', '新余市', '360000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('165', '360600', '0', '0', '1', '', '鹰潭市', '360000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('166', '360700', '0', '0', '1', '', '赣州市', '360000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('167', '360800', '0', '0', '1', '', '吉安市', '360000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('168', '360900', '0', '0', '1', '', '宜春市', '360000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('169', '361000', '0', '0', '1', '', '抚州市', '360000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('170', '361100', '0', '0', '1', '', '上饶市', '360000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('171', '370100', '0', '0', '1', '', '济南市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('172', '370200', '0', '0', '1', '', '青岛市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('173', '370300', '0', '0', '1', '', '淄博市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('174', '370400', '0', '0', '1', '', '枣庄市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('175', '370500', '0', '0', '1', '', '东营市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('176', '370600', '0', '0', '1', '', '烟台市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('177', '370700', '0', '0', '1', '', '潍坊市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('178', '370800', '0', '0', '1', '', '济宁市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('179', '370900', '0', '0', '1', '', '泰安市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('180', '371000', '0', '0', '1', '', '威海市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('181', '371100', '0', '0', '1', '', '日照市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('182', '371200', '0', '0', '1', '', '莱芜市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('183', '371300', '0', '0', '1', '', '临沂市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('184', '371400', '0', '0', '1', '', '德州市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('185', '371500', '0', '0', '1', '', '聊城市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('186', '371600', '0', '0', '1', '', '滨州市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('187', '371700', '0', '0', '1', '', '菏泽市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('188', '411600', '0', '0', '1', '', '周口市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('189', '411700', '0', '0', '1', '', '驻马店市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('190', '419000', '0', '0', '1', '', '济源市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('191', '410100', '0', '0', '1', '', '郑州市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('192', '410200', '0', '0', '1', '', '开封市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('193', '410300', '0', '0', '1', '', '洛阳市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('194', '410400', '0', '0', '1', '', '平顶山市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('195', '410500', '0', '0', '1', '', '安阳市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('196', '410600', '0', '0', '1', '', '鹤壁市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('197', '410700', '0', '0', '1', '', '新乡市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('198', '410800', '0', '0', '1', '', '焦作市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('199', '410900', '0', '0', '1', '', '濮阳市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('200', '411000', '0', '0', '1', '', '许昌市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('201', '411100', '0', '0', '1', '', '漯河市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('202', '411200', '0', '0', '1', '', '三门峡市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('203', '411300', '0', '0', '1', '', '南阳市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('204', '411400', '0', '0', '1', '', '商丘市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('205', '411500', '0', '0', '1', '', '信阳市', '410000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('206', '420100', '0', '0', '1', '', '武汉市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('207', '420200', '0', '0', '1', '', '黄石市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('208', '420300', '0', '0', '1', '', '十堰市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('209', '420500', '0', '0', '1', '', '宜昌市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('210', '420600', '0', '0', '1', '', '襄阳', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('211', '420700', '0', '0', '1', '', '鄂州市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('212', '420800', '0', '0', '1', '', '荆门市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('213', '420900', '0', '0', '1', '', '孝感市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('214', '421000', '0', '0', '1', '', '荆州市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('215', '421100', '0', '0', '1', '', '黄冈市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('216', '421200', '0', '0', '1', '', '咸宁市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('217', '421300', '0', '0', '1', '', '随州市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('218', '422800', '0', '0', '1', '', '恩施州', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('219', '423100', '0', '0', '1', '', '仙桃市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('220', '423200', '0', '0', '1', '', '潜江市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('221', '423300', '0', '0', '1', '', '天门市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('222', '423400', '0', '0', '1', '', '神农架林区', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('223', '430100', '0', '0', '1', '', '长沙市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('224', '430200', '0', '0', '1', '', '株洲市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('225', '430300', '0', '0', '1', '', '湘潭市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('226', '430400', '0', '0', '1', '', '衡阳市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('227', '430500', '0', '0', '1', '', '邵阳市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('228', '430600', '0', '0', '1', '', '岳阳市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('229', '430700', '0', '0', '1', '', '常德市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('230', '430800', '0', '0', '1', '', '张家界市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('231', '430900', '0', '0', '1', '', '益阳市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('232', '431000', '0', '0', '1', '', '郴州市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('233', '431100', '0', '0', '1', '', '永州市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('234', '431200', '0', '0', '1', '', '怀化市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('235', '431300', '0', '0', '1', '', '娄底市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('236', '433100', '0', '0', '1', '', '湘西州', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('237', '440100', '0', '0', '1', '', '广州市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('238', '440200', '0', '0', '1', '', '韶关市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('239', '440300', '0', '0', '1', '', '深圳市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('240', '440400', '0', '0', '1', '', '珠海市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('241', '440500', '0', '0', '1', '', '汕头市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('242', '440600', '0', '0', '1', '', '佛山市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('243', '440700', '0', '0', '1', '', '江门市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('244', '440800', '0', '0', '1', '', '湛江市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('245', '440900', '0', '0', '1', '', '茂名市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('246', '441200', '0', '0', '1', '', '肇庆市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('247', '441300', '0', '0', '1', '', '惠州市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('248', '441400', '0', '0', '1', '', '梅州市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('249', '441500', '0', '0', '1', '', '汕尾市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('250', '441600', '0', '0', '1', '', '河源市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('251', '441700', '0', '0', '1', '', '阳江市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('252', '441800', '0', '0', '1', '', '清远市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('253', '441900', '0', '0', '1', '', '东莞市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('254', '442000', '0', '0', '1', '', '中山市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('255', '445100', '0', '0', '1', '', '潮州市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('256', '445200', '0', '0', '1', '', '揭阳市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('257', '445300', '0', '0', '1', '', '云浮市', '440000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('258', '450100', '0', '0', '1', '', '南宁市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('259', '450200', '0', '0', '1', '', '柳州市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('260', '450300', '0', '0', '1', '', '桂林市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('261', '450400', '0', '0', '1', '', '梧州市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('262', '450500', '0', '0', '1', '', '北海市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('263', '450600', '0', '0', '1', '', '防城港市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('264', '450700', '0', '0', '1', '', '钦州市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('265', '450800', '0', '0', '1', '', '贵港市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('266', '450900', '0', '0', '1', '', '玉林市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('267', '451000', '0', '0', '1', '', '百色市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('268', '451100', '0', '0', '1', '', '贺州市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('269', '451200', '0', '0', '1', '', '河池市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('270', '451300', '0', '0', '1', '', '来宾市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('271', '451400', '0', '0', '1', '', '崇左市', '450000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('272', '462800', '0', '0', '1', '', '南沙群岛', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('273', '462900', '0', '0', '1', '', '中沙群岛的岛礁及其海域', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('274', '460100', '0', '0', '1', '', '海口市', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('275', '460200', '0', '0', '1', '', '三亚市', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('276', '461100', '0', '0', '1', '', '五指山', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('277', '461200', '0', '0', '1', '', '琼海', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('278', '461300', '0', '0', '1', '', '儋州', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('279', '461400', '0', '0', '1', '', '文昌市', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('280', '461500', '0', '0', '1', '', '万宁市', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('281', '461600', '0', '0', '1', '', '东方市', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('282', '461700', '0', '0', '1', '', '定安', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('283', '461800', '0', '0', '1', '', '屯昌', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('284', '461900', '0', '0', '1', '', '澄迈', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('285', '462000', '0', '0', '1', '', '临高', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('286', '462100', '0', '0', '1', '', '白沙', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('287', '462200', '0', '0', '1', '', '昌江', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('288', '462300', '0', '0', '1', '', '乐东', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('289', '462400', '0', '0', '1', '', '陵水', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('290', '462500', '0', '0', '1', '', '保亭', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('291', '462600', '0', '0', '1', '', '琼中', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('292', '462700', '0', '0', '1', '', '西沙群岛', '460000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('293', '500100', '0', '0', '1', '', '重庆市', '500000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('294', '510100', '0', '0', '1', '', '成都市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('295', '510300', '0', '0', '1', '', '自贡市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('296', '510400', '0', '0', '1', '', '攀枝花市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('297', '510500', '0', '0', '1', '', '泸州市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('298', '510600', '0', '0', '1', '', '德阳市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('299', '510700', '0', '0', '1', '', '绵阳市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('300', '510800', '0', '0', '1', '', '广元市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('301', '510900', '0', '0', '1', '', '遂宁市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('302', '511000', '0', '0', '1', '', '内江市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('303', '511100', '0', '0', '1', '', '乐山市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('304', '511300', '0', '0', '1', '', '南充市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('305', '511400', '0', '0', '1', '', '眉山市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('306', '511500', '0', '0', '1', '', '宜宾市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('307', '511600', '0', '0', '1', '', '广安市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('308', '511700', '0', '0', '1', '', '达州市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('309', '511800', '0', '0', '1', '', '雅安市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('310', '511900', '0', '0', '1', '', '巴中市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('311', '512000', '0', '0', '1', '', '资阳市', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('312', '513200', '0', '0', '1', '', '阿坝州', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('313', '513300', '0', '0', '1', '', '甘孜州', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('314', '513400', '0', '0', '1', '', '凉山州', '510000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('315', '520100', '0', '0', '1', '', '贵阳市', '520000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('316', '520200', '0', '0', '1', '', '六盘水市', '520000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('317', '520300', '0', '0', '1', '', '遵义市', '520000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('318', '520400', '0', '0', '1', '', '安顺市', '520000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('319', '522200', '0', '0', '1', '', '铜仁市', '520000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('320', '522300', '0', '0', '1', '', '黔西南州', '520000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('321', '522400', '0', '0', '1', '', '毕节市', '520000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('322', '522600', '0', '0', '1', '', '黔东南州', '520000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('323', '522700', '0', '0', '1', '', '黔南州', '520000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('324', '530100', '0', '0', '1', '', '昆明市', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('325', '530300', '0', '0', '1', '', '曲靖市', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('326', '530400', '0', '0', '1', '', '玉溪市', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('327', '530500', '0', '0', '1', '', '保山市', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('328', '530600', '0', '0', '1', '', '昭通市', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('329', '530700', '0', '0', '1', '', '丽江市', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('330', '530800', '0', '0', '1', '', '普洱市', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('331', '530900', '0', '0', '1', '', '临沧市', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('332', '532300', '0', '0', '1', '', '楚雄州', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('333', '532500', '0', '0', '1', '', '红河州', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('334', '532600', '0', '0', '1', '', '文山州', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('335', '532800', '0', '0', '1', '', '西双版纳州', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('336', '532900', '0', '0', '1', '', '大理州', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('337', '533100', '0', '0', '1', '', '德宏州', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('338', '533300', '0', '0', '1', '', '怒江州', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('339', '533400', '0', '0', '1', '', '迪庆州', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('340', '540100', '0', '0', '1', '', '拉萨市', '540000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('341', '542100', '0', '0', '1', '', '昌都地区', '540000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('342', '542200', '0', '0', '1', '', '山南地区', '540000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('343', '542300', '0', '0', '1', '', '日喀则地区', '540000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('344', '542400', '0', '0', '1', '', '那曲地区', '540000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('345', '542500', '0', '0', '1', '', '阿里地区', '540000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('346', '542600', '0', '0', '1', '', '林芝地区', '540000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('347', '610100', '0', '0', '1', '', '西安市', '610000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('348', '610200', '0', '0', '1', '', '铜川市', '610000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('349', '610300', '0', '0', '1', '', '宝鸡市', '610000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('350', '610400', '0', '0', '1', '', '咸阳市', '610000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('351', '610500', '0', '0', '1', '', '渭南市', '610000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('352', '610600', '0', '0', '1', '', '延安市', '610000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('353', '610700', '0', '0', '1', '', '汉中市', '610000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('354', '610800', '0', '0', '1', '', '榆林市', '610000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('355', '610900', '0', '0', '1', '', '安康市', '610000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('356', '611000', '0', '0', '1', '', '商洛市', '610000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('357', '620100', '0', '0', '1', '', '兰州市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('358', '620200', '0', '0', '1', '', '嘉峪关市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('359', '620300', '0', '0', '1', '', '金昌市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('360', '620400', '0', '0', '1', '', '白银市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('361', '620500', '0', '0', '1', '', '天水市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('362', '620600', '0', '0', '1', '', '武威市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('363', '620700', '0', '0', '1', '', '张掖市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('364', '620800', '0', '0', '1', '', '平凉市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('365', '620900', '0', '0', '1', '', '酒泉市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('366', '621000', '0', '0', '1', '', '庆阳市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('367', '621100', '0', '0', '1', '', '定西市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('368', '621200', '0', '0', '1', '', '陇南市', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('369', '622900', '0', '0', '1', '', '临夏州', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('370', '623000', '0', '0', '1', '', '甘南州', '620000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('371', '630100', '0', '0', '1', '', '西宁市', '630000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('372', '632100', '0', '0', '1', '', '海东地区', '630000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('373', '632200', '0', '0', '1', '', '海北州', '630000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('374', '632300', '0', '0', '1', '', '黄南州', '630000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('375', '632500', '0', '0', '1', '', '海南州', '630000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('376', '632600', '0', '0', '1', '', '果洛州', '630000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('377', '632700', '0', '0', '1', '', '玉树州', '630000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('378', '632800', '0', '0', '1', '', '海西州', '630000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('379', '640100', '0', '0', '1', '', '银川市', '640000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('380', '640200', '0', '0', '1', '', '石嘴山市', '640000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('381', '640300', '0', '0', '1', '', '吴忠市', '640000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('382', '640400', '0', '0', '1', '', '固原市', '640000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('383', '640500', '0', '0', '1', '', '中卫市', '640000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('384', '650100', '0', '0', '1', '', '乌鲁木齐市', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('385', '650200', '0', '0', '1', '', '克拉玛依市', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('386', '650300', '0', '0', '1', '', '米泉', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('387', '652100', '0', '0', '1', '', '吐鲁番地区', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('388', '652200', '0', '0', '1', '', '哈密地区', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('389', '652300', '0', '0', '1', '', '昌吉州', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('390', '652700', '0', '0', '1', '', '博尔塔拉州', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('391', '652800', '0', '0', '1', '', '巴音郭楞州', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('392', '652900', '0', '0', '1', '', '阿克苏地区', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('393', '653000', '0', '0', '1', '', '克孜勒苏州', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('394', '653100', '0', '0', '1', '', '喀什地区', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('395', '653200', '0', '0', '1', '', '和田地区', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('396', '654000', '0', '0', '1', '', '伊犁州', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('397', '654200', '0', '0', '1', '', '塔城地区', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('398', '654300', '0', '0', '1', '', '阿勒泰地区', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('399', '655100', '0', '0', '1', '', '石河子市', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('400', '655200', '0', '0', '1', '', '阿拉尔市', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('401', '655300', '0', '0', '1', '', '图木舒克市', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('402', '655400', '0', '0', '1', '', '五家渠市', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('403', '710100', '0', '0', '1', '', '台湾省', '710000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('404', '810100', '0', '0', '1', '', '香港特区', '810000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('405', '820100', '0', '0', '1', '', '澳门特区', '820000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('406', '530901', '0', '0', '1', '', '临沧地区', '530000', '', '', '0');
INSERT INTO `shm_city` VALUES ('407', '423401', '0', '0', '1', '', '襄樊市', '420000', '', '', '0');
INSERT INTO `shm_city` VALUES ('408', '423402', '0', '0', '1', '', '钟祥市', '420000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('409', '321301', '0', '0', '1', '', '张家港', '320000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('410', '371701', '0', '0', '1', '', '莱阳市', '370000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('411', '152901', '0', '0', '1', '', '霍林郭勒市', '150000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('412', '222401', '0', '0', '1', '', '延吉市', '220000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('413', '632801', '0', '0', '1', '', '格尔木市', '630000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('414', '131101', '0', '0', '1', '', '任丘市', '130000', '', '', '1368120199');
INSERT INTO `shm_city` VALUES ('415', '655401', '0', '0', '1', '', '奎屯市', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('416', '655402', '0', '0', '1', '', '伊宁市', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('417', '655403', '0', '0', '1', '', '博乐市', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('418', '655404', '0', '0', '1', '', '库尔勒市', '650000', '', '', '1368120202');
INSERT INTO `shm_city` VALUES ('419', '522701', '0', '0', '1', '', '清镇市', '520000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('420', '632802', '0', '0', '1', '', '德令哈市', '630000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('421', '530902', '0', '0', '1', '', '景洪市', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('422', '530903', '0', '0', '1', '', '开远市', '530000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('423', '433101', '0', '0', '1', '', '耒阳市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('424', '433102', '0', '0', '1', '', '吉首市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('425', '350901', '0', '0', '1', '', '永安市', '350000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('426', '350902', '0', '0', '1', '', '晋江市', '350000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('427', '433102', '0', '0', '1', '', '常德市', '430000', '', '', '1368120200');
INSERT INTO `shm_city` VALUES ('428', '522701', '0', '0', '1', '', '都匀', '520000', '', '', '1368120201');
INSERT INTO `shm_city` VALUES ('429', '522702', '0', '0', '1', '', '凯里市', '520000', '', '', '1368120201');

-- ----------------------------
-- Table structure for `shm_coltypes`
-- ----------------------------
DROP TABLE IF EXISTS `shm_coltypes`;
CREATE TABLE `shm_coltypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `sort_id` int(11) DEFAULT NULL COMMENT '排序id',
  `fid` int(11) DEFAULT NULL COMMENT '父类型',
  `depth` int(3) DEFAULT NULL COMMENT '深度',
  `cid` int(4) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `name` varchar(30) NOT NULL DEFAULT 'ctype' COMMENT '表单名称，分类标志，单个栏目多个类型时',
  `title` varchar(30) DEFAULT NULL COMMENT '标题类型',
  `identify` varchar(30) DEFAULT NULL COMMENT '标记',
  `photo` varchar(30) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(200) DEFAULT NULL COMMENT '缩略图',
  `show` int(1) NOT NULL DEFAULT '1' COMMENT '显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_coltypes
-- ----------------------------
INSERT INTO `shm_coltypes` VALUES ('1', '5', '0', '0', '8', 'ctype', '新闻分类一', '', '', '', '1');
INSERT INTO `shm_coltypes` VALUES ('2', '2', '0', '0', '8', 'ctype', '新闻分类二', '', '', '', '1');
INSERT INTO `shm_coltypes` VALUES ('3', '3', '0', '0', '9', 'ctype', '产品分类1', '', '', '', '1');
INSERT INTO `shm_coltypes` VALUES ('4', '4', '0', '0', '9', 'ctype', '产品分类2', '', '', '', '1');
INSERT INTO `shm_coltypes` VALUES ('5', '1', '0', '0', '8', 'ctype', '新闻分类三', '', '', '', '1');
INSERT INTO `shm_coltypes` VALUES ('9', '6', '0', '0', '31', 'ctype', '行业新闻', null, '', '', '1');
INSERT INTO `shm_coltypes` VALUES ('10', '7', '0', '0', '31', 'ctype', '媒体聚焦', null, '', '', '1');
INSERT INTO `shm_coltypes` VALUES ('11', '8', '0', '0', '34', 'ctype', '基础化工产品系列', null, '', '', '1');
INSERT INTO `shm_coltypes` VALUES ('12', '9', '0', '0', '34', 'ctype', '精细化学品系列', null, '', '', '1');

-- ----------------------------
-- Table structure for `shm_columns`
-- ----------------------------
DROP TABLE IF EXISTS `shm_columns`;
CREATE TABLE `shm_columns` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `sort_id` int(4) DEFAULT NULL COMMENT '排序',
  `parent_id` int(4) NOT NULL DEFAULT '0' COMMENT '父标识(col id)',
  `depth` int(4) NOT NULL DEFAULT '1' COMMENT '深度',
  `identify` tinytext NOT NULL COMMENT 'url唯一标记(word or link)',
  `path` tinytext NOT NULL COMMENT 'urlpath',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext COMMENT '优化标题',
  `tags` tinytext COMMENT '标签',
  `intro` text COMMENT '简介',
  `mid` int(2) NOT NULL COMMENT '模型标识(Model id)',
  `temp_index` varchar(50) DEFAULT NULL COMMENT '前台模板栏目index',
  `temp_show` varchar(50) DEFAULT NULL COMMENT '内容展示模板show',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '0删除 1正常',
  `show` int(1) NOT NULL DEFAULT '1' COMMENT '0隐藏 1正常',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='栏目';

-- ----------------------------
-- Records of shm_columns
-- ----------------------------
INSERT INTO `shm_columns` VALUES ('26', '28', '0', '0', 'news', '/news', '集团动态', '', '', '', '17', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('32', '31', '0', '0', 'product', '/product', '产品与服务', '', '', '', '17', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('14', '14', '0', '0', 'index', '/index', '网站首页', '', '', '', '17', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('15', '15', '14', '1', 'index_banner', 'index/index_banner', 'banner图', '', '', '', '8', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('16', '17', '14', '1', 'index_01', 'index/index_01', '栏目一', '', '', '', '8', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('17', '18', '14', '1', 'index_02', 'index/index_02', '栏目二', '', '', '', '8', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('19', '19', '0', '0', 'about', '/about', '集团概况', '', '', '', '17', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('20', '22', '19', '1', 'about_01', 'about/about_01', '集团简介', '', '', '', '8', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('21', '23', '19', '1', 'about_02', 'about/about_02', '集团大事记', '', '', '', '8', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('22', '24', '19', '1', 'about_03', 'about/about_03', '企业荣誉', '', '', '', '14', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('24', '27', '19', '1', 'about_05', 'about/about_05', '下属公司', '', '', '', '12', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('25', '26', '19', '1', 'about_04', 'about/about_04', '企业文化', '', '', '', '8', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('27', '20', '19', '1', 'about_banner', 'about/about_banner', 'banner图', '', '', '', '8', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('28', '29', '26', '1', 'news_banner', 'news/news_banner', 'banner图', '', '', '', '8', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('31', '30', '26', '1', 'news_list', 'news/news_list', '集团动态', '', '', '', '3', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('33', '32', '32', '1', 'product_banner', 'product/product_banner', 'banner图', '', '', '', '8', '', '', '1', '1');
INSERT INTO `shm_columns` VALUES ('34', '34', '32', '1', 'product_list', 'product/product_list', '产品与服务', '', '', '', '9', '', '', '1', '1');

-- ----------------------------
-- Table structure for `shm_configs`
-- ----------------------------
DROP TABLE IF EXISTS `shm_configs`;
CREATE TABLE `shm_configs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) NOT NULL,
  `category` varchar(30) NOT NULL COMMENT '分类',
  `key` varchar(30) NOT NULL COMMENT '键值',
  `value` text NOT NULL COMMENT '值',
  `label` varchar(100) NOT NULL COMMENT '标题',
  `intor` tinytext COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='配置';

-- ----------------------------
-- Records of shm_configs
-- ----------------------------
INSERT INTO `shm_configs` VALUES ('1', '1', 'adminer', 'title_suffix', 'CI框架(中文后台)', '标题后缀', '后端标题栏显示内容的后缀.');
INSERT INTO `shm_configs` VALUES ('2', '9', 'site', 'copyright', '', 'CopyRight', '');
INSERT INTO `shm_configs` VALUES ('3', '8', 'site', 'email', '', '联系邮箱', '');
INSERT INTO `shm_configs` VALUES ('4', '4', 'site', 'title_suffix', 'CI框架', '公司名称|品牌名称', '前台站点标题的后缀优化');
INSERT INTO `shm_configs` VALUES ('5', '5', 'site', 'title_seo', 'CI框架', '首页标题[Title]', '网站优化标题');
INSERT INTO `shm_configs` VALUES ('6', '6', 'site', 'tags', 'CI框架', '关键词[Keywords]', '网站关键词设定，使用`,`来间隔标签.');
INSERT INTO `shm_configs` VALUES ('7', '7', 'site', 'intro', 'CI框架', '站点描述[Description]', '网站描述');
INSERT INTO `shm_configs` VALUES ('8', '10', 'site', 'icp', '', 'ICP编号', '');
INSERT INTO `shm_configs` VALUES ('9', '9', 'adminer_x', 'remember_hours', '72', '记住登录', '记住登录的时间，默认单位为小时。');
INSERT INTO `shm_configs` VALUES ('15', '10', 'adminer', 'nopurview', 'login,welcome,manager,ajax', '权限过滤', '');
INSERT INTO `shm_configs` VALUES ('10', '11', 'adminer_x', 'forbidden_hours', '2', '登录禁用', '账户登录错误超过6次时的禁用时间[小时]。');
INSERT INTO `shm_configs` VALUES ('11', '12', 'email', 'stmp', 'smtp.126.com', 'STMP服务器', '');
INSERT INTO `shm_configs` VALUES ('12', '13', 'email', 'account', 'hzshmweb@126.com', '帐号', '发送帐号');
INSERT INTO `shm_configs` VALUES ('13', '14', 'email', 'pwd', 'shmweb123456', '密码', '');
INSERT INTO `shm_configs` VALUES ('14', '15', 'email', 'port', '465', '端口', 'STMP端口[25,开启ssl加密方式为 465 或 994]');
INSERT INTO `shm_configs` VALUES ('22', '12', 'email', 'name', '电邮名称', '电邮名称', '邮件地址显示的名称');
INSERT INTO `shm_configs` VALUES ('16', '3', 'site', 'title', '前端标题 ss', '网站标题', '用于保存前台站点的默认首页标题');
INSERT INTO `shm_configs` VALUES ('17', '1', 'upload_x', 'upload_size', '120m', '上传大小限制', '默认上传权限大小');
INSERT INTO `shm_configs` VALUES ('18', '2', 'upload', 'inline_file_types', 'gif|jp?g|png|doc|docx|mp4|zip|pdf|mp4', '上传后缀过滤', '文件类型的上传');
INSERT INTO `shm_configs` VALUES ('19', '3', 'upload_x', 'memory_limit', '120m', '内存限制', '');
INSERT INTO `shm_configs` VALUES ('20', '4', 'upload_x', 'max_file_uploads', '10', '上传文件个数', '个数限制');
INSERT INTO `shm_configs` VALUES ('21', '5', 'upload', 'scale_width', '0', '上传图片默认宽度', '主要为编辑器上传图片设定');
INSERT INTO `shm_configs` VALUES ('23', '7', 'upload', 'watermark', '0', '图片水印', '图片使用背景为透明的PNG格式');
INSERT INTO `shm_configs` VALUES ('24', '0', 'html', 'html', '0', '开启静态', '是否使用静态生成');
INSERT INTO `shm_configs` VALUES ('25', '0', 'html', 'token', '', '验证密码', '对生成页面操作进行验证,用于第三方触发');
INSERT INTO `shm_configs` VALUES ('26', '0', 'html', 'urlmodel', '0', '路由模式', '0:ID;1:标题,2:拼音');
INSERT INTO `shm_configs` VALUES ('27', '6', 'upload', 'scale_height', '0', '上传图片高度', '主要为编辑器上传图片压缩高度');
INSERT INTO `shm_configs` VALUES ('28', '11', 'site_tj', 'tongji', 'CNZZ', '统计代码（CNZZ,百度）', null);
INSERT INTO `shm_configs` VALUES ('29', '12', 'site', 'qq', '0', '在线客服', null);
INSERT INTO `shm_configs` VALUES ('30', '13', 'site', 'ad', '0', '漂浮广告', null);
INSERT INTO `shm_configs` VALUES ('31', '14', 'site_x', 'mqq', '1', '在线客服模版', null);
INSERT INTO `shm_configs` VALUES ('32', '32', 'email', 'ssl', 'ssl', 'SSL加密', '使用SSL加密方式发送。不使用修改为空');

-- ----------------------------
-- Table structure for `shm_dealer`
-- ----------------------------
DROP TABLE IF EXISTS `shm_dealer`;
CREATE TABLE `shm_dealer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `ccid` int(11) DEFAULT '0',
  `type_id` int(11) DEFAULT NULL,
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `audit` int(1) NOT NULL DEFAULT '0',
  `flag` int(1) NOT NULL DEFAULT '0',
  `show` int(1) NOT NULL DEFAULT '1',
  `status` int(1) NOT NULL DEFAULT '0',
  `title_seo` tinytext,
  `intro` varchar(250) DEFAULT NULL,
  `tags` tinytext,
  `content` mediumtext,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `provinceid` int(12) DEFAULT NULL,
  `cityid` int(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `address` tinytext,
  `lal` varchar(250) DEFAULT NULL,
  `timeline` int(11) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `telphone` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='门店';

-- ----------------------------
-- Records of shm_dealer
-- ----------------------------
INSERT INTO `shm_dealer` VALUES ('1', '6', '0', null, '1', '1', '0', '1', '0', '', '', '', null, '测试信息', null, '330000', '330100', '测试信息', '测试信息', '120.136922,30.277973', '1450616562', null, null, '测试信息', '测试信息');

-- ----------------------------
-- Table structure for `shm_download`
-- ----------------------------
DROP TABLE IF EXISTS `shm_download`;
CREATE TABLE `shm_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` tinytext NOT NULL COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(200) DEFAULT NULL COMMENT '图片缩略图',
  `files` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='资料下载';

-- ----------------------------
-- Records of shm_download
-- ----------------------------
INSERT INTO `shm_download` VALUES ('1', '5', '0', '2', '1', '0', '0', null, '测试', '', '', '  ', '', null, '1450615352', '0', '0', '', '', '7');
INSERT INTO `shm_download` VALUES ('2', '5', '0', '1', '1', '0', '0', null, '测试', '', '', '  ', '', null, '1450615368', '0', '0', '', '', '7');

-- ----------------------------
-- Table structure for `shm_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `shm_feedback`;
CREATE TABLE `shm_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) DEFAULT NULL COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `type_id` int(11) DEFAULT NULL COMMENT '分类',
  `title` varchar(100) DEFAULT NULL COMMENT '标题',
  `content` text COMMENT '详细内容',
  `answer` text COMMENT '回答问题',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `telphone` varchar(50) DEFAULT NULL COMMENT '电话',
  `fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci DEFAULT NULL COMMENT '传真',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `solve` int(1) DEFAULT '0' COMMENT '解决',
  `show` int(1) DEFAULT NULL COMMENT '是否显示',
  `timeline` int(11) DEFAULT NULL COMMENT '发布时间',
  `timeline_answer` int(11) DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='反馈';

-- ----------------------------
-- Records of shm_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `shm_gallery`;
CREATE TABLE `shm_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `cid` int(4) NOT NULL COMMENT '栏目标识',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) NOT NULL COMMENT '排序',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `title` tinytext COMMENT '标题',
  `title_seo` tinytext COMMENT '优化标题',
  `tags` tinytext COMMENT '标签',
  `intro` varbinary(500) DEFAULT NULL COMMENT '简介',
  `photo` text COMMENT '图片列表',
  `thumb` text COMMENT '对应压缩图',
  `timeline` int(11) NOT NULL COMMENT '时间线',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='画廊';

-- ----------------------------
-- Records of shm_gallery
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_honor`
-- ----------------------------
DROP TABLE IF EXISTS `shm_honor`;
CREATE TABLE `shm_honor` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `link` text COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(200) DEFAULT NULL COMMENT '图片缩略图',
  `attachment` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='荣誉';

-- ----------------------------
-- Records of shm_honor
-- ----------------------------
INSERT INTO `shm_honor` VALUES ('2', '4', '0', '1', '1', '0', '0', null, '1', '1', '', '  ', '', null, '1450615346', null, '0', '0', '', '', null);
INSERT INTO `shm_honor` VALUES ('3', '22', '0', '2', '0', '0', '0', null, 'AAAA', '', '', '  ', '', null, '1524539805', null, '0', '0', '', '', null);
INSERT INTO `shm_honor` VALUES ('4', '23', '0', '3', '0', '0', '0', null, '', '', '', '  ', '', null, '1524539843', null, '0', '0', '25', '2018/04/24/thumbnail/152453985067240z24k.jpg', null);
INSERT INTO `shm_honor` VALUES ('5', '23', '0', '4', '0', '0', '0', null, '', '', '', '  ', '', null, '1524539867', null, '0', '0', '25', '2018/04/24/thumbnail/152453985067240z24k.jpg', null);
INSERT INTO `shm_honor` VALUES ('6', '23', '0', '5', '0', '0', '0', null, '', '', '', '  ', '', null, '1524539868', null, '0', '0', '25', '2018/04/24/thumbnail/152453985067240z24k.jpg', null);
INSERT INTO `shm_honor` VALUES ('7', '23', '0', '6', '0', '0', '0', null, '', '', '', '  ', '', null, '1524539868', null, '0', '0', '25', '2018/04/24/thumbnail/152453985067240z24k.jpg', null);
INSERT INTO `shm_honor` VALUES ('8', '23', '0', '7', '0', '0', '0', null, '', '', '', '  ', '', null, '1524539868', null, '0', '0', '25', '2018/04/24/thumbnail/152453985067240z24k.jpg', null);
INSERT INTO `shm_honor` VALUES ('9', '23', '0', '8', '0', '0', '0', null, '', '', '', '  ', '', null, '1524539869', null, '0', '0', '25', '2018/04/24/thumbnail/152453985067240z24k.jpg', null);
INSERT INTO `shm_honor` VALUES ('10', '23', '0', '9', '0', '0', '0', null, '', '', '', '  ', '', null, '1524539869', null, '0', '0', '25', '2018/04/24/thumbnail/152453985067240z24k.jpg', null);
INSERT INTO `shm_honor` VALUES ('11', '23', '0', '10', '0', '0', '0', null, '', '', '', '  ', '', null, '1524539869', null, '0', '0', '25', '2018/04/24/thumbnail/152453985067240z24k.jpg', null);
INSERT INTO `shm_honor` VALUES ('12', '22', '0', '11', '0', '0', '0', null, 'AAAA', '', '', '  ', '', null, '1524539876', null, '0', '0', '', '', null);
INSERT INTO `shm_honor` VALUES ('13', '22', '0', '12', '0', '0', '0', null, 'AAAA', '', '', '  ', '', null, '1524539876', null, '0', '0', '', '', null);
INSERT INTO `shm_honor` VALUES ('14', '22', '0', '13', '0', '0', '0', null, 'AAAA', '', '', '  ', '', null, '1524539876', null, '0', '0', '', '', null);
INSERT INTO `shm_honor` VALUES ('15', '22', '0', '14', '0', '0', '0', null, 'AAAA', '', '', '  ', '', null, '1524539876', null, '0', '0', '', '', null);
INSERT INTO `shm_honor` VALUES ('16', '22', '0', '15', '0', '0', '0', null, 'AAAA', '', '', '  ', '', null, '1524539877', null, '0', '0', '', '', null);
INSERT INTO `shm_honor` VALUES ('17', '22', '0', '16', '0', '0', '0', null, 'AAAA', '', '', '  ', '', null, '1524539877', null, '0', '0', '', '', null);

-- ----------------------------
-- Table structure for `shm_infos`
-- ----------------------------
DROP TABLE IF EXISTS `shm_infos`;
CREATE TABLE `shm_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext NOT NULL COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `author` varchar(50) DEFAULT NULL COMMENT '消息作者',
  `source` varchar(50) DEFAULT NULL COMMENT '消息来源',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `thumb` varchar(200) DEFAULT NULL COMMENT '图片缩略图',
  `files` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='信息表';

-- ----------------------------
-- Records of shm_infos
-- ----------------------------
INSERT INTO `shm_infos` VALUES ('11', '2', '0', '5', '1', '0', '0', null, '测试信息', '', '  ', '', '<p>测试信息</p>', '1492154774', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('12', '2', '0', '6', '1', '0', '0', null, '测试信息', '', '  ', '', '<p>测试信息</p>', '1492154782', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('13', '2', '0', '7', '1', '0', '0', null, '测试信息', '', '  ', '', '<p>测试信息</p>', '1492154976', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('7', '2', '0', '1', '1', '0', '0', null, '测试信息', '', '  ', '', '<p>测试信息</p>', '1492152833', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('8', '2', '0', '2', '1', '0', '0', null, '测试测试', '', '  ', '', '<p>测试测试</p>', '1492154239', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('9', '2', '0', '3', '1', '0', '0', null, '测试测试', '', '  ', '', '<p>测试测试</p>', '1492154253', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('10', '2', '0', '4', '1', '0', '0', null, '测试信息', '', '  ', '', '<p>测试信息</p>', '1492154759', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('14', '24', '0', '8', '0', '0', '0', null, 'CCCCCCCCCCCCCCCCCCCC', '', '  ', '', '<p>CCCCCCCCCCCCCCC<br/></p>', '1524539883', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('15', '24', '0', '9', '0', '0', '0', null, 'CCCCCCCCCCCCCCCCCCCC', '', '  ', '', '<p>CCCCCCCCCCCCCCC<br/></p>', '1524539899', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('16', '24', '0', '10', '0', '0', '0', null, 'CCCCCCCCCCCCCCCCCCCC', '', '  ', '', '<p>CCCCCCCCCCCCCCC<br/></p>', '1524539899', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('17', '24', '0', '11', '0', '0', '0', null, 'CCCCCCCCCCCCCCCCCCCC', '', '  ', '', '<p>CCCCCCCCCCCCCCC<br/></p>', '1524539899', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('18', '24', '0', '12', '0', '0', '0', null, 'CCCCCCCCCCCCCCCCCCCC', '', '  ', '', '<p>CCCCCCCCCCCCCCC<br/></p>', '1524539899', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('19', '24', '0', '13', '0', '0', '0', null, 'CCCCCCCCCCCCCCCCCCCC', '', '  ', '', '<p>CCCCCCCCCCCCCCC<br/></p>', '1524539900', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('20', '24', '0', '14', '0', '0', '0', null, 'CCCCCCCCCCCCCCCCCCCC', '', '  ', '', '<p>CCCCCCCCCCCCCCC<br/></p>', '1524539900', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('21', '24', '0', '15', '0', '0', '0', null, 'CCCCCCCCCCCCCCCCCCCC', '', '  ', '', '<p>CCCCCCCCCCCCCCC<br/></p>', '1524539900', null, '0', null, null, '0', '', '', null);
INSERT INTO `shm_infos` VALUES ('22', '24', '0', '16', '0', '0', '0', null, 'CCCCCCCCCCCCCCCCCCCC', '', '  ', '', '<p>CCCCCCCCCCCCCCC<br/></p>', '1524539900', null, '0', null, null, '0', '', '', null);

-- ----------------------------
-- Table structure for `shm_irregular`
-- ----------------------------
DROP TABLE IF EXISTS `shm_irregular`;
CREATE TABLE `shm_irregular` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `tagtitle` varchar(200) DEFAULT NULL,
  `entitle` varchar(200) DEFAULT NULL,
  `title_seo` tinytext,
  `intro` varchar(250) DEFAULT NULL COMMENT '简介(200汉字)',
  `tagintro` varchar(200) DEFAULT NULL,
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `author` varchar(50) DEFAULT NULL COMMENT '消息作者',
  `source` varchar(50) DEFAULT NULL COMMENT '消息来源',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `photo` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `thumb` varchar(200) DEFAULT NULL COMMENT '图片缩略图',
  `files` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='针对不规则页面的模块表';

-- ----------------------------
-- Records of shm_irregular
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_links`
-- ----------------------------
DROP TABLE IF EXISTS `shm_links`;
CREATE TABLE `shm_links` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cid` int(4) NOT NULL COMMENT '栏目 id',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT NULL COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `title` tinytext NOT NULL COMMENT '标题',
  `content` text COMMENT '详细内容',
  `tip` tinytext COMMENT '鼠标悬停提示',
  `link` tinytext COMMENT 'URL地址',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '缩略图',
  `show` int(1) DEFAULT '1' COMMENT '是否显示',
  `timeline` int(11) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of shm_links
-- ----------------------------
INSERT INTO `shm_links` VALUES ('1', '12', '0', '1', '1', '0', '0', '测试信息', '', null, 'http://www.baidu.com', '>', '', '1', '1487208169');

-- ----------------------------
-- Table structure for `shm_lists`
-- ----------------------------
DROP TABLE IF EXISTS `shm_lists`;
CREATE TABLE `shm_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `cid` int(4) NOT NULL COMMENT '栏目 id',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) NOT NULL COMMENT '排序',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `title` tinytext COMMENT '小标题',
  `content` text COMMENT '内容',
  `timeline` int(11) NOT NULL COMMENT '时间线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='小列表';

-- ----------------------------
-- Records of shm_lists
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_log`
-- ----------------------------
DROP TABLE IF EXISTS `shm_log`;
CREATE TABLE `shm_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(50) DEFAULT NULL,
  `url` mediumtext COMMENT '控制器',
  `category` varchar(50) DEFAULT '' COMMENT '级别: 1 view,2update,add,3,del',
  `message` tinytext COMMENT '备注',
  `mid` int(6) DEFAULT NULL COMMENT '操作人',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `timeline` int(11) DEFAULT NULL COMMENT '时间线',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=719 DEFAULT CHARSET=utf8 COMMENT='操作日志';

-- ----------------------------
-- Records of shm_log
-- ----------------------------
INSERT INTO `shm_log` VALUES ('526', 'login', '/shmweb/web/admin/index.php/login?url=http://localhost/shmweb/web/admin/index.php?', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1492655082');
INSERT INTO `shm_log` VALUES ('525', 'login', '/shmweb/web/admin/index.php/login?url=http://localhost/shmweb/web/admin/index.php?', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1492598570');
INSERT INTO `shm_log` VALUES ('524', 'feedback', '/shmweb/web/admin/index.php/feedback/delete?ids=2', 'delete', '删除数据id:2', '1', '0.0.0.0', '1492597586');
INSERT INTO `shm_log` VALUES ('523', 'recruit_apply', '/shmweb/web/admin/index.php/recruit_apply/delete?ids=6%2C2%2C1', 'delete', '删除数据id:6,2,1', '1', '0.0.0.0', '1492597063');
INSERT INTO `shm_log` VALUES ('522', 'recruit_apply', '/shmweb/web/admin/index.php/recruit_apply/delete?ids=5%2C4', 'delete', '删除数据id:5,4', '1', '0.0.0.0', '1492596613');
INSERT INTO `shm_log` VALUES ('521', 'recruit_apply', '/shmweb/web/admin/index.php/recruit_apply/delete?ids=3', 'delete', '删除数据id:3', '1', '0.0.0.0', '1492596252');
INSERT INTO `shm_log` VALUES ('520', 'upload', '/shmweb/web/index.php/upload/delete', 'delete', '删除文件ID:24', null, '0.0.0.0', '1492596178');
INSERT INTO `shm_log` VALUES ('527', 'login', '/shmweb/web/admin/index.php/login', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1492655126');
INSERT INTO `shm_log` VALUES ('528', 'login', '/shmweb/web/admin/index.php/login', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1492655138');
INSERT INTO `shm_log` VALUES ('529', 'modules', '/shmweb/web/admin/index.php/modules/edit/17', 'update', '更新数据id:17', '1', '0.0.0.0', '1492660118');
INSERT INTO `shm_log` VALUES ('530', 'pageirregular', '/shmweb/web/admin/index.php/pageirregular/edit?c=13', 'update', '更新数据id:1', '1', '0.0.0.0', '1492660460');
INSERT INTO `shm_log` VALUES ('531', 'pageirregular', '/shmweb/web/admin/index.php/pageirregular/edit?c=13', 'update', '更新数据id:1', '1', '0.0.0.0', '1492660568');
INSERT INTO `shm_log` VALUES ('532', 'pageirregular', '/shmweb/web/admin/index.php/pageirregular/edit?c=13', 'update', '更新数据id:1', '1', '0.0.0.0', '1492660595');
INSERT INTO `shm_log` VALUES ('533', 'login', '/shmweb/web/admin/index.php/login?url=http://localhost/shmweb/web/admin/index.php?', 'login', 'manager ID 1: 登录成功！', '1', '0.0.0.0', '1493005023');

-- ----------------------------
-- Table structure for `shm_manager`
-- ----------------------------
DROP TABLE IF EXISTS `shm_manager`;
CREATE TABLE `shm_manager` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL COMMENT '用户名',
  `nickname` varchar(50) DEFAULT NULL COMMENT '显示名称',
  `pwd` varchar(64) NOT NULL COMMENT '密码',
  `gid` varchar(64) NOT NULL DEFAULT '2' COMMENT '用户组ID',
  `email` varchar(100) NOT NULL COMMENT 'email',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话',
  `phone` varchar(30) DEFAULT NULL COMMENT '手机',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `status` int(1) NOT NULL DEFAULT '1' COMMENT '用户状态，0 禁用',
  `login_today` int(11) DEFAULT NULL COMMENT '今日登录次数',
  `pwd_errors` int(1) NOT NULL DEFAULT '0' COMMENT '密码错误次数',
  `login_ip` varchar(25) DEFAULT NULL COMMENT '最后登录的IP',
  `reg_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `login_time` int(11) DEFAULT NULL COMMENT '最后一次登录时间',
  `ga` int(1) DEFAULT '0' COMMENT 'GA 两部验证密钥 开启与否',
  `getpass` int(11) DEFAULT NULL COMMENT '获取密码时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后端管理帐号';

-- ----------------------------
-- Records of shm_manager
-- ----------------------------
## username: shmadmin
## password: sahereman999
INSERT INTO `shm_manager` VALUES ('1', 'shmadmin', '超级用户', '49cc34ec9bfb29a28181541d73cc01f8', '1', 'customservice@shmweb.cn', '', '', '', '1', '0', '0', '127.0.0.1', '1376471117', '1532932601', '1', '1389317880');
INSERT INTO `shm_manager` VALUES ('2', 'testadmin', 'testadmin', '49cc34ec9bfb29a28181541d73cc01f8', '3', '', '', '', '', '1', null, '0', '127.0.0.1', '1487214605', '1487922425', '0', null);

-- ----------------------------
-- Table structure for `shm_manager_group`
-- ----------------------------
DROP TABLE IF EXISTS `shm_manager_group`;
CREATE TABLE `shm_manager_group` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `purview` text NOT NULL COMMENT '权限id序列',
  `title` varchar(50) NOT NULL COMMENT '用户组名称',
  `title_en` varchar(50) NOT NULL COMMENT '用户组名称en',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='权限组';

-- ----------------------------
-- Records of shm_manager_group
-- ----------------------------
INSERT INTO `shm_manager_group` VALUES ('2', '7afb566e83d3dca2d8a47c8cc29e7e36,ff2fa0336fe8fbc6a51c4707aa47c3e3,a155574e57e9a8a0d0c6ecb1c511da68,fddc215a132fa97ca3c193f1cae5cf9f,c54e594684ebf2862c75ba29d83f71be,2ebbbd65b4e2fc52a3ce44de2160e8d2,12fb6543af2e5541b0fc4f8fdd950be0,8d2159c1e0cf70473e66866eb026e80f,c166381208e23d3f4d65dec1231ccf76,a87d77b65f6d1e8380b3d05290a994d0,430f99bc176c67ec705091d6a5da07d4,d230f6a24270b02237beb82a23e2742f,54b064097df1ab924354f87efcdc4ea0,2338d4221db8f9c52bcc2d64ee436b23,70fc54e47310e38ef19160c17ecd91af,ad92c9d2ad1d512ea852e8ae88f762ff,d0101b9aa277c72e45d078dd8369fc65', '用户', 'users');
INSERT INTO `shm_manager_group` VALUES ('3', 'c867ca63fa6504097128acd1ec81cc1a,8402f762da81b63635478f2d63f2fdb0,83b8b31e64c2f941330581de0015f701,5afe031774d80619f5274fa8468c75ed,dbc863e8a21931db8c1d01bc3db3243a,c1799ca1ca659969ec9a0c8dc3a0883b,690c2a41b4cad051baa6666408bc1bd4,10722981017d6155f9ae2fb1da613169,bf2578f224f9e3097c5e47592ca6f9eb,246ef4ba4849e248bc2b4aa8a25c77a5,b5203f7798cc1d9a3db648385cf92f6f,e365835bb5497e8ecf9ce3e18c81d98b,ff5661ddcf33bab40779b62dd0650519,86a69d1e6fd165d5e5d68a78d8ba620e,92c6849f707eeb59b63e8ae9d142ab5c,473697975e44f6fe35c50508a46eea70,89fde7c17a019a877557924256dbed9d,9b1481c45390195bbc93617657f26aa0,34dfc17876c55eb53e8851438b7eefea,229ceb68059d9d878fd635aa22afa6f7,0b044f0efa50f5d997e64dc511d3153d,15c1d3cc59e786989d3bb025b22bb059,e7d2a3d3c4112dc5845fb09e9ce70201,6917a6f69a3b783d8b2cc9a15f93e0c7,9bb626496f5cae83b00ffb481552432b,705f22cbd86ba40041442191cfabff47,9ad49ff8a09aa1e19238211ff2629aac,a56c0dea5c958f74a88b69840d6b3c3d,9e9c3a8d1b84258f622647dce7e268f9,084ab0d1170972947c92ae901f98b6ec,58b7e1346b741399a048d3a032a72002,2383aecac653eb271fca9de8637fc7f5,9041544f46b0f9e0c861c986e5eb563f,6f767735a4bb03e2dde41f2f81984b18,7882e0b46d58b78d70bee525b2404cb8,5cc8d8792c0074efa30bab193e894cd4,119fbe7447f2b8a4bb9708deed2c34fb,0c34b5dc5c2500e604d64e72b1ca8ed7,5b390301d76c5c95f5daa412234203b1,288a975e28e1fe0d9cb74c19e3b64e0f,72661d180ca59ca2cb509ec2082e3444,605adc5504fb08d17f408bf29231bda0,07e763bc0c7ba75e74499bf434897b93,149566ebf75c0fd85bf05d4d606bb7e5,31548dfbf3b9ca570224047bfe5ee488,033c9db19f4046ee16de3b46ca93d018,f6981606398d069ca744323a7ad0a930,4580445d40923410547b6d2b081afbea,a31ff67bb89565c3b51cfd2515d4c7be,461eafbe71ce986a610eb620bd45fa05,3001d259f201972106029780c96db4cf,416fb1a88f1705bb8a4557e412b60dc1,41f132358455d0f99b45487adc377fe8,06b456c04c97ec1590478e00075811fa,796ffd1e3cf12d51f680f45214dc4510,c17650e5017646ad8d61f6e2ed539634,3f1ae82ea3049ebd146fe83c74732b9a,f866443ba073a8e6c1389b7f0fc8d8bd,46abef163a89d173c91a6f541fe7da11,47403e5600a782bca793c7ed2e088cdc', '测试管理员', 'guest');
INSERT INTO `shm_manager_group` VALUES ('1', 'a634cc19664a4f86577556784da60940,7afb566e83d3dca2d8a47c8cc29e7e36,ff2fa0336fe8fbc6a51c4707aa47c3e3,bfc0ef3829e8d84dfc8d31e5edc26d0f,a155574e57e9a8a0d0c6ecb1c511da68,fddc215a132fa97ca3c193f1cae5cf9f,52b7869014f743535798ba509432feb1,a2756c433a39a2319e61bcd68a758265,5341fd0c5de128ab7979a7414b2e586a,e537f9c0308cbfeb6ee40b4e4c344947,c2bc4d65c38311ab74b9dc39680d82df,efdb91a0f150375b423d8361d254241f,a3c8c3d444880bda2a553b8f3eb6695b,4141c0f8e6a977cd7048cd9d751af350,3045880458ee8b8734bf6b3307acd0d5,dbc10e6bbc54c0ea6f49e604839f5526,048c50d364a23dfcec0a87aa49e19eb8,c54e594684ebf2862c75ba29d83f71be,3345e3e48188396dc21242fb119ba6b1,2ebbbd65b4e2fc52a3ce44de2160e8d2,12fb6543af2e5541b0fc4f8fdd950be0,8d2159c1e0cf70473e66866eb026e80f,c166381208e23d3f4d65dec1231ccf76,3025704bb00b809798194964bccb8d3d,60decd16ccd83e013261697b7cc93bc6,7847598074d20e5abc220cb05a606213,afef320193ab13431e6b085c847b8094,9b4b25e0ea18183e9b085cc116246220,2e0115348725a3f383d8daa4354c7c3a,524c66aa98b226bd78bc7e7ad0423de7,66bfe11515e892dbf8bb4a5a92792e8b,50b03d671787f35800682c10c90a75bf,a1873764d0aa66fa9c6d34e16dcc86c2,0e69c6f28f25c24fe241da13093f9b12,6d119f7ae0c3c090ed51e672203c000f,7ff25ae6e8120b5ae5b5fb7b86a11641,53a396649c27c4e0dbd96fe57c2377e9,f59d0f67b7223a083e4449d583e90307,a41e16b61dd21e98c8143409d807890b,e44bd2f89f2820521a93c981c8af920d,f729102b0a0a547d20a4322e2d12cf71,7cf04cb70fa2f26d449acfb7974fd417,a7cd680c1676df4fdb93e7bdd83d6b3c,5f667ab7322f039e4e7e0ba8b04edf2f,6470d2304686b20640688c6d9dc44b46,df53f98d0b09ef3173cc8d594671fa6f,051071e245077a8126a4607e2148f327,224a58fde770d8718f7c06ac852fd9ae,0309718bf1a4785dcbf1e34461213c3e,d174c0a461db66945abcd861216dd94a,494b71b75af1e63c628544872f3c54d4,454f6e4ce4e57bd58eefda7d3fea1fa5,a87d77b65f6d1e8380b3d05290a994d0,430f99bc176c67ec705091d6a5da07d4,d230f6a24270b02237beb82a23e2742f,e5ba15d009798276692f84b4e0c9c1e9,026e09db119a340d72c2d5a611dfedb1,33a3ca4433131ad797eb4a7ff8bdb40b,87f64ed3bd52c1d6396fcb9908cb7fdf', '管理员', 'root');

-- ----------------------------
-- Table structure for `shm_manager_purview`
-- ----------------------------
DROP TABLE IF EXISTS `shm_manager_purview`;
CREATE TABLE `shm_manager_purview` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `model` varchar(30) NOT NULL COMMENT '控制模型',
  `method` varchar(30) NOT NULL COMMENT '控制函数',
  `cid` varchar(30) DEFAULT NULL COMMENT 'column id 参数',
  `uri` varchar(64) NOT NULL COMMENT '权限地址md5(model/method)',
  `title` varchar(50) NOT NULL COMMENT '权限名称',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '是否使用权限',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=660 DEFAULT CHARSET=utf8 COMMENT='用户组权限';

-- ----------------------------
-- Records of shm_manager_purview
-- ----------------------------
INSERT INTO `shm_manager_purview` VALUES ('313', 'configs', 'index', '', 'fddc215a132fa97ca3c193f1cae5cf9f', '配置查看', '1');
INSERT INTO `shm_manager_purview` VALUES ('314', 'configs', 'set', '', 'a155574e57e9a8a0d0c6ecb1c511da68', '配置修改', '1');
INSERT INTO `shm_manager_purview` VALUES ('315', 'columns', 'index', '', 'bfc0ef3829e8d84dfc8d31e5edc26d0f', '栏目列表', '1');
INSERT INTO `shm_manager_purview` VALUES ('316', 'columns', 'create', '', 'ff2fa0336fe8fbc6a51c4707aa47c3e3', '栏目添加', '1');
INSERT INTO `shm_manager_purview` VALUES ('317', 'columns', 'edit', '', '7afb566e83d3dca2d8a47c8cc29e7e36', '栏目修改', '1');
INSERT INTO `shm_manager_purview` VALUES ('318', 'columns', 'delete', '', '4115dd2b6affc9e3626c695e398f335a', '栏目删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('319', 'modules', 'index', '', 'c54e594684ebf2862c75ba29d83f71be', '模型查看', '1');
INSERT INTO `shm_manager_purview` VALUES ('320', 'modules', 'create', '', '048c50d364a23dfcec0a87aa49e19eb8', '模型添加', '1');
INSERT INTO `shm_manager_purview` VALUES ('321', 'modules', 'edit', '', 'dbc10e6bbc54c0ea6f49e604839f5526', '模型修改', '1');
INSERT INTO `shm_manager_purview` VALUES ('322', 'modules', 'delete', '', 'bbff3957029793ef5163df61fbe018a5', '删除模型', '1');
INSERT INTO `shm_manager_purview` VALUES ('323', 'manager_purview', 'index', '', '4141c0f8e6a977cd7048cd9d751af350', '权限管理', '1');
INSERT INTO `shm_manager_purview` VALUES ('324', 'manager_purview', 'create', '', 'a3c8c3d444880bda2a553b8f3eb6695b', '权限添加', '1');
INSERT INTO `shm_manager_purview` VALUES ('325', 'manager_purview', 'edit', '', 'efdb91a0f150375b423d8361d254241f', '权限修改', '1');
INSERT INTO `shm_manager_purview` VALUES ('326', 'manager_purview', 'delete', '', '35845fea21044129353364ba21f144a0', '权限删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('327', 'manager_group', 'index', '', 'e537f9c0308cbfeb6ee40b4e4c344947', '用户组查看', '1');
INSERT INTO `shm_manager_purview` VALUES ('328', 'manager_group', 'create', '', '5341fd0c5de128ab7979a7414b2e586a', '用户组添加', '1');
INSERT INTO `shm_manager_purview` VALUES ('329', 'manager_group', 'edit', '', 'a2756c433a39a2319e61bcd68a758265', '用户组修改', '1');
INSERT INTO `shm_manager_purview` VALUES ('330', 'manager_group', 'delete', '', '7d5101dc315695e13463ffdf708b5865', '用户组删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('334', 'upload', 'uploado', '', '3345e3e48188396dc21242fb119ba6b1', '上传', '0');
INSERT INTO `shm_manager_purview` VALUES ('475', 'links', 'index', '12', '47403e5600a782bca793c7ed2e088cdc', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('476', 'links', 'create', '12', '46abef163a89d173c91a6f541fe7da11', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('477', 'links', 'edit', '12', 'f866443ba073a8e6c1389b7f0fc8d8bd', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('478', 'links', 'delete', '12', '3f1ae82ea3049ebd146fe83c74732b9a', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('479', 'links', 'audit', '12', 'c17650e5017646ad8d61f6e2ed539634', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('480', 'gallery', 'index', '11', '796ffd1e3cf12d51f680f45214dc4510', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('481', 'gallery', 'create', '11', '06b456c04c97ec1590478e00075811fa', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('482', 'gallery', 'edit', '11', '41f132358455d0f99b45487adc377fe8', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('483', 'gallery', 'delete', '11', '416fb1a88f1705bb8a4557e412b60dc1', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('484', 'gallery', 'audit', '11', '3001d259f201972106029780c96db4cf', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('485', 'recruit', 'index', '10', '461eafbe71ce986a610eb620bd45fa05', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('486', 'recruit', 'create', '10', 'a31ff67bb89565c3b51cfd2515d4c7be', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('487', 'recruit', 'edit', '10', '4580445d40923410547b6d2b081afbea', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('488', 'recruit', 'delete', '10', 'f6981606398d069ca744323a7ad0a930', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('489', 'recruit', 'audit', '10', '033c9db19f4046ee16de3b46ca93d018', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('490', 'product', 'index', '9', '31548dfbf3b9ca570224047bfe5ee488', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('491', 'product', 'create', '9', '149566ebf75c0fd85bf05d4d606bb7e5', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('492', 'product', 'edit', '9', '07e763bc0c7ba75e74499bf434897b93', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('493', 'product', 'delete', '9', '605adc5504fb08d17f408bf29231bda0', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('494', 'product', 'audit', '9', '72661d180ca59ca2cb509ec2082e3444', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('495', 'article', 'index', '8', '288a975e28e1fe0d9cb74c19e3b64e0f', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('496', 'article', 'create', '8', '5b390301d76c5c95f5daa412234203b1', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('497', 'article', 'edit', '8', '0c34b5dc5c2500e604d64e72b1ca8ed7', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('498', 'article', 'delete', '8', '119fbe7447f2b8a4bb9708deed2c34fb', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('499', 'article', 'audit', '8', '5cc8d8792c0074efa30bab193e894cd4', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('500', 'page', 'index', '7', '7882e0b46d58b78d70bee525b2404cb8', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('501', 'page', 'create', '7', '6f767735a4bb03e2dde41f2f81984b18', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('502', 'page', 'edit', '7', '9041544f46b0f9e0c861c986e5eb563f', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('503', 'page', 'delete', '7', '2383aecac653eb271fca9de8637fc7f5', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('504', 'page', 'audit', '7', '58b7e1346b741399a048d3a032a72002', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('505', 'dealer', 'index', '6', '084ab0d1170972947c92ae901f98b6ec', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('506', 'dealer', 'create', '6', '9e9c3a8d1b84258f622647dce7e268f9', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('507', 'dealer', 'edit', '6', 'a56c0dea5c958f74a88b69840d6b3c3d', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('508', 'dealer', 'delete', '6', '9ad49ff8a09aa1e19238211ff2629aac', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('509', 'dealer', 'audit', '6', '705f22cbd86ba40041442191cfabff47', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('510', 'download', 'index', '5', '9bb626496f5cae83b00ffb481552432b', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('511', 'download', 'create', '5', '6917a6f69a3b783d8b2cc9a15f93e0c7', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('512', 'download', 'edit', '5', 'e7d2a3d3c4112dc5845fb09e9ce70201', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('513', 'download', 'delete', '5', '15c1d3cc59e786989d3bb025b22bb059', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('514', 'download', 'audit', '5', '0b044f0efa50f5d997e64dc511d3153d', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('515', 'honor', 'index', '4', '229ceb68059d9d878fd635aa22afa6f7', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('516', 'honor', 'create', '4', '34dfc17876c55eb53e8851438b7eefea', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('517', 'honor', 'edit', '4', '9b1481c45390195bbc93617657f26aa0', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('518', 'honor', 'delete', '4', '89fde7c17a019a877557924256dbed9d', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('519', 'honor', 'audit', '4', '473697975e44f6fe35c50508a46eea70', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('520', 'banners', 'index', '3', '92c6849f707eeb59b63e8ae9d142ab5c', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('521', 'banners', 'create', '3', '86a69d1e6fd165d5e5d68a78d8ba620e', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('522', 'banners', 'edit', '3', 'ff5661ddcf33bab40779b62dd0650519', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('523', 'banners', 'delete', '3', 'e365835bb5497e8ecf9ce3e18c81d98b', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('524', 'banners', 'audit', '3', 'b5203f7798cc1d9a3db648385cf92f6f', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('525', 'infos', 'index', '2', '246ef4ba4849e248bc2b4aa8a25c77a5', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('526', 'infos', 'create', '2', 'bf2578f224f9e3097c5e47592ca6f9eb', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('527', 'infos', 'edit', '2', '10722981017d6155f9ae2fb1da613169', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('528', 'infos', 'delete', '2', '690c2a41b4cad051baa6666408bc1bd4', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('529', 'infos', 'audit', '2', 'c1799ca1ca659969ec9a0c8dc3a0883b', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('530', 'videos', 'index', '1', 'dbc863e8a21931db8c1d01bc3db3243a', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('531', 'videos', 'create', '1', '5afe031774d80619f5274fa8468c75ed', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('532', 'videos', 'edit', '1', '83b8b31e64c2f941330581de0015f701', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('533', 'videos', 'delete', '1', '8402f762da81b63635478f2d63f2fdb0', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('534', 'videos', 'audit', '1', 'c867ca63fa6504097128acd1ec81cc1a', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('535', 'irregular', 'index', '13', 'e9b1068435512c9818927811ebc97066', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('536', 'irregular', 'create', '13', '236d0f81f5fe0584f3122f44f4d41811', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('537', 'irregular', 'edit', '13', '1623d76f346676f7923301dfd04a0326', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('538', 'irregular', 'delete', '13', '365baab58e103a304f6c07a36b912a6e', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('539', 'irregular', 'audit', '13', '93ca83a8ca8676a71a1603a81e8d6298', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('540', 'pageirregular', 'index', '14', 'cd06c2eaac65c66d6089e0c25e643495', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('541', 'pageirregular', 'create', '14', '320a53c6394be1ab2724d872ba8b0637', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('542', 'pageirregular', 'edit', '14', '5ac4729a1a0f9df92282226e5da9c0e2', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('543', 'pageirregular', 'delete', '14', 'ec19bfdf90222673f155a52d2c59f60d', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('544', 'pageirregular', 'audit', '14', '25986f98bfd78315e2f5f737063e1c9e', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('545', 'page', 'index', '15', '67adcdc9ecc0c7e2fad25e987e81d558', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('546', 'page', 'create', '15', 'ac22efd6ba8f2d66cb8990ad41fdacf4', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('547', 'page', 'edit', '15', '7ce524190dbb655344469d9d1abd9675', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('548', 'page', 'delete', '15', 'd7fcfe13c101843bc1dc6327627cad9a', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('549', 'page', 'audit', '15', 'dcddf4f770879571e9a9dddeef238eb8', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('550', 'page', 'index', '16', 'bb33396496707b6764bc6a2e8bc129b6', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('551', 'page', 'create', '16', '442faf8b2c624250d04ba973e9b75448', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('552', 'page', 'edit', '16', '276c1d14a55341e78ce4446029417eac', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('553', 'page', 'delete', '16', '4446d8754242262c0bc260b36e4f3dc8', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('554', 'page', 'audit', '16', 'a2e6ff8d1742da77c14e5710e0bba897', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('555', 'page', 'index', '17', 'b313940ce4a99f0e84f170aec00a8212', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('556', 'page', 'create', '17', 'a0868c5b6851e063578dff5e29dfe18b', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('557', 'page', 'edit', '17', '636cf9faf1efae8e61b6ccec214b2ba3', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('558', 'page', 'delete', '17', '08deb3c2d5874bb143d259f63c4a4678', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('559', 'page', 'audit', '17', '63afda6fb8aa2b34849528b5481aecc9', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('560', 'page', 'index', '18', 'b7aa8995206113f9b96851d4bf77c590', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('561', 'page', 'create', '18', 'a9ea1077d0b777b6c59d37c74b999017', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('562', 'page', 'edit', '18', 'df0c01a2b505838a0a170ada1a1633ad', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('563', 'page', 'delete', '18', 'a618d831f881c3c9920d0d0691fca1fd', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('564', 'page', 'audit', '18', '9ebd27116761e8ac27ff910cb8f1ebff', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('565', 'pageirregular', 'index', '19', '28255c93dbf8f8c0ff44637f3ab225b6', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('566', 'pageirregular', 'create', '19', 'f9c7e57ae0c1c4f87a69a0fb90340be8', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('567', 'pageirregular', 'edit', '19', '7f9dc08fba166bf45951f4d6a38c55c4', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('568', 'pageirregular', 'delete', '19', '7b6d3d6adcac9b8db87fbbbc3b985266', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('569', 'pageirregular', 'audit', '19', '881f2c0649e4a6445df72d881d7a1954', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('570', 'page', 'index', '20', '5466387146c24c0bf2e3d16108518fa7', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('571', 'page', 'create', '20', '046727c78669c6088d2be2b862fd501d', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('572', 'page', 'edit', '20', 'dafc520433ad196ddca6f9938049091a', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('573', 'page', 'delete', '20', 'b2740f38a985066e9767ad545cf7c8e9', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('574', 'page', 'audit', '20', '450b5d5189d4272fc15c82132ed4da2b', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('575', 'page', 'index', '21', '738415a045898e466366b85c88723e69', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('576', 'page', 'create', '21', '62065420da4c663b7d5c0d7a7947d3cd', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('577', 'page', 'edit', '21', '8e19b1bb5665bf12831a44c2f6f8af0a', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('578', 'page', 'delete', '21', '0115d41918e5050d4d88356973b23547', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('579', 'page', 'audit', '21', 'f6654ab77d7426ecf185f5003f81b7ad', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('580', 'honor', 'index', '22', 'dd8cf60de7f84f66d0236870e0d6598b', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('581', 'honor', 'create', '22', '2f1a64b57eaa16e89cd0dec7c0b1a67f', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('582', 'honor', 'edit', '22', '12ff930aca05ed459922402a6314af85', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('583', 'honor', 'delete', '22', '01381dbcbb22a1d4f9a747e1f4cf6a72', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('584', 'honor', 'audit', '22', '7b3c3bafc77edf868469cb51d6222d87', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('585', 'honor', 'index', '23', '14fd1d8620902e09d29c2717e3b3c05d', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('586', 'honor', 'create', '23', '7fca1e337df3a6443b117eb5cb692668', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('587', 'honor', 'edit', '23', 'bd6f9e04680cb98e5e71d74165902d10', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('588', 'honor', 'delete', '23', 'ff47eab515c14ff225bbde679532a32e', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('589', 'honor', 'audit', '23', '9d126a52487ee26b0687cc32bff3f3d2', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('590', 'infos', 'index', '24', '3a5419ba69f6904b479fcffc227977bd', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('591', 'infos', 'create', '24', 'cfb9b5cb1a780b635b41af54c7517a22', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('592', 'infos', 'edit', '24', '5d0d8b8d8056abb9dc300e4ad183ffba', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('593', 'infos', 'delete', '24', 'edf3a773328db350f8d89decffa55d52', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('594', 'infos', 'audit', '24', '54a873b0af746caefa323af3d2564354', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('595', 'page', 'index', '25', '572c2b012731079c6dd52ef2aeda21c2', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('596', 'page', 'create', '25', '2553f73a031d56c054b65ebda5e2e109', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('597', 'page', 'edit', '25', 'e62503bd66ab0424aeb484f3478e297b', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('598', 'page', 'delete', '25', '199f745f65ed815f77bb7857583d442a', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('599', 'page', 'audit', '25', 'a69d2941fa1418b5e3f18e9462f8306e', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('600', 'pageirregular', 'index', '26', 'e85e19355ac4f5d18bd3af9d6d2d8990', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('601', 'pageirregular', 'create', '26', '3d32a6e605db920fcfcc160566a33a26', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('602', 'pageirregular', 'edit', '26', '79347add539db1c060018cc5bec34919', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('603', 'pageirregular', 'delete', '26', '1b2125e9f1ec3346377f01409ad7b6b4', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('604', 'pageirregular', 'audit', '26', '53d91b1bcb98c3a3e54ec29114e577e5', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('605', 'page', 'index', '27', '2306012ac7f9d26755a91b6eb1538d62', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('606', 'page', 'create', '27', '186809ea86d6b21d3a02b86a8c1a6b89', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('607', 'page', 'edit', '27', '03ac7ee245cfa7aa6ba4f3e4ab30d178', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('608', 'page', 'delete', '27', 'd2f87b22eccf2509a9d835f0bb5f0b22', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('609', 'page', 'audit', '27', '03625f75a49d05890eeb151644b63a56', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('610', 'page', 'index', '28', 'ca03f159e5e570feaa3cf960ac6a29e4', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('611', 'page', 'create', '28', 'ee7111a4cf26824f94c3b5bc85d2da5a', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('612', 'page', 'edit', '28', 'b4798aa2fb0b493c7928e9256181d73b', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('613', 'page', 'delete', '28', '7f17c5907ef15086d24220a34579bc48', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('614', 'page', 'audit', '28', '7a4329e99c0173026e66b2f6ff70324b', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('615', 'page', 'index', '29', '05a7b1a9c2cd26861b8a87aafb000d8c', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('616', 'page', 'create', '29', '017c1d6fae3be3a95a26f99a9b5c7a88', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('617', 'page', 'edit', '29', '73fe92a083eab23335362e5fdc0879f3', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('618', 'page', 'delete', '29', 'eae953d32c1420712ec8f08228474c6e', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('619', 'page', 'audit', '29', 'c3974e7ef3e4641be2048448719a86c7', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('620', 'page', 'index', '30', 'e0fd975319c874c5f02f802b3201949b', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('621', 'page', 'create', '30', '29d0934ab8155adbbd6b94df4bac3ea5', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('622', 'page', 'edit', '30', '7c6f9430eb960f52be2eb420645bdcc1', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('623', 'page', 'delete', '30', '16bacb294eeaa66b0e326abd2fdb7910', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('624', 'page', 'audit', '30', 'a6ee4e3e7f6e8f858b3ad8b34071bbb8', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('625', 'article', 'index', '31', 'bfb629b78baa2e3ce689bdcb52838e94', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('626', 'article', 'create', '31', 'e013670f151479301554a1673d2a146d', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('627', 'article', 'edit', '31', '59ce078b1fd68c05d9f4dc3572eba865', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('628', 'article', 'delete', '31', 'c8252a49da04a24c93cdd3c331f14b07', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('629', 'article', 'audit', '31', '0071fcb2a0c9ac743bd999e19ba50146', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('630', 'pageirregular', 'index', '32', '14bdf658392474623d4e1d4161b4ae03', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('631', 'pageirregular', 'create', '32', 'd3122a57b08a231a1439656c5342fa41', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('632', 'pageirregular', 'edit', '32', '8dfded2a711acfa8d8d107035abc1b44', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('633', 'pageirregular', 'delete', '32', '5043f6fe3eaffcfd58206c15813d5bb2', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('634', 'pageirregular', 'audit', '32', '5c7c9adbafeb9146e80ba323651042e6', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('635', 'page', 'index', '33', '6659e411bab6cd5cd42f896e468cc180', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('636', 'page', 'create', '33', 'c55f5848a7d1f5c98e14453504a10815', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('637', 'page', 'edit', '33', '08adf7fe2e452f3321770215b9e2417e', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('638', 'page', 'delete', '33', '65fc72d8f9a6854ec53fa53ca58b085d', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('639', 'page', 'audit', '33', 'c0bb5a4aa6971529c267e51694fc3ec3', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('640', 'product', 'index', '34', '8700647239bfa7e352ab35e08a3bb411', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('641', 'product', 'create', '34', 'a49ce8efce9467ff22d90bc8c4ab05f2', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('642', 'product', 'edit', '34', '98dcdd88b0c719e7e97c7bfae516583e', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('643', 'product', 'delete', '34', 'beb0c7d697c46a276dc12b080c5ecd91', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('644', 'product', 'audit', '34', '950e35aee50eeeb69423f7896ea62fd3', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('645', 'pageirregular', 'index', '35', 'f374ae3bac9884c8d2eb9454f70c52c6', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('646', 'pageirregular', 'create', '35', '49f3b777e27a773ccad03a7faeea6918', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('647', 'pageirregular', 'edit', '35', '13e676ce0c04bf130a934c2165f336cf', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('648', 'pageirregular', 'delete', '35', '1889c64bb27e403a00dd5cae63e09332', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('649', 'pageirregular', 'audit', '35', 'a13b3593351c87f27120ead7dc55a667', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('650', 'page', 'index', '36', 'a35b5fcff88ea7561f8a447daddb9270', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('651', 'page', 'create', '36', 'aca659045e9995bb283f5a6113a6cdff', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('652', 'page', 'edit', '36', 'b73bd461a9be23a18097a9b4e3a543bb', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('653', 'page', 'delete', '36', '2691a75c1a5c8b434fda6ea65cd1af6d', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('654', 'page', 'audit', '36', 'a02c039ab524ede366216fb67ef0479d', '审核', '1');
INSERT INTO `shm_manager_purview` VALUES ('655', 'page', 'index', '37', '66a07694f52cfe16465d38e9dc69bad9', '查看', '0');
INSERT INTO `shm_manager_purview` VALUES ('656', 'page', 'create', '37', 'bcdd1c32d74465787726f7a4bc501342', '创建', '1');
INSERT INTO `shm_manager_purview` VALUES ('657', 'page', 'edit', '37', 'a953d6a8714d6f9f40df8c58f754fad1', '编辑', '1');
INSERT INTO `shm_manager_purview` VALUES ('658', 'page', 'delete', '37', '2674d5185c6d56e827310d9dd73526e9', '删除', '1');
INSERT INTO `shm_manager_purview` VALUES ('659', 'page', 'audit', '37', '5b0e1cdbb320328d22e6f3702a043d17', '审核', '1');

-- ----------------------------
-- Table structure for `shm_modules`
-- ----------------------------
DROP TABLE IF EXISTS `shm_modules`;
CREATE TABLE `shm_modules` (
  `id` int(2) NOT NULL AUTO_INCREMENT COMMENT '模型标识',
  `sort_id` int(2) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '显示名称',
  `controller` varchar(50) NOT NULL COMMENT '控制器名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='栏目模型';

-- ----------------------------
-- Records of shm_modules
-- ----------------------------
INSERT INTO `shm_modules` VALUES ('1', '0', '链接', 'links');
INSERT INTO `shm_modules` VALUES ('3', '0', '文章', 'article');
INSERT INTO `shm_modules` VALUES ('6', '0', '清单', 'lists');
INSERT INTO `shm_modules` VALUES ('7', '3', '期刊', 'gallery');
INSERT INTO `shm_modules` VALUES ('8', '1', '单页', 'page');
INSERT INTO `shm_modules` VALUES ('9', '4', '产品', 'product');
INSERT INTO `shm_modules` VALUES ('10', '0', '招聘', 'recruit');
INSERT INTO `shm_modules` VALUES ('11', '5', '视频', 'videos');
INSERT INTO `shm_modules` VALUES ('12', '6', '信息', 'infos');
INSERT INTO `shm_modules` VALUES ('13', '7', '导航', 'banners');
INSERT INTO `shm_modules` VALUES ('14', '8', '荣誉', 'honor');
INSERT INTO `shm_modules` VALUES ('15', '9', '下载', 'download');
INSERT INTO `shm_modules` VALUES ('16', '10', '门店', 'dealer');
INSERT INTO `shm_modules` VALUES ('17', '11', '综合', 'pageirregular');

-- ----------------------------
-- Table structure for `shm_msgs`
-- ----------------------------
DROP TABLE IF EXISTS `shm_msgs`;
CREATE TABLE `shm_msgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `msg` tinytext COMMENT '提示消息',
  `level` int(1) DEFAULT '1' COMMENT '类型: 1notie 2info 3 success 4error',
  `timeline` int(11) NOT NULL COMMENT '时间',
  `markread` int(1) NOT NULL COMMENT '是否阅读',
  `notify` int(1) DEFAULT '0' COMMENT '是否提示过',
  `byer` int(6) NOT NULL DEFAULT '0' COMMENT '发送者 mid system is 0',
  `toer` int(6) NOT NULL COMMENT '接受者 mid',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='消息提示';

-- ----------------------------
-- Records of shm_msgs
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_onlineservice`
-- ----------------------------
DROP TABLE IF EXISTS `shm_onlineservice`;
CREATE TABLE `shm_onlineservice` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `cid` int(4) DEFAULT NULL COMMENT '栏目 id',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT NULL COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `number` varchar(20) DEFAULT NULL,
  `content` text COMMENT '详细内容',
  `tip` tinytext COMMENT '鼠标悬停提示',
  `link` varchar(250) DEFAULT NULL COMMENT 'URL地址',
  `photo` tinytext COMMENT '图片',
  `thumb` tinytext COMMENT '缩略图',
  `show` int(1) DEFAULT '1' COMMENT '是否显示',
  `timeline` int(11) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='在线客服';

-- ----------------------------
-- Records of shm_onlineservice
-- ----------------------------
INSERT INTO `shm_onlineservice` VALUES ('4', '0', '0', '2', '1', '0', '0', '业务咨询', '', null, null, 'http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAyNTk2Nl8yOTI4MzhfNDAwODAwNTc5MF8yXw', '', '', '1', '1487649576');
INSERT INTO `shm_onlineservice` VALUES ('3', '0', '0', '1', '1', '0', '0', '售后咨询', '', null, null, 'http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAyNTk2Nl8yOTI4MzhfNDAwODAwNTc5MF8yXw', '', '', '1', '1487649559');
INSERT INTO `shm_onlineservice` VALUES ('5', '0', '0', '3', '1', '0', '0', '在线咨询', '', null, null, 'http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAyNTk2Nl8yOTI4MzhfNDAwODAwNTc5MF8yXw', '', '', '1', '1490335947');

-- ----------------------------
-- Table structure for `shm_page`
-- ----------------------------
DROP TABLE IF EXISTS `shm_page`;
CREATE TABLE `shm_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(4) DEFAULT NULL COMMENT '栏目id',
  `ccid` int(11) DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) DEFAULT '0' COMMENT '审核',
  `title` tinytext COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `photo` varchar(200) DEFAULT NULL COMMENT '图片组',
  `thumb` varchar(200) DEFAULT NULL COMMENT '缩略图',
  `template` varchar(200) DEFAULT NULL COMMENT '模板',
  `timeline` int(10) DEFAULT NULL COMMENT '发布/修改时间',
  `attachment` tinytext COMMENT '附件',
  `content_1` text,
  `content_m` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='单页表';

-- ----------------------------
-- Records of shm_page
-- ----------------------------
INSERT INTO `shm_page` VALUES ('1', '7', '0', '1', '0', '单页', '', '', '', '<p>测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息</p><p style=\"text-align:center\"><img src=\"http://localhost/shmweb/web/upload/148781714626451.jpg\"/></p><p>测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息</p><p>测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息测试信息</p>', '', '', null, '1468750490', null, null, null);
INSERT INTO `shm_page` VALUES ('2', '15', '0', '2', '0', 'banner图', '', '', '', null, '23,24', '2018/04/24/thumbnail/15245385442457mz002.jpg', null, '1524538201', null, null, null);
INSERT INTO `shm_page` VALUES ('3', '16', '0', '3', '0', null, null, null, null, null, null, null, null, '1524538619', null, null, null);
INSERT INTO `shm_page` VALUES ('4', '17', '0', '4', '0', null, null, null, null, null, null, null, null, '1524538846', null, null, null);
INSERT INTO `shm_page` VALUES ('5', '18', '0', '5', '0', null, null, null, null, null, null, null, null, '1524538893', null, null, null);
INSERT INTO `shm_page` VALUES ('6', '20', '0', '6', '0', null, null, null, null, null, null, null, null, '1524539362', null, null, null);
INSERT INTO `shm_page` VALUES ('7', '21', '0', '7', '0', null, null, null, null, null, null, null, null, '1524539386', null, null, null);
INSERT INTO `shm_page` VALUES ('8', '25', '0', '8', '0', null, null, null, null, null, null, null, null, '1524539561', null, null, null);
INSERT INTO `shm_page` VALUES ('9', '27', '0', '9', '0', null, null, null, null, null, null, null, null, '1524540085', null, null, null);
INSERT INTO `shm_page` VALUES ('10', '28', '0', '10', '0', null, null, null, null, null, null, null, null, '1524540101', null, null, null);
INSERT INTO `shm_page` VALUES ('11', '29', '0', '11', '0', null, null, null, null, null, null, null, null, '1524540189', null, null, null);
INSERT INTO `shm_page` VALUES ('12', '30', '0', '12', '0', null, null, null, null, null, null, null, null, '1524540224', null, null, null);
INSERT INTO `shm_page` VALUES ('13', '36', '0', '13', '0', null, null, null, null, null, null, null, null, '1524552465', null, null, null);
INSERT INTO `shm_page` VALUES ('14', '37', '0', '14', '0', null, null, null, null, null, null, null, null, '1524552484', null, null, null);

-- ----------------------------
-- Table structure for `shm_pageirregular`
-- ----------------------------
DROP TABLE IF EXISTS `shm_pageirregular`;
CREATE TABLE `shm_pageirregular` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(4) DEFAULT NULL COMMENT '栏目id',
  `ccid` int(11) DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) DEFAULT '0' COMMENT '审核',
  `title` tinytext COMMENT '标题',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `photo` varchar(200) DEFAULT NULL COMMENT '图片组',
  `thumb` varchar(200) DEFAULT NULL COMMENT '缩略图',
  `template` varchar(200) DEFAULT NULL COMMENT '模板',
  `timeline` int(10) DEFAULT NULL COMMENT '发布/修改时间',
  `attachment` tinytext COMMENT '附件',
  `tagtitle` varchar(200) DEFAULT NULL,
  `entitle` varchar(200) DEFAULT NULL,
  `tagintro` varchar(200) DEFAULT NULL,
  `url` varchar(240) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='不规则单页表';

-- ----------------------------
-- Records of shm_pageirregular
-- ----------------------------
INSERT INTO `shm_pageirregular` VALUES ('1', '13', '0', '1', '0', '标题', '', '', '', '', '', '', null, '1492660146', null, '副标题', '英文标题', '概述', 'http://www.shmweb.cn');
INSERT INTO `shm_pageirregular` VALUES ('2', '14', '0', '2', '0', null, null, null, null, null, null, null, null, '1524538143', null, null, null, null, null);

-- ----------------------------
-- Table structure for `shm_product`
-- ----------------------------
DROP TABLE IF EXISTS `shm_product`;
CREATE TABLE `shm_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL COMMENT '栏目id',
  `sort_id` int(11) DEFAULT '1' COMMENT '排序编号',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `audit` int(1) DEFAULT '0' COMMENT '0/1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `title_seo` varchar(255) DEFAULT NULL COMMENT '优化标题',
  `intro` varchar(500) DEFAULT NULL COMMENT '简介',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `content` mediumtext COMMENT '内容',
  `photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `show` tinyint(1) DEFAULT '1' COMMENT '是否显示',
  `click` int(11) DEFAULT '0' COMMENT '点击量',
  `timeline` int(11) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='产品';

-- ----------------------------
-- Records of shm_product
-- ----------------------------
INSERT INTO `shm_product` VALUES ('1', '9', '1', '0', '1', '0', '3', '测试产品信息1', '', '', '', '<p>测试产品信息1</p>', '', '', '1', '0', '1487142465');
INSERT INTO `shm_product` VALUES ('2', '9', '2', '0', '1', '0', '3', '测试产品信息2', '', '', '', '<p>测试产品信息2</p>', '', '', '1', '0', '1487142993');
INSERT INTO `shm_product` VALUES ('3', '9', '3', '0', '1', '0', '3', '测试产品信息3', '', '', '', '<p>测试产品信息3</p>', '', '', '1', '0', '1493191774');
INSERT INTO `shm_product` VALUES ('4', '9', '4', '0', '1', '0', '3', '测试产品信息4', '', '', '', '<p>测试产品信息4</p>', '', '', '1', '0', '1493191782');
INSERT INTO `shm_product` VALUES ('5', '34', '5', '0', '1', '0', '11', '环氧丙烷测试', '', '', '', '<p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p><p><br/></p><p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p>', '30', '2018/04/24/thumbnail/1524552309537r9ewl.jpg', '1', '0', '1524552282');
INSERT INTO `shm_product` VALUES ('6', '34', '6', '0', '1', '0', '11', '环氧丙烷测试', '', '', '', '<p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p><p><br/></p><p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p>', '30', '2018/04/24/thumbnail/1524552309537r9ewl.jpg', '1', '0', '1524552320');
INSERT INTO `shm_product` VALUES ('7', '34', '7', '0', '1', '0', '11', '环氧丙烷测试', '', '', '', '<p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p><p><br/></p><p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p>', '30', '2018/04/24/thumbnail/1524552309537r9ewl.jpg', '1', '0', '1524552321');
INSERT INTO `shm_product` VALUES ('8', '34', '8', '0', '1', '0', '11', '环氧丙烷测试', '', '', '', '<p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p><p><br/></p><p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p>', '30', '2018/04/24/thumbnail/1524552309537r9ewl.jpg', '1', '0', '1524552321');
INSERT INTO `shm_product` VALUES ('9', '34', '9', '0', '1', '0', '11', '环氧丙烷测试', '', '', '', '<p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p><p><br/></p><p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p>', '30', '2018/04/24/thumbnail/1524552309537r9ewl.jpg', '1', '0', '1524552322');
INSERT INTO `shm_product` VALUES ('10', '34', '10', '0', '1', '0', '11', '环氧丙烷测试', '', '', '', '<p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p><p><br/></p><p>环氧丙烷测试环氧丙烷测试环氧丙烷测试</p>', '30', '2018/04/24/thumbnail/1524552309537r9ewl.jpg', '1', '0', '1524552322');

-- ----------------------------
-- Table structure for `shm_product_child`
-- ----------------------------
DROP TABLE IF EXISTS `shm_product_child`;
CREATE TABLE `shm_product_child` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) DEFAULT NULL COMMENT '排序编号',
  `type_id` int(11) DEFAULT NULL COMMENT '分类',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `show` int(11) DEFAULT '1' COMMENT '是否显示',
  `timeline` int(11) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_product_child
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_product_type`
-- ----------------------------
DROP TABLE IF EXISTS `shm_product_type`;
CREATE TABLE `shm_product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `intro` varchar(1000) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `order_id` int(11) DEFAULT '0',
  `timeline` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `path_index` (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shm_product_type
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_province`
-- ----------------------------
DROP TABLE IF EXISTS `shm_province`;
CREATE TABLE `shm_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `entitle` varchar(50) DEFAULT NULL COMMENT '英文标题',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='省级列表';

-- ----------------------------
-- Records of shm_province
-- ----------------------------
INSERT INTO `shm_province` VALUES ('1', '北京市', 'BeiJing');
INSERT INTO `shm_province` VALUES ('2', '天津市', 'Tianjin');
INSERT INTO `shm_province` VALUES ('3', '河北省', 'Hebei');
INSERT INTO `shm_province` VALUES ('4', '山西省', 'Shanxi');
INSERT INTO `shm_province` VALUES ('5', '辽宁省', 'Liaoning');
INSERT INTO `shm_province` VALUES ('6', '吉林省', 'Jilin');
INSERT INTO `shm_province` VALUES ('7', '上海市', 'Shanghai');
INSERT INTO `shm_province` VALUES ('8', '江苏省', 'Jiangsu');
INSERT INTO `shm_province` VALUES ('9', '浙江省', 'Zhejiang');
INSERT INTO `shm_province` VALUES ('10', '安徽省', 'Anhui');
INSERT INTO `shm_province` VALUES ('11', '福建省', 'Fujian');
INSERT INTO `shm_province` VALUES ('12', '江西省', 'Jiangxi');
INSERT INTO `shm_province` VALUES ('13', '山东省', 'Shandong');
INSERT INTO `shm_province` VALUES ('14', '河南省', 'Henan');
INSERT INTO `shm_province` VALUES ('15', '内蒙古', 'Neimenggu');
INSERT INTO `shm_province` VALUES ('16', '黑龙江省', 'Heilongjiang');
INSERT INTO `shm_province` VALUES ('17', '湖北省', 'Hubei');
INSERT INTO `shm_province` VALUES ('18', '湖南省', 'Hunan');
INSERT INTO `shm_province` VALUES ('19', '广东省', 'Guangdong');
INSERT INTO `shm_province` VALUES ('20', '广西省', 'Guangxi');
INSERT INTO `shm_province` VALUES ('21', '海南省', 'Hainan');
INSERT INTO `shm_province` VALUES ('22', '四川省', 'Sichuan');
INSERT INTO `shm_province` VALUES ('23', '重庆市', 'Chongqing');
INSERT INTO `shm_province` VALUES ('24', '台湾省', 'Taiwan');
INSERT INTO `shm_province` VALUES ('25', '贵州省', 'Guizhou');
INSERT INTO `shm_province` VALUES ('26', '云南省', 'Yunnan');
INSERT INTO `shm_province` VALUES ('27', '西藏', 'Xizang');
INSERT INTO `shm_province` VALUES ('28', '陕西省', 'Shanxi');
INSERT INTO `shm_province` VALUES ('29', '甘肃省', 'Gansu');
INSERT INTO `shm_province` VALUES ('30', '青海省', 'Qinghai');
INSERT INTO `shm_province` VALUES ('31', '宁夏', 'Ningxia');
INSERT INTO `shm_province` VALUES ('32', '新疆', 'Xinjiang');
INSERT INTO `shm_province` VALUES ('33', '香港', 'xianggang');
INSERT INTO `shm_province` VALUES ('34', '澳门', 'aomen');
INSERT INTO `shm_province` VALUES ('35', '钓鱼岛', 'Diaoyudao');

-- ----------------------------
-- Table structure for `shm_province_city`
-- ----------------------------
DROP TABLE IF EXISTS `shm_province_city`;
CREATE TABLE `shm_province_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province_id` int(11) NOT NULL DEFAULT '0' COMMENT '省级id',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `entitle` varchar(50) DEFAULT NULL COMMENT '英文标题',
  `weather` varchar(11) DEFAULT NULL COMMENT '国家天气ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=384 DEFAULT CHARSET=utf8 COMMENT='城市列表';

-- ----------------------------
-- Records of shm_province_city
-- ----------------------------
INSERT INTO `shm_province_city` VALUES ('1', '1', '北京', null, '101010100');
INSERT INTO `shm_province_city` VALUES ('2', '2', '天津', null, '101030100');
INSERT INTO `shm_province_city` VALUES ('3', '3', '石家庄', null, '101090101');
INSERT INTO `shm_province_city` VALUES ('4', '3', '保定', null, '101090201');
INSERT INTO `shm_province_city` VALUES ('5', '3', '沧州', null, '101090701');
INSERT INTO `shm_province_city` VALUES ('6', '3', '承德', null, '101090402');
INSERT INTO `shm_province_city` VALUES ('7', '3', '邯郸', null, '101091001');
INSERT INTO `shm_province_city` VALUES ('8', '3', '衡水', null, '101090801');
INSERT INTO `shm_province_city` VALUES ('9', '3', '廊坊', null, '101090601');
INSERT INTO `shm_province_city` VALUES ('10', '3', '秦皇岛', null, '101091101');
INSERT INTO `shm_province_city` VALUES ('11', '3', '唐山', null, '101090501');
INSERT INTO `shm_province_city` VALUES ('12', '3', '邢台', null, '101090901');
INSERT INTO `shm_province_city` VALUES ('13', '3', '张家口', null, '101090301');
INSERT INTO `shm_province_city` VALUES ('14', '4', '太原', null, '101100101');
INSERT INTO `shm_province_city` VALUES ('15', '4', '长治', null, '101100501');
INSERT INTO `shm_province_city` VALUES ('16', '4', '大同', null, '101100201');
INSERT INTO `shm_province_city` VALUES ('17', '4', '晋城', null, '101100601');
INSERT INTO `shm_province_city` VALUES ('18', '4', '晋中', null, '101100401');
INSERT INTO `shm_province_city` VALUES ('19', '4', '临汾', null, '101100701');
INSERT INTO `shm_province_city` VALUES ('20', '4', '吕梁', null, '101101101');
INSERT INTO `shm_province_city` VALUES ('21', '4', '朔州', null, '101100901');
INSERT INTO `shm_province_city` VALUES ('22', '4', '忻州', null, '101101001');
INSERT INTO `shm_province_city` VALUES ('23', '4', '阳泉', null, '101100301');
INSERT INTO `shm_province_city` VALUES ('24', '4', '运城', null, '101100801');
INSERT INTO `shm_province_city` VALUES ('25', '5', '沈阳', null, '101070101');
INSERT INTO `shm_province_city` VALUES ('26', '5', '大连', null, '101070201');
INSERT INTO `shm_province_city` VALUES ('27', '5', '鞍山', null, '101070301');
INSERT INTO `shm_province_city` VALUES ('28', '5', '本溪', null, '101070501');
INSERT INTO `shm_province_city` VALUES ('29', '5', '朝阳', null, '101071201');
INSERT INTO `shm_province_city` VALUES ('30', '5', '丹东', null, '101070601');
INSERT INTO `shm_province_city` VALUES ('31', '5', '抚顺', null, '101070401');
INSERT INTO `shm_province_city` VALUES ('32', '5', '阜新', null, '101070901');
INSERT INTO `shm_province_city` VALUES ('33', '5', '葫芦岛', null, '101071401');
INSERT INTO `shm_province_city` VALUES ('34', '5', '锦州', null, '101070701');
INSERT INTO `shm_province_city` VALUES ('35', '5', '辽阳', null, '101071001');
INSERT INTO `shm_province_city` VALUES ('36', '5', '盘锦', null, '101071301');
INSERT INTO `shm_province_city` VALUES ('37', '5', '铁岭', null, '101071101');
INSERT INTO `shm_province_city` VALUES ('38', '5', '营口', null, '101070801');
INSERT INTO `shm_province_city` VALUES ('39', '6', '长春', null, '101060101');
INSERT INTO `shm_province_city` VALUES ('40', '6', '吉林', null, '101060201');
INSERT INTO `shm_province_city` VALUES ('41', '6', '白城', null, '101060601');
INSERT INTO `shm_province_city` VALUES ('42', '6', '白山', null, '101060901');
INSERT INTO `shm_province_city` VALUES ('43', '6', '辽源', null, '101060701');
INSERT INTO `shm_province_city` VALUES ('44', '6', '四平', null, '101060401');
INSERT INTO `shm_province_city` VALUES ('45', '6', '松原', null, '101060801');
INSERT INTO `shm_province_city` VALUES ('46', '6', '通化', null, '101060501');
INSERT INTO `shm_province_city` VALUES ('47', '6', '延边朝鲜族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('48', '7', '上海', null, '101020100');
INSERT INTO `shm_province_city` VALUES ('49', '8', '南京', null, '101190101');
INSERT INTO `shm_province_city` VALUES ('50', '8', '常州', null, '101191101');
INSERT INTO `shm_province_city` VALUES ('51', '8', '淮安', null, '101190901');
INSERT INTO `shm_province_city` VALUES ('52', '8', '连云港', null, '101191001');
INSERT INTO `shm_province_city` VALUES ('53', '8', '南通', null, '101190501');
INSERT INTO `shm_province_city` VALUES ('54', '8', '苏州', null, '101190401');
INSERT INTO `shm_province_city` VALUES ('55', '8', '宿迁', null, '101191301');
INSERT INTO `shm_province_city` VALUES ('56', '8', '泰州', null, '101191201');
INSERT INTO `shm_province_city` VALUES ('57', '8', '无锡', null, '101190201');
INSERT INTO `shm_province_city` VALUES ('58', '8', '徐州', null, '101190801');
INSERT INTO `shm_province_city` VALUES ('59', '8', '盐城', null, '101190701');
INSERT INTO `shm_province_city` VALUES ('60', '8', '扬州', null, '101190601');
INSERT INTO `shm_province_city` VALUES ('61', '8', '镇江', null, '101190301');
INSERT INTO `shm_province_city` VALUES ('62', '9', '杭州', null, '101210101');
INSERT INTO `shm_province_city` VALUES ('63', '9', '湖州', null, '101210201');
INSERT INTO `shm_province_city` VALUES ('64', '9', '嘉兴', null, '101210301');
INSERT INTO `shm_province_city` VALUES ('65', '9', '金华', null, '101210901');
INSERT INTO `shm_province_city` VALUES ('66', '9', '丽水', null, '101210801');
INSERT INTO `shm_province_city` VALUES ('67', '9', '宁波', null, '101210401');
INSERT INTO `shm_province_city` VALUES ('68', '9', '绍兴', null, '101210501');
INSERT INTO `shm_province_city` VALUES ('69', '9', '台州', null, '101210601');
INSERT INTO `shm_province_city` VALUES ('70', '9', '温州', null, '101210701');
INSERT INTO `shm_province_city` VALUES ('71', '9', '舟山', null, '101211101');
INSERT INTO `shm_province_city` VALUES ('72', '9', '衢州', null, '101211001');
INSERT INTO `shm_province_city` VALUES ('73', '10', '合肥', null, '101220101');
INSERT INTO `shm_province_city` VALUES ('74', '10', '安庆', null, '101220601');
INSERT INTO `shm_province_city` VALUES ('75', '10', '蚌埠', null, '101220201');
INSERT INTO `shm_province_city` VALUES ('76', '10', '巢湖', null, '101221601');
INSERT INTO `shm_province_city` VALUES ('77', '10', '池州', null, '101221701');
INSERT INTO `shm_province_city` VALUES ('78', '10', '滁州', null, '101221101');
INSERT INTO `shm_province_city` VALUES ('79', '10', '阜阳', null, '101220801');
INSERT INTO `shm_province_city` VALUES ('80', '10', '淮北', null, '101221201');
INSERT INTO `shm_province_city` VALUES ('81', '10', '淮南', null, '101220401');
INSERT INTO `shm_province_city` VALUES ('82', '10', '黄山', null, null);
INSERT INTO `shm_province_city` VALUES ('83', '10', '六安', null, '101221501');
INSERT INTO `shm_province_city` VALUES ('84', '10', '马鞍山', null, '101220501');
INSERT INTO `shm_province_city` VALUES ('85', '10', '宿州', null, '101220701');
INSERT INTO `shm_province_city` VALUES ('86', '10', '铜陵', null, '101221301');
INSERT INTO `shm_province_city` VALUES ('87', '10', '芜湖', null, '101220301');
INSERT INTO `shm_province_city` VALUES ('88', '10', '宣城', null, '101221401');
INSERT INTO `shm_province_city` VALUES ('89', '10', '亳州', null, null);
INSERT INTO `shm_province_city` VALUES ('90', '11', '福州', null, '101230101');
INSERT INTO `shm_province_city` VALUES ('91', '11', '厦门', null, '101230201');
INSERT INTO `shm_province_city` VALUES ('92', '11', '龙岩', null, '101230701');
INSERT INTO `shm_province_city` VALUES ('93', '11', '南平', null, '101230901');
INSERT INTO `shm_province_city` VALUES ('94', '11', '宁德', null, '101230301');
INSERT INTO `shm_province_city` VALUES ('95', '11', '莆田', null, '101230401');
INSERT INTO `shm_province_city` VALUES ('96', '11', '泉州', null, '101230501');
INSERT INTO `shm_province_city` VALUES ('97', '11', '三明', null, '101230801');
INSERT INTO `shm_province_city` VALUES ('98', '11', '漳州', null, '101230601');
INSERT INTO `shm_province_city` VALUES ('99', '12', '南昌', null, '101240101');
INSERT INTO `shm_province_city` VALUES ('100', '12', '抚州', null, '101240401');
INSERT INTO `shm_province_city` VALUES ('101', '12', '赣州', null, '101240701');
INSERT INTO `shm_province_city` VALUES ('102', '12', '吉安', null, '101240601');
INSERT INTO `shm_province_city` VALUES ('103', '12', '景德镇', null, '101240801');
INSERT INTO `shm_province_city` VALUES ('104', '12', '九江', null, '101240201');
INSERT INTO `shm_province_city` VALUES ('105', '12', '萍乡', null, '101240901');
INSERT INTO `shm_province_city` VALUES ('106', '12', '上饶', null, '101240301');
INSERT INTO `shm_province_city` VALUES ('107', '12', '新余', null, '101241001');
INSERT INTO `shm_province_city` VALUES ('108', '12', '宜春', null, '101240501');
INSERT INTO `shm_province_city` VALUES ('109', '12', '鹰潭', null, '101241101');
INSERT INTO `shm_province_city` VALUES ('110', '13', '济南', null, '101120101');
INSERT INTO `shm_province_city` VALUES ('111', '13', '青岛', null, '101120201');
INSERT INTO `shm_province_city` VALUES ('112', '13', '烟台', null, '101120501');
INSERT INTO `shm_province_city` VALUES ('113', '13', '滨州', null, '101121101');
INSERT INTO `shm_province_city` VALUES ('114', '13', '德州', null, '101120401');
INSERT INTO `shm_province_city` VALUES ('115', '13', '东营', null, '101121201');
INSERT INTO `shm_province_city` VALUES ('116', '13', '菏泽', null, '101121001');
INSERT INTO `shm_province_city` VALUES ('117', '13', '济宁', null, '101120701');
INSERT INTO `shm_province_city` VALUES ('118', '13', '莱芜', null, '101121601');
INSERT INTO `shm_province_city` VALUES ('119', '13', '聊城', null, '101121701');
INSERT INTO `shm_province_city` VALUES ('120', '13', '临沂', null, '101120901');
INSERT INTO `shm_province_city` VALUES ('121', '13', '日照', null, '101121501');
INSERT INTO `shm_province_city` VALUES ('122', '13', '泰安', null, '101120801');
INSERT INTO `shm_province_city` VALUES ('123', '13', '威海', null, '101121301');
INSERT INTO `shm_province_city` VALUES ('124', '13', '潍坊', null, '101120601');
INSERT INTO `shm_province_city` VALUES ('125', '13', '枣庄', null, '101121401');
INSERT INTO `shm_province_city` VALUES ('126', '13', '淄博', null, '101120301');
INSERT INTO `shm_province_city` VALUES ('127', '14', '郑州', null, '101180101');
INSERT INTO `shm_province_city` VALUES ('128', '14', '洛阳', null, '101180901');
INSERT INTO `shm_province_city` VALUES ('129', '14', '开封', null, '101180801');
INSERT INTO `shm_province_city` VALUES ('130', '14', '安阳', null, '101180201');
INSERT INTO `shm_province_city` VALUES ('131', '14', '鹤壁', null, '101181201');
INSERT INTO `shm_province_city` VALUES ('132', '14', '济源', null, null);
INSERT INTO `shm_province_city` VALUES ('133', '14', '焦作', null, '101181101');
INSERT INTO `shm_province_city` VALUES ('134', '14', '南阳', null, '101180701');
INSERT INTO `shm_province_city` VALUES ('135', '14', '平顶山', null, '101180501');
INSERT INTO `shm_province_city` VALUES ('136', '14', '三门峡', null, '101181701');
INSERT INTO `shm_province_city` VALUES ('137', '14', '商丘', null, '101181001');
INSERT INTO `shm_province_city` VALUES ('138', '14', '新乡', null, '101180301');
INSERT INTO `shm_province_city` VALUES ('139', '14', '信阳', null, '101180601');
INSERT INTO `shm_province_city` VALUES ('140', '14', '许昌', null, '101180401');
INSERT INTO `shm_province_city` VALUES ('141', '14', '周口', null, '101181401');
INSERT INTO `shm_province_city` VALUES ('142', '14', '驻马店', null, '101181601');
INSERT INTO `shm_province_city` VALUES ('143', '14', '漯河', null, '101181501');
INSERT INTO `shm_province_city` VALUES ('144', '14', '濮阳', null, '101181301');
INSERT INTO `shm_province_city` VALUES ('145', '15', '呼和浩特', null, '101080101');
INSERT INTO `shm_province_city` VALUES ('146', '15', '包头', null, '101080201');
INSERT INTO `shm_province_city` VALUES ('147', '15', '赤峰', null, '101080601');
INSERT INTO `shm_province_city` VALUES ('148', '15', '鄂尔多斯', null, '101080701');
INSERT INTO `shm_province_city` VALUES ('149', '15', '呼伦贝尔', null, '101081001');
INSERT INTO `shm_province_city` VALUES ('150', '15', '阿拉善盟', null, null);
INSERT INTO `shm_province_city` VALUES ('151', '15', '巴彦淖尔盟', null, null);
INSERT INTO `shm_province_city` VALUES ('152', '15', '通辽', null, '101080501');
INSERT INTO `shm_province_city` VALUES ('153', '15', '乌海', null, '101080301');
INSERT INTO `shm_province_city` VALUES ('154', '15', '乌兰察布盟', null, null);
INSERT INTO `shm_province_city` VALUES ('155', '15', '锡林郭勒盟', null, null);
INSERT INTO `shm_province_city` VALUES ('156', '15', '兴安盟', null, null);
INSERT INTO `shm_province_city` VALUES ('157', '16', '哈尔滨', null, '101050101');
INSERT INTO `shm_province_city` VALUES ('158', '16', '大庆', null, '101050901');
INSERT INTO `shm_province_city` VALUES ('159', '16', '大兴安岭', null, '101050701');
INSERT INTO `shm_province_city` VALUES ('160', '16', '鹤岗', null, '101051201');
INSERT INTO `shm_province_city` VALUES ('161', '16', '黑河', null, '101050601');
INSERT INTO `shm_province_city` VALUES ('162', '16', '鸡西', null, '101051101');
INSERT INTO `shm_province_city` VALUES ('163', '16', '佳木斯', null, '101050401');
INSERT INTO `shm_province_city` VALUES ('164', '16', '牡丹江', null, '101050301');
INSERT INTO `shm_province_city` VALUES ('165', '16', '七台河', null, '101051002');
INSERT INTO `shm_province_city` VALUES ('166', '16', '齐齐哈尔', null, '101050201');
INSERT INTO `shm_province_city` VALUES ('167', '16', '双鸭山', null, '101051301');
INSERT INTO `shm_province_city` VALUES ('168', '16', '绥化', null, '101050501');
INSERT INTO `shm_province_city` VALUES ('169', '16', '伊春', null, '101050801');
INSERT INTO `shm_province_city` VALUES ('170', '17', '武汉', null, '101200101');
INSERT INTO `shm_province_city` VALUES ('171', '17', '鄂州', null, '101200301');
INSERT INTO `shm_province_city` VALUES ('172', '17', '黄冈', null, '101200501');
INSERT INTO `shm_province_city` VALUES ('173', '17', '黄石', null, '101200601');
INSERT INTO `shm_province_city` VALUES ('174', '17', '荆门', null, '101201401');
INSERT INTO `shm_province_city` VALUES ('175', '17', '荆州', null, '101200801');
INSERT INTO `shm_province_city` VALUES ('176', '17', '潜江', null, null);
INSERT INTO `shm_province_city` VALUES ('177', '17', '十堰', null, '101201101');
INSERT INTO `shm_province_city` VALUES ('178', '17', '随州', null, '101201301');
INSERT INTO `shm_province_city` VALUES ('179', '17', '天门', null, null);
INSERT INTO `shm_province_city` VALUES ('180', '17', '仙桃', null, null);
INSERT INTO `shm_province_city` VALUES ('181', '17', '咸宁', null, '101200701');
INSERT INTO `shm_province_city` VALUES ('182', '17', '襄樊', null, null);
INSERT INTO `shm_province_city` VALUES ('183', '17', '孝感', null, '101200401');
INSERT INTO `shm_province_city` VALUES ('184', '17', '宜昌', null, '101200901');
INSERT INTO `shm_province_city` VALUES ('185', '17', '恩施土家族苗族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('186', '17', '神农架林区', null, null);
INSERT INTO `shm_province_city` VALUES ('187', '18', '长沙', null, '101250101');
INSERT INTO `shm_province_city` VALUES ('188', '18', '益阳', null, '101250701');
INSERT INTO `shm_province_city` VALUES ('189', '18', '湘潭', null, '101250201');
INSERT INTO `shm_province_city` VALUES ('190', '18', '常德', null, '101250601');
INSERT INTO `shm_province_city` VALUES ('191', '18', '郴州', null, '101250501');
INSERT INTO `shm_province_city` VALUES ('192', '18', '衡阳', null, '101250401');
INSERT INTO `shm_province_city` VALUES ('193', '18', '怀化', null, '101251201');
INSERT INTO `shm_province_city` VALUES ('194', '18', '娄底', null, '101250801');
INSERT INTO `shm_province_city` VALUES ('195', '18', '邵阳', null, '101250901');
INSERT INTO `shm_province_city` VALUES ('196', '18', '永州', null, '101251401');
INSERT INTO `shm_province_city` VALUES ('197', '18', '岳阳', null, '101251001');
INSERT INTO `shm_province_city` VALUES ('198', '18', '张家界', null, '101251101');
INSERT INTO `shm_province_city` VALUES ('199', '18', '株洲', null, '101250301');
INSERT INTO `shm_province_city` VALUES ('200', '18', '湘西土家族苗族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('201', '19', '广州', null, '101280101');
INSERT INTO `shm_province_city` VALUES ('202', '19', '深圳', null, '101280601');
INSERT INTO `shm_province_city` VALUES ('203', '19', '珠海', null, '101280701');
INSERT INTO `shm_province_city` VALUES ('204', '19', '湛江', null, '101281001');
INSERT INTO `shm_province_city` VALUES ('205', '19', '惠州', null, '101280301');
INSERT INTO `shm_province_city` VALUES ('206', '19', '江门', null, '101281101');
INSERT INTO `shm_province_city` VALUES ('207', '19', '潮州', null, '101281501');
INSERT INTO `shm_province_city` VALUES ('208', '19', '汕头', null, '101280501');
INSERT INTO `shm_province_city` VALUES ('209', '19', '东莞', null, '101281601');
INSERT INTO `shm_province_city` VALUES ('210', '19', '佛山', null, '101280800');
INSERT INTO `shm_province_city` VALUES ('211', '19', '河源', null, '101281201');
INSERT INTO `shm_province_city` VALUES ('212', '19', '揭阳', null, '101281901');
INSERT INTO `shm_province_city` VALUES ('213', '19', '茂名', null, '101282001');
INSERT INTO `shm_province_city` VALUES ('214', '19', '梅州', null, '101280401');
INSERT INTO `shm_province_city` VALUES ('215', '19', '清远', null, '101281301');
INSERT INTO `shm_province_city` VALUES ('216', '19', '汕尾', null, '101282101');
INSERT INTO `shm_province_city` VALUES ('217', '19', '韶关', null, '101280201');
INSERT INTO `shm_province_city` VALUES ('218', '19', '阳江', null, '101281801');
INSERT INTO `shm_province_city` VALUES ('219', '19', '云浮', null, '101281401');
INSERT INTO `shm_province_city` VALUES ('220', '19', '肇庆', null, '101280901');
INSERT INTO `shm_province_city` VALUES ('221', '19', '中山', null, '101281701');
INSERT INTO `shm_province_city` VALUES ('222', '20', '南宁', null, '101300101');
INSERT INTO `shm_province_city` VALUES ('223', '20', '桂林', null, '101300501');
INSERT INTO `shm_province_city` VALUES ('224', '20', '北海', null, '101301301');
INSERT INTO `shm_province_city` VALUES ('225', '20', '百色', null, '101301001');
INSERT INTO `shm_province_city` VALUES ('226', '20', '崇左', null, '101300201');
INSERT INTO `shm_province_city` VALUES ('227', '20', '防城港', null, '101301401');
INSERT INTO `shm_province_city` VALUES ('228', '20', '贵港', null, '101300801');
INSERT INTO `shm_province_city` VALUES ('229', '20', '河池', null, '101301201');
INSERT INTO `shm_province_city` VALUES ('230', '20', '贺州', null, '101300701');
INSERT INTO `shm_province_city` VALUES ('231', '20', '来宾', null, '101300401');
INSERT INTO `shm_province_city` VALUES ('232', '20', '柳州', null, '101300301');
INSERT INTO `shm_province_city` VALUES ('233', '20', '钦州', null, '101301101');
INSERT INTO `shm_province_city` VALUES ('234', '20', '梧州', null, '101300601');
INSERT INTO `shm_province_city` VALUES ('235', '20', '玉林', null, '101300901');
INSERT INTO `shm_province_city` VALUES ('236', '21', '海口', null, '101310101');
INSERT INTO `shm_province_city` VALUES ('237', '21', '三亚', null, '101310201');
INSERT INTO `shm_province_city` VALUES ('238', '21', '白沙黎族自治县', null, null);
INSERT INTO `shm_province_city` VALUES ('239', '21', '保亭黎族苗族自治县', null, null);
INSERT INTO `shm_province_city` VALUES ('240', '21', '昌江黎族自治县', null, null);
INSERT INTO `shm_province_city` VALUES ('241', '21', '澄迈县', null, null);
INSERT INTO `shm_province_city` VALUES ('242', '21', '定安县', null, null);
INSERT INTO `shm_province_city` VALUES ('243', '21', '东方', null, null);
INSERT INTO `shm_province_city` VALUES ('244', '21', '乐东黎族自治县', null, null);
INSERT INTO `shm_province_city` VALUES ('245', '21', '临高县', null, null);
INSERT INTO `shm_province_city` VALUES ('246', '21', '陵水黎族自治县', null, null);
INSERT INTO `shm_province_city` VALUES ('247', '21', '琼海', null, null);
INSERT INTO `shm_province_city` VALUES ('248', '21', '琼中黎族苗族自治县', null, null);
INSERT INTO `shm_province_city` VALUES ('249', '21', '屯昌县', null, null);
INSERT INTO `shm_province_city` VALUES ('250', '21', '万宁', null, null);
INSERT INTO `shm_province_city` VALUES ('251', '21', '文昌', null, '101310212');
INSERT INTO `shm_province_city` VALUES ('252', '21', '五指山', null, null);
INSERT INTO `shm_province_city` VALUES ('253', '21', '儋州', null, '101310205');
INSERT INTO `shm_province_city` VALUES ('254', '22', '成都', null, '101270101');
INSERT INTO `shm_province_city` VALUES ('255', '22', '绵阳', null, '101270401');
INSERT INTO `shm_province_city` VALUES ('256', '22', '巴中', null, '101270901');
INSERT INTO `shm_province_city` VALUES ('257', '22', '达州', null, '101270601');
INSERT INTO `shm_province_city` VALUES ('258', '22', '德阳', null, '101272001');
INSERT INTO `shm_province_city` VALUES ('259', '22', '广安', null, '101270801');
INSERT INTO `shm_province_city` VALUES ('260', '22', '广元', null, '101272101');
INSERT INTO `shm_province_city` VALUES ('261', '22', '乐山', null, '101271401');
INSERT INTO `shm_province_city` VALUES ('262', '22', '眉山', null, '101271501');
INSERT INTO `shm_province_city` VALUES ('263', '22', '南充', null, '101270501');
INSERT INTO `shm_province_city` VALUES ('264', '22', '内江', null, '101271201');
INSERT INTO `shm_province_city` VALUES ('265', '22', '攀枝花', null, '101270201');
INSERT INTO `shm_province_city` VALUES ('266', '22', '遂宁', null, '101270701');
INSERT INTO `shm_province_city` VALUES ('267', '22', '雅安', null, '101271701');
INSERT INTO `shm_province_city` VALUES ('268', '22', '宜宾', null, '101271101');
INSERT INTO `shm_province_city` VALUES ('269', '22', '资阳', null, '101271301');
INSERT INTO `shm_province_city` VALUES ('270', '22', '自贡', null, '101270301');
INSERT INTO `shm_province_city` VALUES ('271', '22', '泸州', null, '101271001');
INSERT INTO `shm_province_city` VALUES ('272', '22', '甘孜藏族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('273', '22', '阿坝藏族羌族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('274', '22', '凉山彝族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('275', '23', '重庆', null, '101040100');
INSERT INTO `shm_province_city` VALUES ('276', '24', '台北', null, '101340102');
INSERT INTO `shm_province_city` VALUES ('277', '24', '高雄', null, '101340201');
INSERT INTO `shm_province_city` VALUES ('278', '24', '台中', null, null);
INSERT INTO `shm_province_city` VALUES ('279', '24', '台南', null, null);
INSERT INTO `shm_province_city` VALUES ('280', '24', '新北', null, null);
INSERT INTO `shm_province_city` VALUES ('281', '24', '基隆', null, null);
INSERT INTO `shm_province_city` VALUES ('282', '24', '新竹', null, null);
INSERT INTO `shm_province_city` VALUES ('283', '24', '嘉义', null, null);
INSERT INTO `shm_province_city` VALUES ('284', '24', '桃园县', null, null);
INSERT INTO `shm_province_city` VALUES ('285', '24', '新竹县', null, null);
INSERT INTO `shm_province_city` VALUES ('286', '24', '苗栗县', null, null);
INSERT INTO `shm_province_city` VALUES ('287', '24', '彰化县', null, null);
INSERT INTO `shm_province_city` VALUES ('288', '24', '南投县', null, null);
INSERT INTO `shm_province_city` VALUES ('289', '24', '云林县', null, null);
INSERT INTO `shm_province_city` VALUES ('290', '24', '嘉义县', null, null);
INSERT INTO `shm_province_city` VALUES ('291', '24', '屏东县', null, null);
INSERT INTO `shm_province_city` VALUES ('292', '24', '宜兰县', null, null);
INSERT INTO `shm_province_city` VALUES ('293', '24', '花莲县', null, null);
INSERT INTO `shm_province_city` VALUES ('294', '24', '台东县', null, null);
INSERT INTO `shm_province_city` VALUES ('295', '24', '澎湖县', null, null);
INSERT INTO `shm_province_city` VALUES ('296', '24', '金门县', null, null);
INSERT INTO `shm_province_city` VALUES ('297', '24', '连江县', null, null);
INSERT INTO `shm_province_city` VALUES ('298', '25', '贵阳', null, '101260101');
INSERT INTO `shm_province_city` VALUES ('299', '25', '六盘水', null, '101260801');
INSERT INTO `shm_province_city` VALUES ('300', '25', '遵义', null, '101260201');
INSERT INTO `shm_province_city` VALUES ('301', '25', '安顺', null, '101260301');
INSERT INTO `shm_province_city` VALUES ('302', '25', '毕节', null, '101260701');
INSERT INTO `shm_province_city` VALUES ('303', '25', '铜仁', null, '101260601');
INSERT INTO `shm_province_city` VALUES ('304', '25', '黔东南苗族侗族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('305', '25', '黔南布依族苗族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('306', '25', '黔西南布依族苗族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('307', '26', '昆明', null, '101290101');
INSERT INTO `shm_province_city` VALUES ('308', '26', '丽江', null, '101291401');
INSERT INTO `shm_province_city` VALUES ('309', '26', '保山', null, '101290501');
INSERT INTO `shm_province_city` VALUES ('310', '26', '楚雄彝族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('311', '26', '大理白族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('312', '26', '德宏傣族景颇族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('313', '26', '迪庆藏族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('314', '26', '红河哈尼族彝族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('315', '26', '临沧', null, '101291101');
INSERT INTO `shm_province_city` VALUES ('316', '26', '怒江傈傈族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('317', '26', '曲靖', null, '101290401');
INSERT INTO `shm_province_city` VALUES ('318', '26', '思茅', null, '101290901');
INSERT INTO `shm_province_city` VALUES ('319', '26', '文山壮族苗族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('320', '26', '西双版纳傣族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('321', '26', '玉溪', null, '101290701');
INSERT INTO `shm_province_city` VALUES ('322', '26', '昭通', null, '101291001');
INSERT INTO `shm_province_city` VALUES ('323', '27', '拉萨', null, '101140101');
INSERT INTO `shm_province_city` VALUES ('324', '27', '日喀则', null, '101140201');
INSERT INTO `shm_province_city` VALUES ('325', '27', '阿里', null, '101140701');
INSERT INTO `shm_province_city` VALUES ('326', '27', '昌都', null, '101140501');
INSERT INTO `shm_province_city` VALUES ('327', '27', '林芝', null, '101140401');
INSERT INTO `shm_province_city` VALUES ('328', '27', '那曲', null, '101140601');
INSERT INTO `shm_province_city` VALUES ('329', '27', '山南', null, '101140301');
INSERT INTO `shm_province_city` VALUES ('330', '28', '西安', null, '101110101');
INSERT INTO `shm_province_city` VALUES ('331', '28', '宝鸡', null, '101110901');
INSERT INTO `shm_province_city` VALUES ('332', '28', '咸阳', null, '101110200');
INSERT INTO `shm_province_city` VALUES ('333', '28', '延安', null, '101110300');
INSERT INTO `shm_province_city` VALUES ('334', '28', '榆林', null, '101110401');
INSERT INTO `shm_province_city` VALUES ('335', '28', '安康', null, '101110701');
INSERT INTO `shm_province_city` VALUES ('336', '28', '汉中', null, '101110801');
INSERT INTO `shm_province_city` VALUES ('337', '28', '商洛', null, '101110601');
INSERT INTO `shm_province_city` VALUES ('338', '28', '铜川', null, '101111001');
INSERT INTO `shm_province_city` VALUES ('339', '28', '渭南', null, '101110501');
INSERT INTO `shm_province_city` VALUES ('340', '29', '兰州', null, '101160101');
INSERT INTO `shm_province_city` VALUES ('341', '29', '白银', null, '101161301');
INSERT INTO `shm_province_city` VALUES ('342', '29', '定西', null, '101160201');
INSERT INTO `shm_province_city` VALUES ('343', '29', '嘉峪关', null, null);
INSERT INTO `shm_province_city` VALUES ('344', '29', '金昌', null, '101160601');
INSERT INTO `shm_province_city` VALUES ('345', '29', '酒泉', null, '101160801');
INSERT INTO `shm_province_city` VALUES ('346', '29', '陇南', null, null);
INSERT INTO `shm_province_city` VALUES ('347', '29', '平凉', null, '101160301');
INSERT INTO `shm_province_city` VALUES ('348', '29', '庆阳', null, '101160401');
INSERT INTO `shm_province_city` VALUES ('349', '29', '天水', null, '101160901');
INSERT INTO `shm_province_city` VALUES ('350', '29', '武威', null, '101160501');
INSERT INTO `shm_province_city` VALUES ('351', '29', '张掖', null, '101160701');
INSERT INTO `shm_province_city` VALUES ('352', '29', '临夏回族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('353', '29', '甘南藏族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('354', '30', '西宁', null, '101150101');
INSERT INTO `shm_province_city` VALUES ('355', '30', '果洛藏族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('356', '30', '海北藏族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('357', '30', '海东', null, '101150201');
INSERT INTO `shm_province_city` VALUES ('358', '30', '海南藏族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('359', '30', '海西蒙古族藏族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('360', '30', '黄南藏族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('361', '30', '玉树藏族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('362', '31', '银川', null, '101170101');
INSERT INTO `shm_province_city` VALUES ('363', '31', '固原', null, '101170401');
INSERT INTO `shm_province_city` VALUES ('364', '31', '石嘴山', null, '101170201');
INSERT INTO `shm_province_city` VALUES ('365', '31', '吴忠', null, '101170301');
INSERT INTO `shm_province_city` VALUES ('366', '32', '乌鲁木齐', null, '101130101');
INSERT INTO `shm_province_city` VALUES ('367', '32', '吐鲁番', null, '101130501');
INSERT INTO `shm_province_city` VALUES ('368', '32', '阿克苏', null, '101130801');
INSERT INTO `shm_province_city` VALUES ('369', '32', '阿拉尔', null, null);
INSERT INTO `shm_province_city` VALUES ('370', '32', '巴音郭楞蒙古自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('371', '32', '博尔塔拉蒙古自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('372', '32', '昌吉回族自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('373', '32', '哈密', null, '101131201');
INSERT INTO `shm_province_city` VALUES ('374', '32', '和田', null, '101131301');
INSERT INTO `shm_province_city` VALUES ('375', '32', '喀什', null, '101130901');
INSERT INTO `shm_province_city` VALUES ('376', '32', '克拉玛依', null, '101130201');
INSERT INTO `shm_province_city` VALUES ('377', '32', '克孜勒苏柯尔克孜自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('378', '32', '石河子', null, '101130301');
INSERT INTO `shm_province_city` VALUES ('379', '32', '图木舒克', null, null);
INSERT INTO `shm_province_city` VALUES ('380', '32', '五家渠', null, null);
INSERT INTO `shm_province_city` VALUES ('381', '32', '伊犁哈萨克自治州', null, null);
INSERT INTO `shm_province_city` VALUES ('382', '33', '香港', null, '101320101');
INSERT INTO `shm_province_city` VALUES ('383', '34', '澳门', null, '101330101');

-- ----------------------------
-- Table structure for `shm_recruit`
-- ----------------------------
DROP TABLE IF EXISTS `shm_recruit`;
CREATE TABLE `shm_recruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `sort_id` int(11) DEFAULT '1' COMMENT '排序编号',
  `cid` int(11) DEFAULT NULL COMMENT '类型',
  `ccid` int(11) DEFAULT '0',
  `title` varchar(250) NOT NULL COMMENT '标题',
  `title_seo` tinytext,
  `intro` tinytext COMMENT '简介',
  `tags` tinytext,
  `content` mediumtext COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(11) DEFAULT NULL COMMENT '公告过期时间',
  `click` int(11) DEFAULT '0' COMMENT '浏览次数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '显隐状态',
  `flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐到分类门户的页面显示',
  `audit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '突显状态/颜色',
  `show` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(255) DEFAULT NULL COMMENT '相关图片',
  `thumb` varchar(255) DEFAULT NULL COMMENT '图片缩略图',
  `attachment` varchar(255) DEFAULT NULL COMMENT '相关文件',
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `require` varchar(50) DEFAULT NULL COMMENT '职称要求',
  `amount` int(11) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `age` smallint(6) DEFAULT NULL,
  `age_max` smallint(6) DEFAULT NULL,
  `edu` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `requirement` text,
  `telphone` varchar(20) DEFAULT NULL,
  `person` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='人才招聘';

-- ----------------------------
-- Records of shm_recruit
-- ----------------------------
INSERT INTO `shm_recruit` VALUES ('1', '1', '10', '0', '岗位名称1', null, null, null, '<p>详细说明<br/></p>', '1487088000', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '工作地区', '职称要求', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>能力要求<br/></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');
INSERT INTO `shm_recruit` VALUES ('2', '2', '10', '0', '岗位名称2', null, null, null, '<p>&nbsp; &nbsp; &nbsp; &nbsp; 详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span></p>', '1492444800', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '杭州', '职称信息', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>&nbsp; &nbsp; &nbsp; 能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span>能力要求能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');
INSERT INTO `shm_recruit` VALUES ('3', '3', '10', '0', '岗位名称3', null, null, null, '<p>&nbsp; &nbsp; &nbsp; &nbsp; 详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span></p>', '1492496598', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '杭州', '职称信息', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>&nbsp; &nbsp; &nbsp; 能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span>能力要求能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');
INSERT INTO `shm_recruit` VALUES ('4', '4', '10', '0', '岗位名称4', null, null, null, '<p>&nbsp; &nbsp; &nbsp; &nbsp; 详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span></p>', '1492496600', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '杭州', '职称信息', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>&nbsp; &nbsp; &nbsp; 能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span>能力要求能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');
INSERT INTO `shm_recruit` VALUES ('5', '5', '10', '0', '岗位名称5', null, null, null, '<p>&nbsp; &nbsp; &nbsp; &nbsp; 详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span></p>', '1492496601', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '杭州', '职称信息', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>&nbsp; &nbsp; &nbsp; 能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span>能力要求能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');
INSERT INTO `shm_recruit` VALUES ('6', '6', '10', '0', '岗位名称6', null, null, null, '<p>&nbsp; &nbsp; &nbsp; &nbsp; 详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span></p>', '1492496602', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '杭州', '职称信息', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>&nbsp; &nbsp; &nbsp; 能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span>能力要求能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');
INSERT INTO `shm_recruit` VALUES ('7', '7', '10', '0', '岗位名称7', null, null, null, '<p>&nbsp; &nbsp; &nbsp; &nbsp; 详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span></p>', '1492496603', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '杭州', '职称信息', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>&nbsp; &nbsp; &nbsp; 能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span>能力要求能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');
INSERT INTO `shm_recruit` VALUES ('8', '8', '10', '0', '岗位名称8', null, null, null, '<p>&nbsp; &nbsp; &nbsp; &nbsp; 详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span></p>', '1492496604', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '杭州', '职称信息', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>&nbsp; &nbsp; &nbsp; 能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span>能力要求能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');
INSERT INTO `shm_recruit` VALUES ('9', '9', '10', '0', '岗位名称9', null, null, null, '<p>&nbsp; &nbsp; &nbsp; &nbsp; 详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span></p>', '1492496605', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '杭州', '职称信息', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>&nbsp; &nbsp; &nbsp; 能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span>能力要求能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');
INSERT INTO `shm_recruit` VALUES ('10', '10', '10', '0', '岗位名称10', null, null, null, '<p>&nbsp; &nbsp; &nbsp; &nbsp; 详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span></p>', '1492496605', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '杭州', '职称信息', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>&nbsp; &nbsp; &nbsp; 能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span>能力要求能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');
INSERT INTO `shm_recruit` VALUES ('11', '11', '10', '0', '岗位名称11', null, null, null, '<p>&nbsp; &nbsp; &nbsp; &nbsp; 详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span></p>', '1492496607', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '杭州', '职称信息', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>&nbsp; &nbsp; &nbsp; 能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span>能力要求能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');
INSERT INTO `shm_recruit` VALUES ('12', '12', '10', '0', '岗位名称12', null, null, null, '<p>&nbsp; &nbsp; &nbsp; &nbsp; 详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明详细说明<span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span>详细说明<span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span><span style=\"white-space: normal;\">详细说明</span></p>', '1492496608', '1500220800', '0', '1', '0', '1', '1', null, null, null, null, null, null, null, '杭州', '职称信息', '0', '部门信息', '0', '18', '35', '本科', '专业要求', '2年以上', '<p>&nbsp; &nbsp; &nbsp; 能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span>能力要求能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span>能力要求<span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span><span style=\"white-space: normal;\">能力要求</span></p>', '0571-87651828', '赵小姐', 'zhaochongxu@shmweb.cn');

-- ----------------------------
-- Table structure for `shm_recruit_apply`
-- ----------------------------
DROP TABLE IF EXISTS `shm_recruit_apply`;
CREATE TABLE `shm_recruit_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `sort_id` int(11) DEFAULT '1' COMMENT '排序编号',
  `type_id` int(11) DEFAULT NULL COMMENT '类型',
  `rid` int(10) DEFAULT '0',
  `recruit_id` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL COMMENT '应聘标题',
  `intro` varchar(1000) DEFAULT NULL COMMENT '简介',
  `content` mediumtext COMMENT '内容',
  `answer` mediumtext,
  `timeline_answer` int(11) DEFAULT NULL,
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expire` int(11) DEFAULT NULL COMMENT '公告过期时间',
  `solve` int(1) DEFAULT '0',
  `click` int(11) DEFAULT '0' COMMENT '浏览次数',
  `show` tinyint(4) DEFAULT '1' COMMENT '显隐状态',
  `recommend` tinyint(4) DEFAULT '0' COMMENT '推荐到分类门户的页面显示',
  `audit` tinyint(1) DEFAULT '0' COMMENT '审核状态',
  `photo` varchar(255) DEFAULT NULL COMMENT '相关图片',
  `thumb` varchar(255) DEFAULT NULL COMMENT '图片缩略图',
  `files` varchar(255) DEFAULT NULL COMMENT '相关文件',
  `ip` varchar(100) DEFAULT NULL,
  `ex1` varchar(255) DEFAULT '' COMMENT '其他标签（预留）',
  `ex2` varchar(255) DEFAULT '',
  `ex3` varchar(255) DEFAULT '',
  `ex4` varchar(255) DEFAULT '',
  `x` varchar(255) DEFAULT '',
  `y` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL COMMENT '部门',
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `marriage` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `qq` varchar(100) DEFAULT NULL,
  `msn` varchar(100) DEFAULT NULL,
  `wangwang` varchar(100) DEFAULT NULL,
  `nation` varchar(50) DEFAULT NULL COMMENT '民族',
  `birthday` varchar(20) DEFAULT NULL,
  `politic` varchar(50) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(50) DEFAULT NULL COMMENT '籍贯',
  `school` varchar(100) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL COMMENT '专业',
  `graduation` varchar(20) DEFAULT NULL COMMENT '毕业时间',
  `language` varchar(50) DEFAULT NULL COMMENT '外语水平',
  `position` varchar(100) DEFAULT NULL COMMENT '应聘职位',
  `age` smallint(6) DEFAULT NULL,
  `edu` varchar(50) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='在线应聘';

-- ----------------------------
-- Records of shm_recruit_apply
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_sessions_adminer`
-- ----------------------------
DROP TABLE IF EXISTS `shm_sessions_adminer`;
CREATE TABLE `shm_sessions_adminer` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会话保存';

-- ----------------------------
-- Records of shm_sessions_adminer
-- ----------------------------
INSERT INTO `shm_sessions_adminer` VALUES ('7a3b667767050916adcaa56db62cdfc5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', '1532934000', 'a:6:{s:9:\"user_data\";s:0:\"\";s:3:\"mid\";s:1:\"1\";s:5:\"uname\";s:8:\"shmadmin\";s:8:\"nickname\";s:12:\"超级用户\";s:8:\"login_ip\";s:9:\"127.0.0.1\";s:3:\"gid\";s:1:\"1\";}');

-- ----------------------------
-- Table structure for `shm_sessions_site`
-- ----------------------------
DROP TABLE IF EXISTS `shm_sessions_site`;
CREATE TABLE `shm_sessions_site` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会话保存';

-- ----------------------------
-- Records of shm_sessions_site
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_tags`
-- ----------------------------
DROP TABLE IF EXISTS `shm_tags`;
CREATE TABLE `shm_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(30) NOT NULL COMMENT '标签',
  `en` varchar(60) DEFAULT NULL COMMENT '拼音|英语',
  `len` int(3) DEFAULT '0' COMMENT '长度',
  `count` int(11) DEFAULT '0' COMMENT '计数',
  `type` int(1) DEFAULT '0' COMMENT '分类,0:tags,1:title,2:intro,3:content',
  PRIMARY KEY (`id`),
  KEY `record_index` (`id`,`tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of shm_tags
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_tags_list`
-- ----------------------------
DROP TABLE IF EXISTS `shm_tags_list`;
CREATE TABLE `shm_tags_list` (
  `tid` int(11) NOT NULL DEFAULT '0' COMMENT 'tag id',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT 'col id',
  `aid` int(11) NOT NULL DEFAULT '0' COMMENT 'col''s aritcle id',
  `type` int(1) NOT NULL DEFAULT '0' COMMENT '分类,0:tags,1:title,2:intro,3:content',
  `timeline` int(11) NOT NULL COMMENT '时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签使用表';

-- ----------------------------
-- Records of shm_tags_list
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_upload`
-- ----------------------------
DROP TABLE IF EXISTS `shm_upload`;
CREATE TABLE `shm_upload` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `size` int(11) DEFAULT NULL COMMENT '大小',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `url` varchar(100) DEFAULT NULL COMMENT '地址',
  `thumb` varchar(100) DEFAULT NULL COMMENT '缩略图',
  `deleteUrl` varchar(150) DEFAULT NULL COMMENT '删除',
  `alt` varbinary(30) DEFAULT NULL COMMENT '提示',
  `title` varbinary(100) DEFAULT NULL COMMENT '标题',
  `text` tinytext COMMENT '简介内容',
  `timeline` int(11) DEFAULT NULL COMMENT '时间线',
  `origin_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='文件上传';

-- ----------------------------
-- Records of shm_upload
-- ----------------------------
INSERT INTO `shm_upload` VALUES ('1', '14893891775331cprts.jpg', '34769', 'image/jpeg', '2017/03/13/14893891775331cprts.jpg', '2017/03/13/thumbnail/14893891775331cprts.jpg', '?file=14893891775331cprts.jpg&dt=2017/03/13', null, null, null, '1489389177', '20151103104740.jpg');
INSERT INTO `shm_upload` VALUES ('2', '14893892035051vvu0w.jpg', '101669', 'image/jpeg', '2017/03/13/14893892035051vvu0w.jpg', '2017/03/13/thumbnail/14893892035051vvu0w.jpg', '?file=14893892035051vvu0w.jpg&dt=2017/03/13', null, null, null, '1489389203', '1.jpg');
INSERT INTO `shm_upload` VALUES ('3', '14893892187479s1vqp.jpg', '134686', 'image/jpeg', '2017/03/13/14893892187479s1vqp.jpg', '2017/03/13/thumbnail/14893892187479s1vqp.jpg', '?file=14893892187479s1vqp.jpg&dt=2017/03/13', null, null, null, '1489389218', '2.jpg');
INSERT INTO `shm_upload` VALUES ('4', '14893892305067qloi4.jpg', '71853', 'image/jpeg', '2017/03/13/14893892305067qloi4.jpg', '2017/03/13/thumbnail/14893892305067qloi4.jpg', '?file=14893892305067qloi4.jpg&dt=2017/03/13', null, null, null, '1489389230', '3.jpg');
INSERT INTO `shm_upload` VALUES ('5', '14893892411976clryg.jpg', '132359', 'image/jpeg', '2017/03/13/14893892411976clryg.jpg', '2017/03/13/thumbnail/14893892411976clryg.jpg', '?file=14893892411976clryg.jpg&dt=2017/03/13', null, null, null, '1489389241', '4.jpg');
INSERT INTO `shm_upload` VALUES ('6', '14893892559326x71d4.jpg', '112969', 'image/jpeg', '2017/03/13/14893892559326x71d4.jpg', '2017/03/13/thumbnail/14893892559326x71d4.jpg', '?file=14893892559326x71d4.jpg&dt=2017/03/13', null, null, null, '1489389255', '5.jpg');
INSERT INTO `shm_upload` VALUES ('20', '14957788622974degra.jpg', '76651', 'image/jpeg', '2017/05/26/14957788622974degra.jpg', '2017/05/26/thumbnail/14957788622974degra.jpg', '?file=14957788622974degra.jpg&dt=2017/05/26', null, null, null, '1495778862', 'mb-img.jpg');
INSERT INTO `shm_upload` VALUES ('13', '14924159147287ins5x.jpg', '94464', 'image/jpeg', '2017/04/17/14924159147287ins5x.jpg', '2017/04/17/thumbnail/14924159147287ins5x.jpg', '?file=14924159147287ins5x.jpg&dt=2017/04/17', null, null, null, '1492415914', '1.jpg');
INSERT INTO `shm_upload` VALUES ('14', '14924159235296dxq84.jpg', '28929', 'image/jpeg', '2017/04/17/14924159235296dxq84.jpg', '2017/04/17/thumbnail/14924159235296dxq84.jpg', '?file=14924159235296dxq84.jpg&dt=2017/04/17', null, null, null, '1492415923', '2.jpg');
INSERT INTO `shm_upload` VALUES ('15', '14924159336625fonvz.jpg', '55381', 'image/jpeg', '2017/04/17/14924159336625fonvz.jpg', '2017/04/17/thumbnail/14924159336625fonvz.jpg', '?file=14924159336625fonvz.jpg&dt=2017/04/17', null, null, null, '1492415933', '3.jpg');
INSERT INTO `shm_upload` VALUES ('16', '14924159404476vzltt.jpg', '40536', 'image/jpeg', '2017/04/17/14924159404476vzltt.jpg', '2017/04/17/thumbnail/14924159404476vzltt.jpg', '?file=14924159404476vzltt.jpg&dt=2017/04/17', null, null, null, '1492415940', '4.jpg');
INSERT INTO `shm_upload` VALUES ('17', '149256812539143bm7h.jpg', '101604', 'image/jpeg', '2017/04/19/149256812539143bm7h.jpg', '2017/04/19/thumbnail/149256812539143bm7h.jpg', '?file=149256812539143bm7h.jpg&dt=2017/04/19', null, null, null, '1492568125', '6.jpg');
INSERT INTO `shm_upload` VALUES ('18', '14925681384586shijf.jpg', '121373', 'image/jpeg', '2017/04/19/14925681384586shijf.jpg', '2017/04/19/thumbnail/14925681384586shijf.jpg', '?file=14925681384586shijf.jpg&dt=2017/04/19', null, null, null, '1492568138', '7.jpg');
INSERT INTO `shm_upload` VALUES ('19', '149259711243383tyi0.doc', '11264', 'application/msword', '2017/04/19/149259711243383tyi0.doc', null, '?file=149259711243383tyi0.doc&dt=2017/04/19', null, null, null, '1492597112', 'test.doc');
INSERT INTO `shm_upload` VALUES ('23', '15245385442457mz002.jpg', '50086', 'image/jpeg', '2018/04/24/15245385442457mz002.jpg', '2018/04/24/thumbnail/15245385442457mz002.jpg', '?file=15245385442457mz002.jpg&dt=2018/04/24', null, null, null, '1524538544', '0a119dcd5fef1dc41a1099545cddafd2.jpg');
INSERT INTO `shm_upload` VALUES ('24', '15245385456368yiqb6.jpg', '125966', 'image/jpeg', '2018/04/24/15245385456368yiqb6.jpg', '2018/04/24/thumbnail/15245385456368yiqb6.jpg', '?file=15245385456368yiqb6.jpg&dt=2018/04/24', null, null, null, '1524538545', '5cf6cb3fd523e674d9ba886b12e94813.jpg');
INSERT INTO `shm_upload` VALUES ('25', '152453985067240z24k.jpg', '7240', 'image/jpeg', '2018/04/24/152453985067240z24k.jpg', '2018/04/24/thumbnail/152453985067240z24k.jpg', '?file=152453985067240z24k.jpg&dt=2018/04/24', null, null, null, '1524539850', '58b65fb1N0f604dab.jpg');
INSERT INTO `shm_upload` VALUES ('29', '15245404804734nfqf2.jpg', '2008', 'image/jpeg', '2018/04/24/15245404804734nfqf2.jpg', '2018/04/24/thumbnail/15245404804734nfqf2.jpg', '?file=15245404804734nfqf2.jpg&dt=2018/04/24', null, null, null, '1524540480', 'TB1AYgnPpXXXXa8XXXXSutbFXXX.jpg_q70.jpg');
INSERT INTO `shm_upload` VALUES ('28', '152454044866366z8c8.jpg', '7240', 'image/jpeg', '2018/04/24/152454044866366z8c8.jpg', '2018/04/24/thumbnail/152454044866366z8c8.jpg', '?file=152454044866366z8c8.jpg&dt=2018/04/24', null, null, null, '1524540448', '58b65fb1N0f604dab.jpg');
INSERT INTO `shm_upload` VALUES ('30', '1524552309537r9ewl.jpg', '50086', 'image/jpeg', '2018/04/24/1524552309537r9ewl.jpg', '2018/04/24/thumbnail/1524552309537r9ewl.jpg', '?file=1524552309537r9ewl.jpg&dt=2018/04/24', null, null, null, '1524552309', '0a119dcd5fef1dc41a1099545cddafd2.jpg');

-- ----------------------------
-- Table structure for `shm_users`
-- ----------------------------
DROP TABLE IF EXISTS `shm_users`;
CREATE TABLE `shm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) DEFAULT '0' COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext COMMENT '标题',
  `link` text COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `photo` varchar(10) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(50) DEFAULT NULL COMMENT '图片缩略图',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='会员中心';

-- ----------------------------
-- Records of shm_users
-- ----------------------------

-- ----------------------------
-- Table structure for `shm_videos`
-- ----------------------------
DROP TABLE IF EXISTS `shm_videos`;
CREATE TABLE `shm_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `entitle` varchar(50) DEFAULT NULL,
  `title` varchar(250) NOT NULL COMMENT '标题',
  `title_seo` varchar(250) DEFAULT NULL,
  `intro` varchar(250) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `videourl` text,
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '公告过期时间',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0:1状态,1 发布，0 草稿',
  `author` varchar(50) DEFAULT NULL COMMENT '消息作者',
  `source` varchar(50) DEFAULT NULL COMMENT '消息来源',
  `click` int(11) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `color` int(1) NOT NULL DEFAULT '0' COMMENT '突显状态/颜色',
  `photo` varchar(200) DEFAULT NULL COMMENT '相关图片',
  `thumb` varchar(200) DEFAULT NULL COMMENT '图片缩略图',
  `files` tinytext COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='视频';

-- ----------------------------
-- Records of shm_videos
-- ----------------------------
INSERT INTO `shm_videos` VALUES ('1', '1', '0', '1', '1', '0', '0', null, null, '测试信息', '', '  ', '', '', null, '1487208079', null, '0', null, null, '0', '0', '', '', '');
INSERT INTO `shm_videos` VALUES ('2', '1', '0', '2', '1', '0', '0', null, null, '测试信息', '', '  ', '', '', null, '1489659424', null, '0', null, null, '0', '0', '', '', '');

-- ----------------------------
-- Table structure for `shm_webmodels`
-- ----------------------------
DROP TABLE IF EXISTS `shm_webmodels`;
CREATE TABLE `shm_webmodels` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一编号',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '所属栏目',
  `ccid` int(11) NOT NULL DEFAULT '0' COMMENT '栏目条目ID伪栏目',
  `mid` int(10) DEFAULT '1' COMMENT '1:新闻模块',
  `sort_id` int(11) DEFAULT '0' COMMENT '排序编号',
  `audit` int(1) NOT NULL DEFAULT '0' COMMENT '0:1审核',
  `flag` int(1) NOT NULL DEFAULT '0' COMMENT '0:1推荐',
  `ctype` int(4) NOT NULL DEFAULT '0' COMMENT '默认分类',
  `type_id` int(4) DEFAULT NULL COMMENT '类型',
  `title` tinytext COMMENT '标题',
  `link` text COMMENT '外链',
  `title_seo` tinytext,
  `intro` varchar(500) DEFAULT NULL COMMENT '简介(200汉字)',
  `tags` tinytext COMMENT '标签',
  `content` text COMMENT '内容',
  `timeline` int(11) DEFAULT NULL COMMENT '发布/修改时间',
  `photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `thumb` varchar(200) DEFAULT NULL COMMENT '图片缩略图',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='新闻模块';

-- ----------------------------
-- Records of shm_webmodels
-- ----------------------------
INSERT INTO `shm_webmodels` VALUES ('21', '0', '0', '2', '2', '0', '0', '0', '4', null, null, null, null, null, null, '1492415649', null, null);
INSERT INTO `shm_webmodels` VALUES ('20', '0', '0', '1', '1', '0', '0', '0', '7', null, null, null, null, null, null, '1489116841', null, '');
