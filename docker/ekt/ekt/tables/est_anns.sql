CREATE TABLE `est_anns` (
  `anns_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统标识id，主键',
  `anns_title` varchar(255) NOT NULL COMMENT '标题',
  `anns_content` text NOT NULL COMMENT '内容',
  `creat_time` datetime NOT NULL COMMENT '创建时间',
  `dept_id` int(11) NOT NULL DEFAULT '0' COMMENT '所属部门',
  `dept_name` varchar(30) NOT NULL COMMENT '部门名称',
  `create_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建坐席ID',
  `create_user_name` varchar(40) NOT NULL COMMENT '创建人名称',
  PRIMARY KEY (`anns_id`),
  KEY `dept_id` (`dept_id`),
  KEY `create_user_id` (`create_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='公告'