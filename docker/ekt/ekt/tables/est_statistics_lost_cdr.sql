CREATE TABLE `est_statistics_lost_cdr` (
  `lost_date` date NOT NULL COMMENT '日期',
  `missed_num` int(11) NOT NULL DEFAULT '0' COMMENT '未接来电数',
  `fen_num` int(11) NOT NULL DEFAULT '0' COMMENT '已分配数',
  `deal_num` int(11) NOT NULL DEFAULT '0' COMMENT '已处理数',
  PRIMARY KEY (`lost_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='未接来电统计表'