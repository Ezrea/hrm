
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `TB_PAY`
-- ----------------------------
DROP TABLE IF EXISTS `TB_PAY`;
CREATE TABLE `TB_PAY` (
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
