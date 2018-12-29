CREATE TABLE `ec_logs` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_num` varchar(50) NOT NULL,
  `action` tinyint(1) NOT NULL COMMENT '操作类型（1-login 2-logout 3-add 4-update 5-delete）',
  `content` varchar(200) NOT NULL COMMENT '操作内容',
  `acttime` int(10) NOT NULL COMMENT '操作时间',
  `actip` varchar(15) NOT NULL COMMENT '操作IP',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统操作日志表'