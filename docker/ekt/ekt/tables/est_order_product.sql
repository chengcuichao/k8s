CREATE TABLE `est_order_product` (
  `op_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `product_num` varchar(20) NOT NULL DEFAULT '' COMMENT '产品编号',
  `product_name` varchar(50) DEFAULT NULL COMMENT '产品名称',
  `product_number` int(11) NOT NULL COMMENT '数量',
  `product_discount` decimal(10,2) NOT NULL DEFAULT '1.00' COMMENT '折扣',
  `product_thum_pic` varchar(150) DEFAULT '' COMMENT '订单产品缩略图',
  `product_class` varchar(200) DEFAULT '' COMMENT '产品分类',
  `product_price` decimal(10,2) NOT NULL COMMENT '产品单价',
  PRIMARY KEY (`op_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='订单产品表'