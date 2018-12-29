CREATE TABLE `est_knowledge_class` (
  `k_class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '知识库id 主键',
  `k_class_pid` int(11) NOT NULL COMMENT '父id',
  `k_class_name` varchar(20) NOT NULL COMMENT '知识库名称',
  `k_class_deep` int(11) NOT NULL COMMENT '深度',
  `k_class_name_link` varchar(200) NOT NULL COMMENT '链接',
  `k_class_sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序（同级节点之间排序）',
  PRIMARY KEY (`k_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='知识库分类表'