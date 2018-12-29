CREATE TABLE `est_form` (
  `form_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表单id',
  `form_name` varchar(150) NOT NULL DEFAULT '' COMMENT '表单名称',
  `form_gobal_html` text NOT NULL COMMENT '原始html',
  `form_html` text NOT NULL COMMENT '表单html',
  `create_user_id` int(11) NOT NULL COMMENT '创建人id',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_user_id` int(11) NOT NULL COMMENT '最后修改人id',
  `update_time` int(11) NOT NULL COMMENT '最后修改时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标记：0，未删除；1已删除，',
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='表单表'