CREATE TABLE `est_department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_pid` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `dept_name` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  `dept_deep` tinyint(1) NOT NULL DEFAULT '0' COMMENT '深度',
  PRIMARY KEY (`dept_id`),
  KEY `dept_pid` (`dept_pid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='部门'