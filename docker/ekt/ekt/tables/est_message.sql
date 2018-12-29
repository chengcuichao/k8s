CREATE TABLE `est_message` (
  `msg_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '系统自增ID',
  `msg_send_user_id` int(10) DEFAULT '0' COMMENT '发送者ID',
  `msg_send_user_name` varchar(50) DEFAULT '' COMMENT '发送人姓名',
  `msg_receive_user_id` int(10) DEFAULT '0' COMMENT '接收人ID',
  `msg_receive_user_name` varchar(50) DEFAULT '' COMMENT '接收人姓名',
  `msg_content` text COMMENT '消息内容',
  `msg_content_text` text,
  `msg_insert_time` datetime DEFAULT NULL COMMENT '发送时间',
  `msg_show_time` int(10) DEFAULT '0' COMMENT '系统时间',
  `msg_if_readed` tinyint(1) DEFAULT '0' COMMENT '是否已读 0：未读   1：已读',
  PRIMARY KEY (`msg_id`),
  KEY `sys_time` (`msg_show_time`),
  KEY `if_read` (`msg_if_readed`,`msg_receive_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='消息'