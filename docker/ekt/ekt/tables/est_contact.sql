CREATE TABLE `est_contact` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '联系人ID，主键，自增',
  `cle_id` int(11) NOT NULL DEFAULT '0' COMMENT '客户ID',
  `con_if_main` tinyint(1) NOT NULL DEFAULT '0' COMMENT '主联系人： 0否  1是',
  `con_name` varchar(20) NOT NULL DEFAULT '' COMMENT '决策人姓名',
  `con_mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `con_mail` varchar(100) NOT NULL DEFAULT '' COMMENT '邮箱',
  `con_1` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段1',
  `con_2` text,
  `con_3` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段3',
  `con_4` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段4',
  `con_5` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段5',
  `con_6` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段6',
  `con_7` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段7',
  `con_8` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段8',
  `con_9` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段9',
  `con_10` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段10',
  `con_remark` text COMMENT '备注',
  `con_11` varchar(50) NOT NULL DEFAULT '',
  `con_12` varchar(50) NOT NULL DEFAULT '',
  `con_1_1` text,
  `con_1_2` text,
  `con_1_3` text,
  `con_7_1` text,
  `con_7_2` text,
  `con_7_3` text,
  PRIMARY KEY (`con_id`),
  KEY `con_mobile` (`con_mobile`),
  KEY `cle_id` (`cle_id`),
  KEY `con_name` (`con_name`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='联系人表'