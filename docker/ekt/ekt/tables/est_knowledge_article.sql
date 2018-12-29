CREATE TABLE `est_knowledge_article` (
  `k_art_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章id 主键',
  `user_name` varchar(10) NOT NULL COMMENT '创建人',
  `k_art_create_date` datetime NOT NULL COMMENT '创建时间',
  `k_art_content` text NOT NULL COMMENT '文章内容',
  `k_art_title` varchar(30) NOT NULL COMMENT '标题',
  `k_art_click_rate` int(11) NOT NULL DEFAULT '0' COMMENT '点击率',
  `k_art_update_user` varchar(10) NOT NULL COMMENT '修改人',
  `k_art_update_date` datetime NOT NULL COMMENT '修改时间',
  `k_class_id` int(11) NOT NULL COMMENT '文章分类',
  `k_art_hot` tinyint(4) NOT NULL COMMENT '热点 1是 0否',
  PRIMARY KEY (`k_art_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='知识库文章表'