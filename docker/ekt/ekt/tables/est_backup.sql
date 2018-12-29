CREATE TABLE `est_backup` (
  `backup_id` int(11) NOT NULL AUTO_INCREMENT,
  `backup_datetime` datetime NOT NULL COMMENT '备份创建时间',
  `backup_create_user_id` int(11) NOT NULL COMMENT '创建者id',
  `backup_file_name` varchar(50) NOT NULL DEFAULT '' COMMENT '备份文件名',
  PRIMARY KEY (`backup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='备份表'