
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `TB_APPLY`
-- ----------------------------
DROP TABLE IF EXISTS `TB_APPLY`;
CREATE TABLE `TB_APPLY` (
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
