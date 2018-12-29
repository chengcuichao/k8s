CREATE TABLE `est_work_flow` (
  `flow_id` int(11) NOT NULL COMMENT '流程id',
  `flow_info_id` int(11) NOT NULL COMMENT '流程记录id',
  `flow_number` varchar(50) NOT NULL DEFAULT '' COMMENT '流程编号',
  `create_user_id` int(11) NOT NULL COMMENT '工单创建人id',
  `flow_create_time` int(11) NOT NULL COMMENT '流程创建时间',
  `flow_status` int(11) NOT NULL COMMENT '工单状态（0未开始1运行中2已完成3已结束4已删除）',
  `flow_json` text NOT NULL COMMENT '工单表单字段信息json结构',
  `create_time` datetime NOT NULL COMMENT '整理插入时间',
  PRIMARY KEY (`flow_id`,`flow_info_id`),
  KEY `flow_create_time` (`flow_create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工单数据整理表'