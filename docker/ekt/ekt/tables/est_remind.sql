CREATE TABLE `est_remind` (
  `rmd_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识ID，系统自动分配，递增',
  `rmd_param_int` int(11) NOT NULL DEFAULT '0' COMMENT '参数1(int型参数)',
  `rmd_param_char` varchar(255) NOT NULL COMMENT '参数2(varchar型参数)',
  `rmd_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型：0默认,自建提醒 1客户相关提醒  2订单相关提醒',
  `rmd_time` datetime NOT NULL COMMENT '提醒时间',
  `user_id` int(11) NOT NULL COMMENT '创建人id',
  `user_name` varchar(30) NOT NULL COMMENT '创建人姓名',
  `rmd_create_time` datetime NOT NULL COMMENT '创建时间',
  `rmd_deal_time` datetime NOT NULL COMMENT '处理时间',
  `rmd_remark` text NOT NULL COMMENT '提醒内容',
  `rmd_sendsms` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否短信提醒  0否  1是',
  `rmd_deal` tinyint(4) NOT NULL DEFAULT '0' COMMENT '提醒的状态0未处理1是已处理',
  `msg_id` int(11) NOT NULL DEFAULT '0' COMMENT '系统信息id',
  `dept_id` int(11) DEFAULT '0' COMMENT '部门ID',
  PRIMARY KEY (`rmd_id`),
  KEY `user_id` (`rmd_deal`,`user_id`),
  KEY `rmd_time` (`rmd_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='提醒'