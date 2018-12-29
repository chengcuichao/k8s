CREATE TABLE `est_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统自增id',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '列表显示名称',
  `fields` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名称',
  `if_custom` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为配置字段： 0否 1是',
  `custom_poz` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序(配置字段专用)',
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '字段是否可用：0不可用1可用',
  `field_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '字段类型 0客户字段 1联系人字段 2 产品字段 3订单 4客服服务',
  `field_list_width` int(11) NOT NULL DEFAULT '150' COMMENT '字段对应的列表宽度',
  `data_type` int(11) NOT NULL DEFAULT '1' COMMENT '自定义字段文本类型 1文本框 2下拉选择3文本域4级联框5日期框7关联多选框',
  `if_require` int(11) NOT NULL DEFAULT '1' COMMENT '自定义是否必选项 1非必须 2必选',
  `default` varchar(150) NOT NULL DEFAULT '' COMMENT '默认值',
  `jl_series` tinyint(4) NOT NULL DEFAULT '2' COMMENT '级联级数 2两级 3三级',
  `jl_field_type` text NOT NULL COMMENT '最后一级文本类型 0下拉框 1输入框',
  `datefmt` varchar(30) NOT NULL  DEFAULT '' COMMENT '日期格式',
  PRIMARY KEY (`id`),
  KEY `field_type` (`field_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='字段表（自定义字段、常规字段）'