CREATE TABLE `extend_repair_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `extend_id` int(11) NOT NULL COMMENT '承保信息id',
  `client_id` int(11) NOT NULL COMMENT '客户id',
  `claims_casenumber` varchar(20) NOT NULL COMMENT '案件编号',
  `claims_repair_faults` varchar(100) NOT NULL COMMENT '顾客报修故障',
  `repair_time` date NOT NULL COMMENT '顾客报修时间',
  `repair_ordernum` varchar(50) NOT NULL COMMENT '维修订单号',
  `repair_company` varchar(50) NOT NULL COMMENT '家电维修商',
  `claims_troubleshooting` varchar(150) NOT NULL COMMENT '故障诊断',
  `repair_ways` varchar(255) NOT NULL COMMENT '维修方案',
  `if_replacement` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否换机（0不是1是）',
  `replacement_type` varchar(50) NOT NULL COMMENT '换机新类型',
  `total_fee` float NOT NULL COMMENT '费用总计',
  `claims_totalfee` float NOT NULL COMMENT '理赔费用总计',
  `claims_remark` varchar(150) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理赔信息表'