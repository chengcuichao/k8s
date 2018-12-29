CREATE TABLE `est_tab_config` (
`id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '表主键id',
`pagename` varchar(50) DEFAULT NULL COMMENT '页面名称',
`pageurl` varchar(255) DEFAULT NULL COMMENT '页面地址',
`pagelocation` tinyint(3) unsigned DEFAULT NULL COMMENT '页面位置：1.客户信息 2.业务记录',
`editable` tinyint(1) unsigned DEFAULT '1' COMMENT '是否可编辑：0.不可编辑 1.可编辑',
`pagetype` tinyint(1) unsigned DEFAULT '2' COMMENT '页面类型：1.系统页面 2.自定义页面',
`sort` tinyint(3) unsigned DEFAULT NULL COMMENT '排序',
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;