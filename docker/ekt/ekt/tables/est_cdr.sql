CREATE TABLE `est_cdr` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cle_id` int(11) NOT NULL DEFAULT '0' COMMENT '客户ID',
  `cle_name` varchar(50) NOT NULL COMMENT '客户名称',
  `pro_id` int(10) unsigned NOT NULL COMMENT '项目ID',
  `task_id` int(10) unsigned NOT NULL COMMENT '任务ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '坐席ID',
  `dept_id` int(11) DEFAULT '0',
  `call_id` varchar(32) NOT NULL COMMENT '通话ID',
  `call_type` tinyint(3) unsigned NOT NULL COMMENT '通话类型',
  `ag_phone` varchar(20) NOT NULL COMMENT '坐席电话',
  `cus_phone` varchar(20) NOT NULL COMMENT '客户电话',
  `start_time` int(10) unsigned NOT NULL COMMENT '呼叫时间',
  `start_date` date NOT NULL COMMENT '呼叫日期',
  `conn_secs` int(10) unsigned NOT NULL COMMENT '通话时长',
  `result` int(11) NOT NULL COMMENT '呼叫结果  0接通 1自动外呼呼损 2未接通',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否已处理（0未处理1已处理）',
  `endresult` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1振铃放弃 2未接 11用户挂机 12坐席挂断 13转接 14拦截',
  PRIMARY KEY (`id`),
  KEY `pro_id` (`pro_id`),
  KEY `cle_id` (`cle_id`),
  KEY `state` (`state`) USING BTREE,
  KEY `dept_id` (`dept_id`),
  KEY `call_id` (`call_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='业务通话表';
ALTER TABLE `est_cdr` add column(
  `queue_id` int(11) DEFAULT 0 NOT NULL COMMENT '技能组id',
  `evaluate` tinyint(4) DEFAULT 0 NOT  NULL COMMENT '-1未转评价 -2超时未评价 -3未评价挂机 >0为评价结果',
  `conn_time` int(11) DEFAULT 0 NOT NULL COMMENT '接通时间',
  `end_time` int(11) DEFAULT 0 NOT  NULL COMMENT '结束时间',
  `ring_secs` int(11) DEFAULT 0 NOT NULL COMMENT '振铃时长',
  `all_secs` int(11) DEFAULT 0 NOT NULL COMMENT '总时长'
);