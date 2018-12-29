CREATE TABLE `est_address_book` (
  `tx_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '通讯录ID，主键，自增',
  `tx_name` varchar(20) NOT NULL COMMENT '名称',
  `q_pingyin` varchar(20) NOT NULL COMMENT '全拼',
  `b_pingyin` varchar(20) NOT NULL COMMENT '简拼',
  `tx_phone1` varchar(20) NOT NULL COMMENT '电话1',
  `tx_phone2` varchar(20) NOT NULL COMMENT '电话2',
  `tx_remark` text NOT NULL COMMENT '通讯录备注',
  `tx_executor` int(11) NOT NULL DEFAULT '0' COMMENT '所属人   -1公司信息   其他：个人信息',
  PRIMARY KEY (`tx_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通讯录'