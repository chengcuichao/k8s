CREATE TABLE `est_product_class` (
  `p_c_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_c_pid` int(11) NOT NULL COMMENT '父id',
  `p_c_name` varchar(30) NOT NULL DEFAULT '' COMMENT '分类名称',
  `p_c_pname` varchar(200) NOT NULL DEFAULT '' COMMENT '产品分类名字串',
  `p_c_deep` int(11) NOT NULL COMMENT '深度',
  PRIMARY KEY (`p_c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='产品分类表'