CREATE TABLE `est_client_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `log_time` datetime NOT NULL COMMENT '插入时间',
  `user_name` varchar(20) NOT NULL COMMENT '姓名',
  `user_ip` varchar(20) NOT NULL COMMENT 'ip',
  `cle_id` int(11) NOT NULL DEFAULT '0' COMMENT '客户ID',
  `contents` text NOT NULL COMMENT '操作内容',
  PRIMARY KEY (`id`),
  KEY `cle_id` (`cle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='客户日志表'