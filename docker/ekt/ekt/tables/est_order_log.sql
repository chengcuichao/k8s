CREATE TABLE `est_order_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单日志ID',
  `log_time` datetime NOT NULL,
  `user_ip` varchar(20) NOT NULL COMMENT '操作ID',
  `user_name` varchar(20) NOT NULL COMMENT '坐席姓名',
  `order_id` int(11) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `contents` text NOT NULL COMMENT '日志',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单日志'