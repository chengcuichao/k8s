CREATE TABLE `est_lost_cdr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caller` varchar(64) NOT NULL DEFAULT '' COMMENT '主叫',
  `server_num` varchar(64) NOT NULL DEFAULT '' COMMENT '接入号',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `start_date` date DEFAULT NULL,
  `que_id` int(11) NOT NULL DEFAULT '0',
  `reason` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1ivr超限 2未启用 3过期 4余额不足 5不在接通时间内 6未设置日程 7企业不存在 8黑名单 101IVR挂机 102留言 103未接通 104未接通留言',
  `call_id` varchar(32) NOT NULL DEFAULT '0',
  `cle_id` int(11) DEFAULT '0',
  `cle_name` varchar(50) NOT NULL DEFAULT '' COMMENT '客户名\r\n\r\n称',
  `user_id` int(11) DEFAULT '0' COMMENT '数据所有人id',
  `dept_id` int(11) DEFAULT '0',
  `state` tinyint(1) DEFAULT '0' COMMENT '是否处理 0未处理，1已处理',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caller` (`caller`),
  KEY `dept_id` (`dept_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='未接来电'