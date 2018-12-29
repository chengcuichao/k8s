CREATE TABLE `est_client_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cle_stage` varchar(20) NOT NULL DEFAULT '' COMMENT '客户阶段',
  `cle_type` int(11) NOT NULL DEFAULT '1' COMMENT '客户类型 1初始 2跟进 3终结',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='各阶段客户类型表'