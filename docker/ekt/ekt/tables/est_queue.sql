CREATE TABLE `est_queue` (
  `que_id` int(11) NOT NULL,
  `que_name` varchar(64) NOT NULL DEFAULT '',
  `que_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0呼入呼出 1呼入 2呼出',
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8