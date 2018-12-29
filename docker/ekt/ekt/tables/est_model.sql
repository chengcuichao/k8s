CREATE TABLE `est_model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `model_name` varchar(20) NOT NULL COMMENT '模板名称',
  `model_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型 0默认  1客户导入，2客户导出，3产品导入，4产品导出',
  `model_detail` text NOT NULL COMMENT '模板详细字段信息',
  `model_creat_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建人',
  `model_creat_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='导入/导出模板'