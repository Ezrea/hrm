
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `TB_TRAIN`
-- ----------------------------
DROP TABLE IF EXISTS `TB_TRAIN`;
CREATE TABLE `TB_TRAIN` (
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
