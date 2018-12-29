CREATE TABLE `est_config` (
  `sms_signature` varchar(30) DEFAULT NULL COMMENT '短信后缀',
  `phone_ifrepeat` tinyint(4) NOT NULL DEFAULT '0' COMMENT '电话号码是否允许重复：0允许重复， 1不允许重复',
  `login_wizard` tinyint(4) NOT NULL DEFAULT '0' COMMENT '首次登陆弹出向导：0未弹出，1已弹出',
  `order_product_amount` tinyint(4) NOT NULL DEFAULT '2' COMMENT '下订单时产品数量 1一个 2多个',
  `deal_other_client` tinyint(4) NOT NULL DEFAULT '1' COMMENT '处理非本人数据的来电  1是  2否',
  `change_dept_dealData` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1、数据所属部门改变为新部门   2 收回所属数据',
  `connect_type` varchar(5) NOT NULL DEFAULT 'amq' COMMENT '通道连接方式 swf：flash  amq：消息队列（网络条件不好的时候用）',
  `use_custom_menu` tinyint(4) DEFAULT '0' COMMENT '使用自定义菜单',
  `client_amount` int(10) DEFAULT NULL COMMENT '客户限制 0 代表不受限制',
  `use_contact` int(11) NOT NULL DEFAULT '0' COMMENT '是否使用联系人模块  0是  1否',
  `delete_client_relative` int(11) NOT NULL DEFAULT '0' COMMENT '删除客户时，相应数据处理 0不作处理 1一同删除',
  `call_type` int(11) NOT NULL DEFAULT '0' COMMENT '呼叫类型 0呼入呼出 1呼入 2呼出',
  `auto_back_client` int(11) NOT NULL DEFAULT '0' COMMENT '否是启用系统自动回收客户功能 0不启用 1启用方案一 2启用方案二',
  `client_has_create_day` int(11) NOT NULL DEFAULT '0' COMMENT '自动收回临界点(即数据从创建到现在的时间) 单位:天',
  `no_contact_day1` int(11) NOT NULL DEFAULT '0' COMMENT '临界点内没联系的天数 或 方案一没联系的天数',
  `no_contact_day2` int(11) NOT NULL DEFAULT '0' COMMENT '临界点以外没联系的天数',
  `use_history` int(11) NOT NULL DEFAULT '0' COMMENT '是否启用历史信息 0否 1是',
  `created_day` int(11) NOT NULL DEFAULT '0' COMMENT '历史信息临界点(即数据数据被创建到今的天数)',
  `auto_back_place` tinyint(4) NOT NULL DEFAULT '0' COMMENT '系统自动回收到位置 0公司 1数据所属部门',
  `use_transque` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否转启用技能组功能 0否 1是'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置';

ALTER TABLE `est_config` ADD COLUMN `token_on_off` TINYINT(1) NOT NULL DEFAULT '0' COMMENT 'tab页token开关:0.关闭 1.开启';
ALTER TABLE `est_config` ADD COLUMN `abandon`  tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否必填放弃原因，1必填，0非必填' AFTER `phone_ifrepeat`;
ALTER TABLE `est_config` ADD `is_enable_ip_whitelist` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否开启IP白名单功能';
