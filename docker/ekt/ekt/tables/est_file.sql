CREATE TABLE `est_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_old_name` varchar(50) NOT NULL DEFAULT '' COMMENT '文件原名',
  `file_new_name` varchar(50) NOT NULL DEFAULT '' COMMENT '文件名称',
  `file_upload_time` datetime NOT NULL COMMENT '上传时间',
  `file_upload_user_id` int(11) NOT NULL COMMENT '上传员工id',
  `file_upload_dept_id` int(11) NOT NULL COMMENT '上传员工部门id',
  `file_size` varchar(20) NOT NULL COMMENT '文件大小',
  `cle_id` int(11) DEFAULT NULL COMMENT '客户ID',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='客户相关文件表'