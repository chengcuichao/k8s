CREATE TABLE `est_flow` (
  `flow_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流程id',
  `flow_name` varchar(100) NOT NULL DEFAULT '' COMMENT '流程名称',
  `flow_description` varchar(250) NOT NULL DEFAULT '' COMMENT '流程说明',
  `flow_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '流程状态 0未启用1启用2过期3禁用',
  `valid_from` datetime NOT NULL COMMENT '有效开始时间',
  `valid_to` datetime NOT NULL COMMENT '有效结束时间',
  `create_user_id` int(11) NOT NULL COMMENT '创建人id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_user_id` int(11) NOT NULL COMMENT '修改人id',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`flow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='流程表'