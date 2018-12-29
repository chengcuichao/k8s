CREATE TABLE `ec_survey_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `survey_id` int(11) NOT NULL COMMENT '问卷id',
  `page_id` int(11) unsigned NOT NULL COMMENT '页面ID',
  `item_name` text NOT NULL COMMENT '题目名',
  `remark` text NOT NULL COMMENT '备注',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '题目类型',
  `needs` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否必答(0否1是)',
  `rank` tinyint(1) NOT NULL DEFAULT '0' COMMENT '选项排列(0纵向1横向)',
  `cols` tinyint(1) NOT NULL DEFAULT '0' COMMENT '每行的列数',
  `seq` smallint(4) NOT NULL DEFAULT '0' COMMENT '题目序号',
  `style` varchar(10) NOT NULL COMMENT '输入框的样式（不限，日期，日期时间，号码，邮箱，数字）',
  `exceptive_word` varchar(50) NOT NULL COMMENT '例外字符',
  `inputs_type` varchar(60) NOT NULL COMMENT '选项输入框形式 json 串',
  `minchecks` tinyint(1) NOT NULL COMMENT '多选题最少选择',
  `maxchecks` tinyint(1) NOT NULL COMMENT '多选题最多选择',
  `lists` tinyint(1) NOT NULL DEFAULT '0' COMMENT '列举题最少列举项数',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `create_username` varchar(30) NOT NULL COMMENT '创建人名字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '修改人',
  `update_username` varchar(30) NOT NULL COMMENT '修改人名字',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`item_id`),
  KEY `seq` (`seq`),
  KEY `survey_id` (`survey_id`,`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷问题表';

