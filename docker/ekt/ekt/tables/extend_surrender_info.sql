CREATE TABLE `extend_surrender_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `extend_id` int(11) NOT NULL COMMENT '承保信息id',
  `client_id` int(11) NOT NULL COMMENT '客户id',
  `surrender_time` int(11) NOT NULL COMMENT '退保时间',
  `revocation_conductor` varchar(50) NOT NULL COMMENT '撤销办理人姓名',
  `surrender_remark` varchar(150) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='退保信息表'