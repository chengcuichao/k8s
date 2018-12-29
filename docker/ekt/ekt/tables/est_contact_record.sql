CREATE TABLE `est_contact_record` (
  `con_rec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '联系记录ID，自增，主键',
  `con_rec_content` text NOT NULL COMMENT '联系内容',
  `con_rec_next_time` date NOT NULL COMMENT '下次联系时间',
  `callid` varchar(32) NOT NULL DEFAULT '0' COMMENT '录音ID',
  `cle_id` int(11) NOT NULL DEFAULT '0' COMMENT '客户ID',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建人ID',
  `conn_secs` int(11) NOT NULL DEFAULT '0' COMMENT '通话时长',
  `call_type` int(11) NOT NULL DEFAULT '0' COMMENT '通话类型',
  `con_rec_time` datetime NOT NULL COMMENT '联系时间(创建时间)',
  `order_id` int(11) DEFAULT '0' COMMENT '订单ID',
  PRIMARY KEY (`con_rec_id`),
  KEY `callid` (`callid`),
  KEY `cle_id` (`cle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='联系记录';

ALTER TABLE est_contact_record
ADD dept_id int(11) not null default '1' COMMENT '处理人所属部门',
ADD cle_info_source varchar(20) NOT NULL DEFAULT '' COMMENT '信息来源（数据字典配置）',
ADD cle_stage varchar(20) NOT NULL DEFAULT '' COMMENT '客户阶段（数据字典配置）';
alter table est_contact_record MODIFY COLUMN con_rec_next_time datetime NOT NULL COMMENT '下次联系时间';
DROP TRIGGER IF EXISTS `insert_update_client`;
DROP TRIGGER IF EXISTS `update_update_client`;