CREATE TABLE `extend_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `client_id` int(11) NOT NULL COMMENT '客户id',
  `unique_key` varchar(50) NOT NULL COMMENT '延保唯一识别码',
  `extend_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '延保类型（0整机1顺延2意外）',
  `extend_product` varchar(100) NOT NULL COMMENT '延保产品名称',
  `extend_buytime` date NOT NULL COMMENT '延保产品购买日期',
  `extend_companyname` varchar(100) NOT NULL COMMENT '延保经销商企业名称',
  `extend_name` varchar(100) NOT NULL COMMENT '延保经销商名称',
  `repair_limits` float NOT NULL COMMENT '维修上限',
  `extend_assurancefee` float NOT NULL COMMENT '延保保险费',
  `extend_sellfee` float NOT NULL COMMENT '延保销售金额',
  `whole_warrantytime` int(11) NOT NULL COMMENT '整机厂保保修期',
  `parts_warrantytime` int(11) unsigned NOT NULL COMMENT '主要零部件厂保保修期',
  `accident_warrantytime` int(11) NOT NULL COMMENT '意外保障期',
  `lengthen_warrantytime` int(11) NOT NULL COMMENT '延保保障期',
  `appliances_type` varchar(50) NOT NULL COMMENT '家电产品品类',
  `appliances_brand` varchar(50) NOT NULL COMMENT '家电产品品牌',
  `appliances_colortype` varchar(100) NOT NULL COMMENT '家电产品类型及颜色',
  `appliances_bodykey` varchar(50) NOT NULL COMMENT '机身序列号',
  `appliances_selltime` date NOT NULL COMMENT '家电销售日期',
  `appliances_invoicefee` float NOT NULL COMMENT '家电发票金额',
  `remark` varchar(50) NOT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='承保信息'