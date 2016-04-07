/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : fhadmin

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-04-08 02:27:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_app_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_user`;
CREATE TABLE `sys_app_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_app_user
-- ----------------------------
INSERT INTO `sys_app_user` VALUES ('1e89e6504be349a68c025976b3ecc1d1', 'a1', '698d51a19d8a121ce581499d7b701668', '会员甲', '', '115b386ff04f4352b060dffcd2b5d1da', '', '', '1', '121', '1212', '1212', '2015-12-02', '2015-12-25', '2', '111', '123456789@qq.com');
INSERT INTO `sys_app_user` VALUES ('ead1f56708e4409c8d071e0a699e5633', 'a2', 'bcbe3365e6ac95ea2c0343a2395834dd', '会员乙', '', '1b67fc82ce89457a8347ae53e43a347e', '', '', '0', '', '', '', '2015-12-01', '2015-12-24', '1', '121', '123456786@qq.com');

-- ----------------------------
-- Table structure for sys_createcode
-- ----------------------------
DROP TABLE IF EXISTS `sys_createcode`;
CREATE TABLE `sys_createcode` (
  `CREATECODE_ID` varchar(100) NOT NULL,
  `PACKAGENAME` varchar(50) DEFAULT NULL COMMENT '包名',
  `OBJECTNAME` varchar(50) DEFAULT NULL COMMENT '类名',
  `TABLENAME` varchar(50) DEFAULT NULL COMMENT '表名',
  `FIELDLIST` varchar(5000) DEFAULT NULL COMMENT '属性集',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `TITLE` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`CREATECODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_createcode
-- ----------------------------
INSERT INTO `sys_createcode` VALUES ('002ea762e3e242a7a10ea5ca633701d8', 'system', 'Buttonrights', 'sys_,fh,BUTTONRIGHTS', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,255Q313596790', '2016-01-16 23:20:36', '按钮权限');
INSERT INTO `sys_createcode` VALUES ('32616b0781fd42fe829792e166b83ac5', 'pay', 'Pay', 'TB_,fh,PAY', 'NAME,fh,String,fh,姓名,fh,是,fh,无,fh,255Q313596790DEPARTMENT,fh,String,fh,所属部门,fh,是,fh,无,fh,255Q313596790JOB,fh,String,fh,岗位,fh,是,fh,无,fh,255Q313596790BASEPAY,fh,String,fh,实际薪资,fh,是,fh,无,fh,255Q313596790PERCENT,fh,String,fh,提成,fh,是,fh,无,fh,255Q313596790REWARD,fh,String,fh,奖惩,fh,是,fh,无,fh,255Q313596790SUBSIDE,fh,String,fh,补贴,fh,是,fh,无,fh,255Q313596790TAX,fh,String,fh,个人所得税扣款,fh,是,fh,无,fh,255Q313596790MEDICAL,fh,String,fh,医社保扣款,fh,是,fh,无,fh,255Q313596790SOCALE,fh,String,fh,公积金,fh,是,fh,无,fh,255Q313596790', '2016-04-08 01:36:06', '薪资管理');
INSERT INTO `sys_createcode` VALUES ('65bd9f13738244cd91c68f960fcd4c02', 'apply', 'Apply', 'TB_,fh,APPLY', 'NAME,fh,String,fh,姓名,fh,是,fh,无,fh,255Q313596790TIME,fh,Date,fh,预约面试时间,fh,是,fh,无,fh,32Q313596790JOB,fh,String,fh,应聘岗位,fh,是,fh,无,fh,255Q313596790ORIGIN,fh,String,fh,人才来源,fh,是,fh,无,fh,255Q313596790CONTACT,fh,String,fh,联系方式,fh,是,fh,无,fh,255Q313596790EMAIL,fh,String,fh,邮箱地址,fh,是,fh,无,fh,255Q313596790RESULT,fh,String,fh,应聘状态,fh,是,fh,无,fh,255Q313596790', '2016-04-08 00:07:33', '应聘管理');
INSERT INTO `sys_createcode` VALUES ('67bf3d0593a94ebfab6f642a0ef0d78b', 'train', 'Train', 'TB_,fh,TRAIN', 'NAME,fh,String,fh,培训计划名,fh,是,fh,无,fh,255Q313596790ADDRESS,fh,String,fh,培训地点,fh,是,fh,无,fh,255Q313596790DATE,fh,Date,fh,培训时间,fh,是,fh,无,fh,32Q313596790TIME,fh,String,fh,具体时间,fh,是,fh,无,fh,255Q313596790CONTENT,fh,String,fh,培训内容,fh,是,fh,无,fh,255Q313596790PEOPLE,fh,String,fh,培训人员,fh,是,fh,无,fh,255Q313596790REMARK,fh,String,fh,备注事项,fh,是,fh,无,fh,255Q313596790', '2016-04-08 00:56:32', '培训管理');
INSERT INTO `sys_createcode` VALUES ('99b989bee44a49c9889e23a683b6f925', 'reward', 'Reward', 'TB_,fh,REWARD', 'NAME,fh,String,fh,姓名,fh,是,fh,无,fh,255Q313596790TYPE,fh,String,fh,奖惩类型,fh,是,fh,无,fh,255Q313596790REASON,fh,String,fh,奖惩原因,fh,是,fh,无,fh,255Q313596790HANDLE,fh,String,fh,奖惩内容,fh,是,fh,无,fh,255Q313596790DATE,fh,Date,fh,奖惩时间,fh,是,fh,无,fh,32Q313596790', '2016-04-08 01:11:57', '奖惩情况');
INSERT INTO `sys_createcode` VALUES ('c7586f931fd44c61beccd3248774c68c', 'system', 'Department', 'SYS_,fh,DEPARTMENT', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,30Q313596790NAME_EN,fh,String,fh,英文,fh,是,fh,无,fh,50Q313596790BIANMA,fh,String,fh,编码,fh,是,fh,无,fh,50Q313596790PARENT_ID,fh,String,fh,上级ID,fh,否,fh,无,fh,100Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790HEADMAN,fh,String,fh,负责人,fh,是,fh,无,fh,30Q313596790TEL,fh,String,fh,电话,fh,是,fh,无,fh,50Q313596790FUNCTIONS,fh,String,fh,部门职能,fh,是,fh,无,fh,255Q313596790ADDRESS,fh,String,fh,地址,fh,是,fh,无,fh,255Q313596790', '2015-12-20 01:49:25', '组织机构');
INSERT INTO `sys_createcode` VALUES ('cda8a9615a3542368c3ff38117ab1834', 'apply', 'Apply', 'TB_,fh,APPLY', 'NAME,fh,String,fh,姓名,fh,是,fh,无,fh,255Q313596790TIME,fh,Date,fh,预约面试时间,fh,是,fh,无,fh,32Q313596790JOB,fh,String,fh,应聘岗位,fh,是,fh,无,fh,255Q313596790ORIGIN,fh,String,fh,人才来源,fh,是,fh,无,fh,255Q313596790CONTACT,fh,String,fh,联系方式,fh,是,fh,无,fh,255Q313596790EMAIL,fh,String,fh,邮箱地址,fh,是,fh,无,fh,255Q313596790RESULT,fh,String,fh,应聘状态,fh,是,fh,无,fh,255Q313596790', '2016-04-08 00:06:42', '应聘管理');
INSERT INTO `sys_createcode` VALUES ('dbd7b8330d774dcabd184eca8668a295', 'system', 'Fhsms', 'SYS_,fh,FHSMS', 'CONTENT,fh,String,fh,内容,fh,是,fh,无,fh,1000Q313596790TYPE,fh,String,fh,类型,fh,否,fh,无,fh,5Q313596790TO_USERNAME,fh,String,fh,收信人,fh,是,fh,无,fh,255Q313596790FROM_USERNAME,fh,String,fh,发信人,fh,是,fh,无,fh,255Q313596790SEND_TIME,fh,String,fh,发信时间,fh,是,fh,无,fh,100Q313596790STATUS,fh,String,fh,状态,fh,否,fh,无,fh,5Q313596790SANME_ID,fh,String,fh,共同ID,fh,是,fh,无,fh,100Q313596790', '2016-01-23 01:44:15', '站内信');
INSERT INTO `sys_createcode` VALUES ('fe239f8742194481a5b56f90cad71520', 'system', 'Fhbutton', 'SYS_,fh,FHBUTTON', 'NAME,fh,String,fh,名称,fh,是,fh,无,fh,30Q313596790QX_NAME,fh,String,fh,权限标识,fh,是,fh,无,fh,50Q313596790BZ,fh,String,fh,备注,fh,是,fh,无,fh,255Q313596790', '2016-01-15 18:38:40', '按钮管理');

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department` (
  `DEPARTMENT_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `NAME_EN` varchar(50) DEFAULT NULL COMMENT '英文',
  `BIANMA` varchar(50) DEFAULT NULL COMMENT '编码',
  `PARENT_ID` varchar(100) DEFAULT NULL COMMENT '上级ID',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  `HEADMAN` varchar(30) DEFAULT NULL COMMENT '负责人',
  `TEL` varchar(50) DEFAULT NULL COMMENT '电话',
  `FUNCTIONS` varchar(255) DEFAULT NULL COMMENT '部门职能',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`DEPARTMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES ('0956d8c279274fca92f4091f2a69a9ad', '销售会计', 'xiaokuai', '05896', 'd41af567914a409893d011aa53eda797', '', '', '', '', '');
INSERT INTO `sys_department` VALUES ('3e7227e11dc14b4d9e863dd1a1fcedf6', '成本会计', 'chengb', '03656', 'd41af567914a409893d011aa53eda797', '', '', '', '', '');
INSERT INTO `sys_department` VALUES ('5cccdb7c432449d8b853c52880058140', 'B公司', 'b', '002', '0', '冶铁', '李四', '112', '冶铁', '河北');
INSERT INTO `sys_department` VALUES ('83a25761c618457cae2fa1211bd8696d', '销售B组', 'xiaob', '002365', 'cbbc84eddde947ba8af7d509e430eb70', '', '李四', '', '', '');
INSERT INTO `sys_department` VALUES ('8f8b045470f342fdbc4c312ab881d62b', '销售A组', 'xiaoA', '0326', 'cbbc84eddde947ba8af7d509e430eb70', '', '张三', '0201212', '', '');
INSERT INTO `sys_department` VALUES ('a0982dea52554225ab682cd4b421de47', '1队', 'yidui', '02563', '8f8b045470f342fdbc4c312ab881d62b', '', '小王', '12356989', '', '');
INSERT INTO `sys_department` VALUES ('a6c6695217ba4a4dbfe9f7e9d2c06730', 'A公司', 'a', '001', '0', '挖煤', '张三', '110', '洼煤矿', '山西');
INSERT INTO `sys_department` VALUES ('cbbc84eddde947ba8af7d509e430eb70', '销售部', 'xiaoshoubu', '00201', '5cccdb7c432449d8b853c52880058140', '推销商品', '小明', '11236', '推销商品', '909办公室');
INSERT INTO `sys_department` VALUES ('d41af567914a409893d011aa53eda797', '财务部', 'caiwubu', '00101', 'a6c6695217ba4a4dbfe9f7e9d2c06730', '负责发工资', '王武', '11236', '管理财务', '308办公室');

-- ----------------------------
-- Table structure for sys_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhbutton`;
CREATE TABLE `sys_fhbutton` (
  `FHBUTTON_ID` varchar(100) NOT NULL,
  `NAME` varchar(30) DEFAULT NULL COMMENT '名称',
  `QX_NAME` varchar(50) DEFAULT NULL COMMENT '权限标识',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`FHBUTTON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhbutton
-- ----------------------------
INSERT INTO `sys_fhbutton` VALUES ('3542adfbda73410c976e185ffe50ad06', '导出EXCEL', 'toExcel', '导出EXCEL');
INSERT INTO `sys_fhbutton` VALUES ('46992ea280ba4b72b29dedb0d4bc0106', '发邮件', 'email', '发送电子邮件');
INSERT INTO `sys_fhbutton` VALUES ('4efa162fce8340f0bd2dcd3b11d327ec', '导入EXCEL', 'FromExcel', '导入EXCEL到系统用户');
INSERT INTO `sys_fhbutton` VALUES ('cc51b694d5344d28a9aa13c84b7166cd', '发短信', 'sms', '发送短信');
INSERT INTO `sys_fhbutton` VALUES ('da7fd386de0b49ce809984f5919022b8', '站内信', 'FHSMS', '发送站内信');

-- ----------------------------
-- Table structure for sys_fhsms
-- ----------------------------
DROP TABLE IF EXISTS `sys_fhsms`;
CREATE TABLE `sys_fhsms` (
  `FHSMS_ID` varchar(100) NOT NULL,
  `CONTENT` varchar(1000) DEFAULT NULL COMMENT '内容',
  `TYPE` varchar(5) DEFAULT NULL COMMENT '类型',
  `TO_USERNAME` varchar(255) DEFAULT NULL COMMENT '收信人',
  `FROM_USERNAME` varchar(255) DEFAULT NULL COMMENT '发信人',
  `SEND_TIME` varchar(100) DEFAULT NULL COMMENT '发信时间',
  `STATUS` varchar(5) DEFAULT NULL COMMENT '状态',
  `SANME_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`FHSMS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_fhsms
-- ----------------------------
INSERT INTO `sys_fhsms` VALUES ('05879f5868824f35932ee9f2062adc03', '你好', '2', 'admin', 'san', '2016-01-25 14:05:31', '1', 'b311e893228f42d5a05dbe16917fd16f');
INSERT INTO `sys_fhsms` VALUES ('2635dd035c6f4bb5a091abdd784bd899', '你好', '2', 'san', 'admin', '2016-01-25 14:05:02', '1', '1b7637306683460f89174c2b025862b5');
INSERT INTO `sys_fhsms` VALUES ('52378ccd4e2d4fe08994d1652af87c68', '你好', '1', 'admin', 'san', '2016-01-25 16:26:44', '1', '920b20dafdfb4c09b560884eb277c51d');
INSERT INTO `sys_fhsms` VALUES ('77ed13f9c49a4c4bb460c41b8580dd36', 'gggg', '2', 'admin', 'san', '2016-01-24 21:22:43', '2', 'dd9ee339576e48c5b046b94fa1901d00');
INSERT INTO `sys_fhsms` VALUES ('98a6869f942042a1a037d9d9f01cb50f', '你好', '1', 'admin', 'san', '2016-01-25 14:05:02', '1', '1b7637306683460f89174c2b025862b5');
INSERT INTO `sys_fhsms` VALUES ('9e00295529014b6e8a27019cbccb3da1', '柔柔弱弱', '1', 'admin', 'san', '2016-01-24 21:22:57', '1', 'a29603d613ea4e54b5678033c1bf70a6');
INSERT INTO `sys_fhsms` VALUES ('d3aedeb430f640359bff86cd657a8f59', '你好', '1', 'admin', 'san', '2016-01-24 21:22:12', '1', 'f022fbdce3d845aba927edb698beb90b');
INSERT INTO `sys_fhsms` VALUES ('e5376b1bd54b489cb7f2203632bd74ec', '管理员好', '2', 'admin', 'san', '2016-01-25 14:06:13', '2', 'b347b2034faf43c79b54be4627f3bd2b');
INSERT INTO `sys_fhsms` VALUES ('e613ac0fcc454f32895a70b747bf4fb5', '你也好', '2', 'admin', 'san', '2016-01-25 16:27:54', '2', 'ce8dc3b15afb40f28090f8b8e13f078d');
INSERT INTO `sys_fhsms` VALUES ('f25e00cfafe741a3a05e3839b66dc7aa', '你好', '2', 'san', 'admin', '2016-01-25 16:26:44', '1', '920b20dafdfb4c09b560884eb277c51d');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(60) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  `MENU_STATE` int(1) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '#', '0', '1', 'menu-icon fa fa-desktop blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('2', '权限管理', '#', '1', '1', 'menu-icon fa fa-lock black', '1', '1');
INSERT INTO `sys_menu` VALUES ('6', '信息管理', '#', '0', '5', 'menu-icon fa fa-credit-card green', '2', '1');
INSERT INTO `sys_menu` VALUES ('7', '图片管理', 'pictures/list.do', '6', '1', 'menu-icon fa fa-folder-o pink', '2', '1');
INSERT INTO `sys_menu` VALUES ('8', '性能监控', 'druid/index.html', '9', '1', 'menu-icon fa fa-tachometer red', '1', '1');
INSERT INTO `sys_menu` VALUES ('9', '系统工具', '#', '0', '3', 'menu-icon fa fa-cog black', '2', '0');
INSERT INTO `sys_menu` VALUES ('10', '接口测试', 'tool/interfaceTest.do', '9', '2', 'menu-icon fa fa-exchange green', '1', '1');
INSERT INTO `sys_menu` VALUES ('11', '发送邮件', 'tool/goSendEmail.do', '9', '3', 'menu-icon fa fa-envelope-o green', '1', '1');
INSERT INTO `sys_menu` VALUES ('12', '置二维码', 'tool/goTwoDimensionCode.do', '9', '4', 'menu-icon fa fa-barcode green', '1', '1');
INSERT INTO `sys_menu` VALUES ('14', '地图工具', 'tool/map.do', '9', '6', 'menu-icon fa fa-globe black', '1', '1');
INSERT INTO `sys_menu` VALUES ('16', '文本回复', 'textmsg/list.do', '15', '2', 'menu-icon fa fa-comment green', '2', '1');
INSERT INTO `sys_menu` VALUES ('17', '应用命令', 'command/list.do', '15', '4', 'menu-icon fa fa-comment grey', '2', '1');
INSERT INTO `sys_menu` VALUES ('18', '图文回复', 'imgmsg/list.do', '15', '3', 'menu-icon fa fa-comment pink', '2', '1');
INSERT INTO `sys_menu` VALUES ('19', '关注回复', 'textmsg/goSubscribe.do', '15', '1', 'menu-icon fa fa-comment orange', '2', '1');
INSERT INTO `sys_menu` VALUES ('20', '在线管理', 'onlinemanager/list.do', '1', '6', 'menu-icon fa fa-laptop green', '1', '1');
INSERT INTO `sys_menu` VALUES ('21', '打印测试', 'tool/printTest.do', '9', '7', 'menu-icon fa fa-hdd-o grey', '1', '1');
INSERT INTO `sys_menu` VALUES ('23', '二级菜单', '#', '22', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('24', '三级菜单', '#', '23', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('30', '四级菜单', '#', '24', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('31', '五级菜单1', '#', '30', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('32', '五级菜单2', '#', '30', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('33', '六级菜单', '#', '31', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('34', '六级菜单2', 'login_default.do', '31', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('35', '四级菜单2', 'login_default.do', '24', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('36', '角色(基础权限)', 'role.do', '2', '1', 'menu-icon fa fa-key orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('37', '按钮权限', 'buttonrights/list.do', '2', '2', 'menu-icon fa fa-key green', '1', '1');
INSERT INTO `sys_menu` VALUES ('38', '菜单管理', 'menu/listAllMenu.do', '1', '3', 'menu-icon fa fa-folder-open-o brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('39', '按钮管理', 'fhbutton/list.do', '1', '2', 'menu-icon fa fa-download orange', '1', '1');
INSERT INTO `sys_menu` VALUES ('40', '用户管理', '#', '0', '2', 'menu-icon fa fa-users blue', '2', '1');
INSERT INTO `sys_menu` VALUES ('41', '系统用户', 'user/listUsers.do', '40', '1', 'menu-icon fa fa-users green', '1', '1');
INSERT INTO `sys_menu` VALUES ('44', '代码生成', 'createCode/list.do', '9', '0', 'menu-icon fa fa-cogs brown', '1', '1');
INSERT INTO `sys_menu` VALUES ('45', '七级菜单1', '#', '33', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('46', '七级菜单2', '#', '33', '2', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('47', '八级菜单', 'login_default.do', '45', '1', 'menu-icon fa fa-leaf black', '1', '1');
INSERT INTO `sys_menu` VALUES ('48', '图表报表', ' tool/fusionchartsdemo.do', '9', '5', 'menu-icon fa fa-bar-chart-o black', '1', '1');
INSERT INTO `sys_menu` VALUES ('49', '组织机构', 'department/listAllDepartment.do?DEPARTMENT_ID=0', '1', '5', 'menu-icon fa fa-users blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('50', '站内信', 'fhsms/list.do', '6', '2', 'menu-icon fa fa-envelope green', '1', '1');
INSERT INTO `sys_menu` VALUES ('51', '应聘管理', 'apply/list.do', '1', '4', 'menu-icon fa fa-video-camera purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('52', '培训管理', 'train/list.do', '1', '6', 'menu-icon fa fa-bolt purple', '1', '1');
INSERT INTO `sys_menu` VALUES ('53', '奖惩管理', 'reward/list.do', '1', '7', 'menu-icon fa fa-cogs blue', '1', '1');
INSERT INTO `sys_menu` VALUES ('54', '薪资管理', 'pay/list.do', '1', '8', 'menu-icon fa fa-hdd-o orange', '1', '1');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理组', '35769243558502342', '0', '1', '1', '1', '1');
INSERT INTO `sys_role` VALUES ('115b386ff04f4352b060dffcd2b5d1da', '中级会员', '498', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('1b67fc82ce89457a8347ae53e43a347e', '初级会员', '498', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('2', '会员组', '498', '0', '0', '0', '0', '1');
INSERT INTO `sys_role` VALUES ('3264c8e83d0248bb9e3ea6195b4c0216', '一级管理员', '35769243558502342', '1', '35769243558502342', '35769243558502342', '34643343651659718', '35769243558502342');
INSERT INTO `sys_role` VALUES ('68f8e4a39efe47c7bb869e9d15ab925d', '二级管理员', '35769243558502342', '1', '0', '0', '2251798773489606', '0');
INSERT INTO `sys_role` VALUES ('8b70a7e67f2841e7aaba8a4d92e5ff6f', '高级会员', '498', '2', '0', '0', '0', '0');
INSERT INTO `sys_role` VALUES ('de9de2f006e145a29d52dfadda295353', '三级管理员', '35769243558502342', '1', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for sys_role_fhbutton
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_fhbutton`;
CREATE TABLE `sys_role_fhbutton` (
  `RB_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `BUTTON_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RB_ID`),
  KEY `角色表外键` (`ROLE_ID`) USING BTREE,
  KEY `fbutton` (`BUTTON_ID`),
  CONSTRAINT `fbutton` FOREIGN KEY (`BUTTON_ID`) REFERENCES `sys_fhbutton` (`FHBUTTON_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `frole` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`ROLE_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_fhbutton
-- ----------------------------
INSERT INTO `sys_role_fhbutton` VALUES ('30032391c1f649b98037650bad8a9b62', '3264c8e83d0248bb9e3ea6195b4c0216', '46992ea280ba4b72b29dedb0d4bc0106');
INSERT INTO `sys_role_fhbutton` VALUES ('5b3fd595d1af448ebe0b495642bc5796', '3264c8e83d0248bb9e3ea6195b4c0216', 'cc51b694d5344d28a9aa13c84b7166cd');
INSERT INTO `sys_role_fhbutton` VALUES ('b1108b124e83437db1b72133928821ff', '3264c8e83d0248bb9e3ea6195b4c0216', '4efa162fce8340f0bd2dcd3b11d327ec');
INSERT INTO `sys_role_fhbutton` VALUES ('b3dcef4ce1b3407090eb016aad0250b1', '3264c8e83d0248bb9e3ea6195b4c0216', 'da7fd386de0b49ce809984f5919022b8');
INSERT INTO `sys_role_fhbutton` VALUES ('c921e61745164355a7a0994623ce3a53', '3264c8e83d0248bb9e3ea6195b4c0216', '3542adfbda73410c976e185ffe50ad06');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(15) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'de41b7fb99201d8334c23c014db35ecd92df81bc', '系统管理员', '1133671055321055258374707980945218933803269864762743594642571294', '1', '2016-04-08 02:26:09', '127.0.0.1', '0', '最高统治者', 'default', '123456789@main.com', '001', '18788888888');
INSERT INTO `sys_user` VALUES ('69177258a06e4927b4639ab1684c3320', 'san', '075a9a05bfe3daacb769f9570df669ff5d9a2fa8', '三', '', '3264c8e83d0248bb9e3ea6195b4c0216', '2016-04-03 15:01:46', '127.0.0.1', '0', '111', 'default', '978336446@qq.com', '333', '13562202556');
INSERT INTO `sys_user` VALUES ('9991f4d7782a4ccfb8a65bd96ea7aafa', 'lisi', '41009ccf47f70965bed820412e63e3c46a455ba3', '李四', '', '68f8e4a39efe47c7bb869e9d15ab925d', '2016-04-03 15:46:00', '127.0.0.1', '0', '小李', 'default', '313596790@qq.com', '1102', '13566233663');
INSERT INTO `sys_user` VALUES ('e29149962e944589bb7da23ad18ddeed', 'zhangsan', 'c2da1419caf053885c492e10ebde421581cdc03f', '张三', '', 'de9de2f006e145a29d52dfadda295353', '', '', '0', '小张', 'default', 'zhangsan@www.com', '1101', '18064563372');

-- ----------------------------
-- Table structure for tb_apply
-- ----------------------------
DROP TABLE IF EXISTS `tb_apply`;
CREATE TABLE `tb_apply` (
  `APPLY_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '姓名',
  `TIME` varchar(32) DEFAULT NULL COMMENT '预约面试时间',
  `JOB` varchar(255) DEFAULT NULL COMMENT '应聘岗位',
  `ORIGIN` varchar(255) DEFAULT NULL COMMENT '人才来源',
  `CONTACT` varchar(255) DEFAULT NULL COMMENT '联系方式',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT '邮箱地址',
  `RESULT` varchar(255) DEFAULT NULL COMMENT '应聘状态',
  PRIMARY KEY (`APPLY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_apply
-- ----------------------------
INSERT INTO `tb_apply` VALUES ('2854b34ebd574edca7d9e51ed7e62593', '陈英杰', '2016-04-21', 'Java 工程师', '厦门人才市场', '18064563372', '562608707@qq.com', '预约面试');

-- ----------------------------
-- Table structure for tb_pay
-- ----------------------------
DROP TABLE IF EXISTS `tb_pay`;
CREATE TABLE `tb_pay` (
  `PAY_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '姓名',
  `DEPARTMENT` varchar(255) DEFAULT NULL COMMENT '所属部门',
  `JOB` varchar(255) DEFAULT NULL COMMENT '岗位',
  `BASEPAY` varchar(255) DEFAULT NULL COMMENT '实际薪资',
  `PERCENT` varchar(255) DEFAULT NULL COMMENT '提成',
  `REWARD` varchar(255) DEFAULT NULL COMMENT '奖惩',
  `SUBSIDE` varchar(255) DEFAULT NULL COMMENT '补贴',
  `TAX` varchar(255) DEFAULT NULL COMMENT '个人所得税扣款',
  `MEDICAL` varchar(255) DEFAULT NULL COMMENT '医社保扣款',
  `SOCALE` varchar(255) DEFAULT NULL COMMENT '公积金',
  PRIMARY KEY (`PAY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pay
-- ----------------------------

-- ----------------------------
-- Table structure for tb_pictures
-- ----------------------------
DROP TABLE IF EXISTS `tb_pictures`;
CREATE TABLE `tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(100) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_pictures
-- ----------------------------
INSERT INTO `tb_pictures` VALUES ('b06010340ee54cfab49b8bfbe2387557', '图片', '5e6ba5ad3067482e9a8063b0627ee983.png', '20160125/5e6ba5ad3067482e9a8063b0627ee983.png', '2016-01-25 16:49:44', '1', '图片管理处上传');
INSERT INTO `tb_pictures` VALUES ('c9f1eca620c94c27bfa7028c66911f41', '图片', '928da750ec8542ceb7b2495f45ea6a9e.jpg', '20160125/928da750ec8542ceb7b2495f45ea6a9e.jpg', '2016-01-25 16:49:44', '1', '图片管理处上传');

-- ----------------------------
-- Table structure for tb_reward
-- ----------------------------
DROP TABLE IF EXISTS `tb_reward`;
CREATE TABLE `tb_reward` (
  `REWARD_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '姓名',
  `TYPE` varchar(255) DEFAULT NULL COMMENT '奖惩类型',
  `REASON` varchar(255) DEFAULT NULL COMMENT '奖惩原因',
  `HANDLE` varchar(255) DEFAULT NULL COMMENT '奖惩内容',
  `DATE` varchar(32) DEFAULT NULL COMMENT '奖惩时间',
  PRIMARY KEY (`REWARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_reward
-- ----------------------------
INSERT INTO `tb_reward` VALUES ('12f7939a601f413d98f1bcf1a99fcac7', '陈英杰', '考勤惩罚', '上班迟到', '扣五十', '2016-04-27');
INSERT INTO `tb_reward` VALUES ('9287a94f5e264bd9beda85cc0f208dc1', '陈英杰', '项目提成', '项目上线提成', '项目提成 两千', '2016-04-21');

-- ----------------------------
-- Table structure for tb_train
-- ----------------------------
DROP TABLE IF EXISTS `tb_train`;
CREATE TABLE `tb_train` (
  `TRAIN_ID` varchar(100) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL COMMENT '培训计划名',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '培训地点',
  `DATE` varchar(32) DEFAULT NULL COMMENT '培训时间',
  `TIME` varchar(255) DEFAULT NULL COMMENT '具体时间',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '培训内容',
  `PEOPLE` varchar(255) DEFAULT NULL COMMENT '培训人员',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注事项',
  PRIMARY KEY (`TRAIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_train
-- ----------------------------
INSERT INTO `tb_train` VALUES ('6de0f7a8e9174cf985bbd4159756166d', '入职培训', '大会议室', '2016-04-15', '早上 9点到十点', '公司新人入职培训', '新入职人员：陈英杰', '具体培训地点根据情况可能有变动');
