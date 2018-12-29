CREATE TABLE `est_sample_index` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sample_id` int(11) NOT NULL COMMENT '答案id',
  `survey_id` int(11) NOT NULL COMMENT '问卷id',
  `task_id` int(11) DEFAULT NULL,
  `answer` longtext COMMENT '答案',
  `sample_update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_surver_id` (`survey_id`),
  KEY `idx_sample_id` (`sample_id`),
  KEY `idx_task_id` (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷导出数据';