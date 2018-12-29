CREATE TABLE `est_client` (
  `cle_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '客户ID，主键，自增【客户信息】',
  `cle_name` varchar(50) NOT NULL DEFAULT '' COMMENT '客户姓名【客户信息】',
  `cle_pingyin` varchar(50) NOT NULL DEFAULT '' COMMENT '客户名称拼音【客户信息】',
  `cle_dial_number` int(11) NOT NULL DEFAULT '0' COMMENT '通话次数（拨打次数）',
  `cle_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '客户电话【客户信息】',
  `cle_phone2` varchar(20) NOT NULL DEFAULT '' COMMENT '办公电话',
  `cle_phone3` varchar(20) NOT NULL DEFAULT '' COMMENT '其他电话',
  `cle_address` varchar(100) NOT NULL DEFAULT '' COMMENT '详细地址【客户信息】',
  `cle_info_source` varchar(20) NOT NULL DEFAULT '' COMMENT '信息来源【客户信息】',
  `cle_stage` varchar(20) NOT NULL DEFAULT '' COMMENT '客户阶段（数据字典配置）【客户信息】',
  `cle_last_stage` varchar(255) NOT NULL DEFAULT '' COMMENT '上一次的客户阶段',
  `cle_stage_change_time` date NOT NULL COMMENT '客户阶段改变时间',
  `cle_recede` tinyint(4) NOT NULL DEFAULT '0' COMMENT '退阶标记：1退阶；当阶段后退时变为1，前进时为0',
  `cle_if_increment` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为新增量：0否，1是',
  `cle_stat` varchar(20) NOT NULL COMMENT '客户状态：未拨打、有效、无效、未呼通、号码错误【客户信息】',
  `cle_remark` text COMMENT '备注【客户信息】',
  `cle_1` text NOT NULL,
  `cle_2` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段2【客户信息】',
  `cle_3` text NOT NULL,
  `cle_4` text NOT NULL,
  `cle_5` text NOT NULL,
  `cle_6` text NOT NULL,
  `cle_7` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段7【客户信息】',
  `cle_8` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段8【客户信息】',
  `cle_9` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段9【客户信息】',
  `cle_10` varchar(50) NOT NULL COMMENT '配置字段10【客户信息】',
  `cle_11` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段11【客户信息】',
  `cle_12` varchar(50) NOT NULL DEFAULT '' COMMENT '配置字段12【客户信息】',
  `cle_first_connecttime` date NOT NULL COMMENT '首次联系时间',
  `cle_last_connecttime` date NOT NULL COMMENT '最近一次联系时间',
  `con_rec_next_time` date NOT NULL COMMENT '下次联系时间',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '数据所属人',
  `last_user_id` varchar(255) NOT NULL DEFAULT '0' COMMENT '上一个数据所属人',
  `dployment_num` int(11) NOT NULL DEFAULT '0' COMMENT '数据调配次数',
  `dept_id` int(11) NOT NULL DEFAULT '1' COMMENT '数据所属部门',
  `cle_executor_time` datetime NOT NULL COMMENT '分配或占有时间',
  `cle_creat_time` date NOT NULL COMMENT '创建时间',
  `cle_creat_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `cle_update_time` date NOT NULL COMMENT '更新时间',
  `cle_update_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '更新人id',
  `impt_id` int(11) NOT NULL DEFAULT '0' COMMENT '导入批次号',
  `cle_province_id` int(11) NOT NULL COMMENT '省id',
  `cle_province_name` varchar(20) NOT NULL DEFAULT '' COMMENT '省 ',
  `cle_city_id` int(11) NOT NULL COMMENT '市id',
  `cle_city_name` varchar(20) NOT NULL DEFAULT '' COMMENT '市',
  `cle_public_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据类型 0有所属人 1放弃 2收回 3新导入无所属人',
  `cle_1_1` text NOT NULL,
  `cle_1_2` text NOT NULL,
  `cle_1_3` text NOT NULL,
  `cle_8_1` text NOT NULL,
  `cle_8_2` text NOT NULL,
  `cle_8_3` text NOT NULL,
  `cle_13` text,
  `cle_14` text,
  `cle_15` varchar(50) NOT NULL DEFAULT '',
  `cle_16` varchar(50) NOT NULL DEFAULT '',
  `cle_17` varchar(50) NOT NULL DEFAULT '',
  `cle_18` varchar(50) NOT NULL DEFAULT '',
  `cle_19` varchar(50) NOT NULL DEFAULT '',
  `cle_20` varchar(50) NOT NULL DEFAULT '',
  `cle_21` varchar(50) NOT NULL DEFAULT '',
  `cle_22` varchar(50) NOT NULL DEFAULT '',
  `cle_23` varchar(50) NOT NULL DEFAULT '',
  `cle_24` varchar(50) NOT NULL DEFAULT '',
  `cle_25` varchar(50) NOT NULL DEFAULT '',
  `cle_26` varchar(50) NOT NULL DEFAULT '',
  `cle_5_1` text,
  `cle_5_2` text,
  `cle_5_3` text,
  `cle_6_1` text,
  `cle_6_2` text,
  `cle_6_3` text,
  `cle_10_1` text,
  `cle_10_2` text,
  `cle_10_3` text,
  `cle_12_1` text,
  `cle_12_2` text,
  `cle_12_3` text,
  `cle_27` varchar(50) NOT NULL DEFAULT '',
  `cle_28` varchar(50) NOT NULL DEFAULT '',
  `cle_14_1` text,
  `cle_14_2` text,
  `cle_14_3` text,
  `cle_28_1` text,
  `cle_28_2` text,
  `cle_28_3` text,
  `cle_26_1` text,
  `cle_26_2` text,
  `cle_26_3` text,
  `cle_29` varchar(50) NOT NULL DEFAULT '',
  `cle_30` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cle_id`),
  KEY `dept_id` (`dept_id`),
  KEY `cle_phone` (`cle_phone`),
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `cle_name` (`cle_name`),
  KEY `cle_pingyin` (`cle_pingyin`),
  KEY `cle_phone2` (`cle_phone2`),
  KEY `cle_phone3` (`cle_phone3`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='客户信息表';

ALTER TABLE `est_client` ADD COLUMN `abandon_reason`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '放弃原因' AFTER `cle_public_type`;
alter table est_client MODIFY COLUMN `cle_first_connecttime` datetime NOT NULL COMMENT '首次联系时间';
alter table est_client MODIFY COLUMN `cle_last_connecttime` datetime NOT NULL COMMENT '最近一次联系时间';
alter table est_client MODIFY COLUMN `con_rec_next_time` datetime NOT NULL COMMENT '下次联系时间';
alter table est_client MODIFY COLUMN `cle_creat_time` datetime NOT NULL COMMENT '创建时间';
alter table est_client MODIFY COLUMN `cle_update_time` datetime NOT NULL COMMENT '更新时间';
drop trigger if exists cle_set_first_connect_time;