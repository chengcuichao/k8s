CREATE TABLE `est_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) NOT NULL DEFAULT '' COMMENT '角色名称',
  `role_action_list` text NOT NULL,
  `role_type` int(1) NOT NULL DEFAULT '0' COMMENT '角色类型',
  `role_grade` int(11) NOT NULL DEFAULT '3' COMMENT '权限等级 1超级 2管理级 3个人级',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='角色'