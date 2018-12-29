CREATE TABLE `est_fields_jl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fields_id` int(11) NOT NULL COMMENT '自定义字段id',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型 1第一级 2第二级 3第三级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='自定义字段 - 级联表'