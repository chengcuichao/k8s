CREATE TABLE `extend_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `client_name` varchar(50) NOT NULL COMMENT '客户姓名',
  `call_num1` varchar(20) NOT NULL COMMENT '客户电话1',
  `call_num2` varchar(20) DEFAULT NULL COMMENT '客户电话2',
  `address` varchar(150) NOT NULL COMMENT '详细地址',
  `city` varchar(20) NOT NULL COMMENT '所属城市',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='延保客户信息'