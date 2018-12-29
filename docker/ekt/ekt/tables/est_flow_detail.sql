CREATE TABLE `est_flow_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flow_id` int(11) NOT NULL COMMENT '流程id',
  `cle_id` int(11) NOT NULL COMMENT '客户id',
  `flow_number` varchar(30) NOT NULL DEFAULT '' COMMENT '流程编码',
  `flow_info_id` int(11) NOT NULL COMMENT '流程记录id',
  `node_id` int(11) NOT NULL COMMENT '节点id',
  `node_status` int(11) NOT NULL DEFAULT '0' COMMENT '节点处理状态 0未处理1进行中2正常完成3退回4超时完成',
  `form_info_id` int(11) NOT NULL DEFAULT '0' COMMENT '表单记录表id',
  `node_start_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `node_end_time` int(11) NOT NULL DEFAULT '0' COMMENT '完成时间',
  `node_over_time` int(11) NOT NULL DEFAULT '0' COMMENT '超时时间',
  `reason` varchar(200) NOT NULL DEFAULT '' COMMENT '原因',
  `back_reason` varchar(200) NOT NULL DEFAULT '' COMMENT '退回原因',
  `deal_user_id` int(11) NOT NULL COMMENT '处理人id',
  `dept_id` int(11) NOT NULL COMMENT '部门id',
  PRIMARY KEY (`id`),
  KEY `flow_id` (`flow_id`,`flow_info_id`,`node_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='流程节点详细记录表'