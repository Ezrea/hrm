
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `TB_REWARD`
-- ----------------------------
DROP TABLE IF EXISTS `TB_REWARD`;
CREATE TABLE `TB_REWARD` (
 		`REWARD_ID` varchar(100) NOT NULL,
		`NAME` varchar(255) DEFAULT NULL COMMENT '姓名',
		`TYPE` varchar(255) DEFAULT NULL COMMENT '奖惩类型',
		`REASON` varchar(255) DEFAULT NULL COMMENT '奖惩原因',
		`HANDLE` varchar(255) DEFAULT NULL COMMENT '奖惩内容',
		`DATE` varchar(32) DEFAULT NULL COMMENT '奖惩时间',
  		PRIMARY KEY (`REWARD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
