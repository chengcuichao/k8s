CREATE TABLE `est_quality_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '项目名称',
  `is_active` tinyint(1) NOT NULL COMMENT '是否启用 0暂停 1启用',
  `description` text CHARACTER SET utf8 NOT NULL COMMENT '项目描述',
  `unimportant_count` int(2) NOT NULL COMMENT '不合格标准中的 非关键项个数',
  `create_datetime` datetime NOT NULL COMMENT '创建时间',
  `create_user_id` int(11) NOT NULL COMMENT '创建人员',
  `update_datetime` datetime NOT NULL COMMENT '更新时间',
  `update_user_id` int(11) NOT NULL COMMENT '更新人',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识 0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `est_quality_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '考核项名称',
  `kp_desc` text COMMENT '考评要点',
  `sf_desc` text COMMENT '示范标准',
  `kf_desc` text COMMENT '扣分示范',
  `comment` text COMMENT '备注',
  `is_active` int(1) NOT NULL DEFAULT '1' COMMENT '是否启用 0未启用 1启用',
  `is_important` int(1) NOT NULL DEFAULT '0' COMMENT '是否为关键项 0不是 1是',
  `is_delete` int(1) NOT NULL DEFAULT '0' COMMENT '删除标识 0未删除 1已删除',
  `create_datetime` datetime NOT NULL COMMENT '创建时间',
  `create_user_id` int(11) NOT NULL COMMENT '创建人员',
  `quality_category_id` int(11) NOT NULL,
  `update_datetime` datetime NOT NULL,
  `update_user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_important` (`id`,`is_important`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `est_quality_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `call_id` varchar(32) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `quality_category_id` int(11) NOT NULL DEFAULT '0' COMMENT '项目ID',
  `final_result` int(1) NOT NULL DEFAULT '-1' COMMENT '-1 是默认值 0表示未通过 1表示通过',
  `created_time` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_time` datetime DEFAULT NULL,
  `update_user_id` int(11) DEFAULT '0' COMMENT '更新人',
  `call_type` tinyint(3) unsigned NOT NULL COMMENT '通话类型 1呼出 2呼入 呼出转接 呼入转接 呼出拦截 呼入拦截 (被)咨询 (被)三方 监听 强插  11转内线 12转外线 13内部呼叫',
  `start_time` int(11) NOT NULL COMMENT '呼叫时间',
  `conn_secs` int(10) unsigned NOT NULL COMMENT '通话时长',
  `queue_id` int(11) NOT NULL DEFAULT '0' COMMENT '接通组ID',
  `problem` text COMMENT '问题',
  `suggest` text COMMENT '建议',
  `finish_time` datetime DEFAULT NULL COMMENT '完成时间',
  `qualitycheck_user_id` int(11) DEFAULT '1' COMMENT '质检人员ID',
  `cus_phone` varchar(20) NOT NULL COMMENT '客户电话',
  `evaluate` tinyint(4) NOT NULL DEFAULT '-1' COMMENT '-1未转评价 -2超时未评价 -3未评价挂机 >0为评价结果',
  `record_id` int(10) NOT NULL COMMENT 'cdr_id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_id` (`record_id`) USING BTREE,
  UNIQUE KEY `id_result` (`id`,`final_result`) USING BTREE,
  KEY `idx_category` (`quality_category_id`) USING BTREE,
  KEY `idx_finish_time` (`finish_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

ALTER TABLE `est_quality_task` ADD COLUMN `is_solve`  tinyint(4) NOT NULL COMMENT '是否已解决' AFTER `suggest`;
ALTER TABLE `est_quality_task` ADD COLUMN `quality_problem`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题分析' AFTER `is_solve`;


CREATE TABLE `est_quality_task_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quality_task_id` int(11) NOT NULL DEFAULT '0',
  `is_important` int(1) NOT NULL DEFAULT '0' COMMENT '是否为关键项 0不是 1是',
  `quality_item_id` int(11) NOT NULL,
  `result` int(1) NOT NULL DEFAULT '0' COMMENT '1=>YES,0=>NO',
  PRIMARY KEY (`id`),
  KEY `task_important_item_result` (`quality_task_id`,`is_important`,`quality_item_id`,`result`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

CREATE TABLE `est_quality_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quality_category_id` int(11) NOT NULL COMMENT '质检项目id',
  `user_id` int(11) NOT NULL COMMENT '坐席id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`quality_category_id`,`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE  VIEW `COUNT_VIEW_BASE` AS select `a`.`quality_task_id` AS `quality_task_id`,`b`.`is_important` AS `is_important`,count(`a`.`result`) AS `result_count` from (`est_quality_task_item` `a` left join `est_quality_item` `b` on((`b`.`id` = `a`.`quality_item_id`))) where (`a`.`result` = 0) group by `a`.`quality_task_id`,`b`.`is_important`,`a`.`result` ;

CREATE VIEW `COUNT_VIEW` AS select `t_c`.`quality_task_id` AS `quality_task_id`,group_concat(concat(`t_c`.`is_important`,'-',`t_c`.`result_count`) separator ',') AS `important_count` from `COUNT_VIEW_BASE` `t_c` group by `t_c`.`quality_task_id` ;

CREATE  VIEW `INFO_VIEW` AS select `a`.`quality_task_id` AS `quality_task_id`,group_concat(concat(`a`.`is_important`,'-',`a`.`quality_item_id`,'-',`a`.`result`) separator ',') AS `info` from `est_quality_task_item` `a` group by `a`.`quality_task_id` ;

CREATE VIEW `sampleDetail` AS select `t_c`.`id` AS `id`,`t_c`.`finish_time` AS `finish_time`,`t_c`.`qualitycheck_user_id` AS `qualitycheck_user_id`,`t_c`.`quality_category_id` AS `quality_category_id`,`t_c`.`user_id` AS `user_id`,`t_c`.`queue_id` AS `queue_id`,`t_c`.`final_result` AS `final_result`,`t_c`.`created_time` AS `created_time`,`t_c`.`cus_phone` AS `cus_phone`,`t_c`.`start_time` AS `start_time`,`t_c`.`conn_secs` AS `conn_secs`,`t_c`.`call_type` AS `call_type`,`t_c`.`problem` AS `problem`,`t_c`.`suggest` AS `suggest`,`t_c`.`is_solve` AS `is_solve`,`t_c`.`quality_problem` AS `quality_problem`,`t_c`.`evaluate` AS `evaluate`,`temp_t_a`.`info` AS `info` from (`est_quality_task` `t_c` left join `INFO_VIEW` `temp_t_a` on((`t_c`.`id` = `temp_t_a`.`quality_task_id`))) where exists(select `est_quality_category`.`id` from `est_quality_category` where ((`t_c`.`quality_category_id` = `est_quality_category`.`id`) and (`est_quality_category`.`is_active` = 1) and (`est_quality_category`.`is_delete` = 0))) ;