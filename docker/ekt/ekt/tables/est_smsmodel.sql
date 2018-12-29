CREATE TABLE `est_smsmodel` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板id，主键，自增',
  `theme` varchar(50) NOT NULL COMMENT '模板主题',
  `content` text NOT NULL COMMENT '信息内容/模板内容',
  `create_time` varchar(20) NOT NULL COMMENT '创建时间',
  `create_id` int(11) NOT NULL COMMENT '模板创建人id',
  `create_name` varchar(20) NOT NULL COMMENT '模板创建人姓名',
  `update_time` varchar(20) NOT NULL COMMENT '修改时间',
  `update_id` int(11) NOT NULL COMMENT '修改人id',
  `update_name` varchar(20) NOT NULL COMMENT '更新坐席name',
  PRIMARY KEY (`mod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='短信模板'