CREATE TABLE `ec_survey_main` (
  `survey_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `survey_name` varchar(255) NOT NULL COMMENT '问卷名',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '问卷状态(0未生成1已启用2未启用)',
  `script_begin` text NOT NULL COMMENT '开场话术',
  `script_end` text NOT NULL COMMENT '结束话术',
  `type` tinyint(1) NOT NULL COMMENT '问卷类型',
  `if_check_samples` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证样本数',
  `sample_required` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '要求的样本数（0为不限）',
  `samples` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '已有的样本数',
  `invoke_style` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '问卷调研样式（1单页2分页）',
  `if_random` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否启用随机选取题目功能',
  `item_nums` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '选取的题目数',
  `check_call_status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否需要验证当前呼叫状态（0否1是）',
  `if_multiple` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否多样本（1是0否）',
  `if_auto_allot` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动分配',
  `qc_rate` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '质检比例',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `create_username` varchar(30) NOT NULL COMMENT '创建人名字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '修改人',
  `update_username` varchar(30) NOT NULL COMMENT '修改人名字',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `if_use` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已使用',
  PRIMARY KEY (`survey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷主表';

CREATE TABLE `ec_survey_options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `survey_id` int(11) NOT NULL DEFAULT '0' COMMENT '问卷id',
  `page_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '页面ID',
  `item_id` int(11) NOT NULL COMMENT '题目id',
  `option_name` varchar(250) NOT NULL COMMENT '选项名',
  `score` tinyint(1) NOT NULL COMMENT '选项分值',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有效',
  `toPage` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '要跳转到的页',
  `skipto` smallint(2) NOT NULL COMMENT '要跳转的题号',
  `exclude` varchar(100) NOT NULL COMMENT '互斥',
  `sample_required` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '此选项要求的样本数',
  `option_samples` int(11) NOT NULL DEFAULT '0' COMMENT '此选项已有的样本数',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `create_username` varchar(30) NOT NULL COMMENT '创建人名字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '修改人',
  `update_username` varchar(30) NOT NULL COMMENT '修改人名字',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`option_id`),
  KEY `survey_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷选项表';

CREATE TABLE `ec_survey_page` (
  `page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '问卷ID',
  `page_no` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '页序号',
  PRIMARY KEY (`page_id`),
  KEY `survey_id` (`survey_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷分页表';

CREATE TABLE `ec_survey_sample` (
  `sample_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `call_id` VARCHAR(32) DEFAULT '' COMMENT '呼叫id',
  `survey_id` int(11) NOT NULL COMMENT '问卷id',
  `project_id` int(11) NOT NULL DEFAULT '0' COMMENT '连接的项目ID',
  `pro_name` varchar(100) NOT NULL COMMENT '任务名称',
  `user_id` int(11) NOT NULL COMMENT '客户id',
  `user_phone` varchar(20) NOT NULL COMMENT '用户号码',
  `pl_code` varchar(10) NOT NULL COMMENT '区号',
  `plcity` varchar(10) NOT NULL COMMENT '城市名称',
  `result` tinyint(1) NOT NULL DEFAULT '0' COMMENT '问卷结果(1成功2失败)',
  `call_result` tinyint(1) NOT NULL DEFAULT '0' COMMENT '呼叫结果',
  `uniqueid` varchar(60) NOT NULL COMMENT '通话的uniqueid',
  `call_secs` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '通话时长',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `create_username` varchar(30) NOT NULL COMMENT '创建人名字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '修改人',
  `update_username` varchar(30) NOT NULL COMMENT '修改人名字',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `user_class` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属班ID',
  `user_class_name` varchar(30) NOT NULL COMMENT '所属班名称',
  `user_team` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属组ID',
  `user_team_name` varchar(30) NOT NULL COMMENT '所属组名称',
  `isdone` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已完成',
  `if_secs` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已获取时长',
  `if_update` tinyint(1) NOT NULL,
  `is_del` tinyint(1) NOT NULL COMMENT '0 未删除 1 已删除',
  `task_id` int(11) NOT NULL DEFAULT '0' COMMENT '任务数据id',
  PRIMARY KEY (`sample_id`),
  KEY `survey_id` (`survey_id`,`project_id`,`user_id`),
  KEY `if_secs` (`if_secs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷样本表';

CREATE TABLE `ec_survey_subitem` (
  `subitem_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `survey_id` int(11) NOT NULL COMMENT '问卷id',
  `page_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '页面ID',
  `item_id` int(11) NOT NULL COMMENT '问题id',
  `subitem_name` varchar(255) NOT NULL COMMENT '子题目名',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `create_username` varchar(30) NOT NULL COMMENT '创建人名字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '修改人',
  `update_username` varchar(30) NOT NULL COMMENT '修改人名字',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`subitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷子题目表';

CREATE TABLE `est_survey_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_type` varchar(50) NOT NULL,
  `selected_option_id` int(11) DEFAULT NULL,
  `multiple_options` varchar(255) DEFAULT NULL,
  `input` varchar(255) NOT NULL,
  `textarea` text,
  `extra_input` varchar(255) DEFAULT NULL,
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  PRIMARY KEY (`id`,`input`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `est_survey_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `sample_id` int(11) NOT NULL,
  `real_ip` varchar(30) NOT NULL,
  `time` datetime NOT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ec_library_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `item_type` tinyint(1) NOT NULL COMMENT '题目类型',
  `item_name` varchar(255) NOT NULL COMMENT '题目名',
  `remark` varchar(250) NOT NULL COMMENT '题目备注',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `create_username` varchar(30) NOT NULL COMMENT '创建人名字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '修改人',
  `update_username` varchar(30) NOT NULL COMMENT '修改人名字',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题库题目表';

CREATE TABLE `ec_library_options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `item_id` int(11) NOT NULL COMMENT '题目id',
  `option_name` varchar(250) NOT NULL COMMENT '选项名',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `create_username` varchar(30) NOT NULL COMMENT '创建人名字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '修改人',
  `update_username` varchar(30) NOT NULL COMMENT '修改人名字',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题库选项表';

CREATE TABLE `ec_library_subitem` (
  `subitem_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `item_id` int(11) NOT NULL COMMENT '题目id',
  `subitem_name` varchar(250) NOT NULL COMMENT '子题目名称',
  `create_user` int(11) NOT NULL COMMENT '创建人',
  `create_username` varchar(30) NOT NULL COMMENT '创建人名字',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_user` int(11) NOT NULL COMMENT '修改人',
  `update_username` varchar(30) NOT NULL COMMENT '修改人名字',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`subitem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='题库子题目表';