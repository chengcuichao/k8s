CREATE TABLE `est_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品id',
  `product_name` varchar(50) NOT NULL DEFAULT '' COMMENT '产品名称',
  `product_num` varchar(20) NOT NULL DEFAULT '' COMMENT '产品编号 可以导入，如果导入空白，自动生成。自动生成的格式为：000001【产品信息】',
  `product_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '产品价格',
  `product_state` int(11) NOT NULL COMMENT '产品状态 0默认 1上架 2下架',
  `product_class_id` int(11) NOT NULL COMMENT '产品分类',
  `product_pic` varchar(50) DEFAULT '' COMMENT '产品图片',
  `product_thum_pic` varchar(50) DEFAULT '' COMMENT '产品缩略图',
  `product_other_pic1` varchar(50) DEFAULT '' COMMENT '其他图片1',
  `product_other_thum_pic1` varchar(50) DEFAULT '' COMMENT '其他图片缩率图1',
  `product_other_pic2` varchar(50) DEFAULT '',
  `product_other_thum_pic2` varchar(50) DEFAULT '',
  `product_other_pic3` varchar(50) DEFAULT '',
  `product_other_thum_pic3` varchar(50) DEFAULT '',
  `product_other_pic4` varchar(50) DEFAULT '',
  `product_other_thum_pic4` varchar(50) DEFAULT '',
  `product_other_pic5` varchar(50) DEFAULT '',
  `product_other_thum_pic5` varchar(50) DEFAULT '',
  `product_other_pic6` varchar(50) DEFAULT '',
  `product_other_thum_pic6` varchar(50) DEFAULT '',
  `product_other_pic7` varchar(50) DEFAULT '',
  `product_other_thum_pic7` varchar(50) DEFAULT '',
  `product_other_pic8` varchar(50) DEFAULT '',
  `product_other_thum_pic8` varchar(50) DEFAULT '',
  `impt_id` int(11) DEFAULT '0' COMMENT '导入批次号',
  `product_1` varchar(50) DEFAULT '' COMMENT '配置字段1',
  `product_2` varchar(50) DEFAULT '' COMMENT '配置字段2',
  `product_3` varchar(50) DEFAULT '' COMMENT '配置字段3',
  `product_4` text,
  `product_5` varchar(50) DEFAULT '' COMMENT '配置字段5',
  `product_6` varchar(50) DEFAULT '' COMMENT '配置字段6',
  `product_7` varchar(50) DEFAULT '' COMMENT '配置字段7',
  `product_8` varchar(50) DEFAULT '' COMMENT '配置字段8',
  `product_9` varchar(50) DEFAULT '' COMMENT '配置字段9',
  `product_10` varchar(50) DEFAULT '' COMMENT '配置字段10',
  `product_11` varchar(50) DEFAULT '' COMMENT '配置字段11',
  `product_12` varchar(50) DEFAULT '' COMMENT '配置字段12',
  `product_3_1` int(11) NOT NULL DEFAULT '0',
  `product_3_2` int(11) NOT NULL DEFAULT '0',
  `product_3_3` int(11) NOT NULL DEFAULT '0',
  `product_1_1` text,
  `product_1_2` text,
  `product_1_3` text,
  PRIMARY KEY (`product_id`),
  KEY `product_num` (`product_num`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='产品表'