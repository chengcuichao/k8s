CREATE TABLE `est_oper_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) NOT NULL DEFAULT '',
  `dept_id` int(11) NOT NULL,
  `operation` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `oper_time` int(11) NOT NULL,
  `oper_date` datetime NOT NULL,
  `user_name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志操作表'