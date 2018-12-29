CREATE TABLE `est_phone_location` (
  `num` int(11) NOT NULL COMMENT '段号',
  `code` varchar(10) DEFAULT '' COMMENT '区号',
  `city` varchar(50) DEFAULT '' COMMENT '城市',
  `cardtype` varchar(50) DEFAULT '',
  PRIMARY KEY (`num`),
  KEY `pl_code` (`code`),
  KEY `pl_city` (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8