CREATE TABLE `est_flow_nodes` (
  `node_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '节点id',
  `flow_id` int(11) NOT NULL COMMENT '流程id',
  `node_name` varchar(50) NOT NULL DEFAULT '' COMMENT '节点名称',
  `node_use_time` int(11) NOT NULL COMMENT '预计耗时(时为单位)',
  `form_id` int(11) NOT NULL COMMENT '操作表单id',
  `participant_type` int(11) NOT NULL DEFAULT '1' COMMENT '参与人类型 1员工2部门3角色',
  `node_participant` varchar(200) NOT NULL DEFAULT '' COMMENT '参与人',
  `action` text NOT NULL COMMENT '动作',
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='流程节点表'