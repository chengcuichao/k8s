CREATE TABLE `est_sms` (
  `sms_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '短信id',
  `user_id` int(11) NOT NULL COMMENT '发件人id(坐席id)',
  `dept_id` int(11) DEFAULT '0',
  `user_name` varchar(30) NOT NULL COMMENT '发件人姓名(坐席姓名)',
  `receiver_phone` varchar(15) NOT NULL COMMENT '接收短信的号码',
  `sms_send_time` varchar(20) NOT NULL COMMENT '发送时间',
  `sms_contents` text NOT NULL COMMENT '短信内容',
  `sms_result` tinyint(4) NOT NULL DEFAULT '0' COMMENT '结果代码  默认是0，成功1，失败2',
  `sms_fail_reason` varchar(100) NOT NULL DEFAULT '' COMMENT '失败原因',
  `sms_receipt` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否显示回执  0否 1是',
  `sms_insert_time` int(11) NOT NULL COMMENT '短信存入数据库的时间',
  `if_updated` tinyint(1) NOT NULL COMMENT '是否已更新结果（0未更新、1已更新）',
  PRIMARY KEY (`sms_id`),
  KEY `send_time_int` (`sms_send_time`,`sms_result`),
  KEY `dept_id` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='短信记录表'