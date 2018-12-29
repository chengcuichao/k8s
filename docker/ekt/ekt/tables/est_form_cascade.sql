CREATE TABLE `est_form_cascade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL COMMENT '父id',
  `name` varchar(150) NOT NULL DEFAULT '' COMMENT '选项名称',
  `deep` int(11) NOT NULL COMMENT '第几级(1、2、3)',
  `field` varchar(100) NOT NULL DEFAULT '' COMMENT '字段名',
  `form_id` int(11) NOT NULL COMMENT '表单id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='表单级联自定义选项表'