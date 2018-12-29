CREATE TABLE `est_repository_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_title` varchar(200) NOT NULL DEFAULT '' COMMENT '知识名称',
  `repository_content` text NOT NULL DEFAULT '' COMMENT '知识内容',
  `repository_id` int(11) NOT NULL DEFAULT '0' COMMENT '知识id',
  `insert_time` int(11) DEFAULT NULL DEFAULT '0' COMMENT '创建时间',
  `user_id` int(11) DEFAULT NULL DEFAULT '0' COMMENT '坐席',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `knowledge_import_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_nums` int(11) NOT NULL DEFAULT '0' COMMENT '总数量',
  `success_nums` int(11) NOT NULL DEFAULT '0' COMMENT '成功量',
  `fail_nums` int(11) NOT NULL DEFAULT '0' COMMENT '失败量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `est_knowledge_context` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `description` longtext,
  `is_top` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `import_id` int(11) DEFAULT NULL,
  `personal` int(11) DEFAULT '0' COMMENT '自定义知识(0公共知识 user_id)',
  `vcc_id` int(11) NOT NULL DEFAULT '0' COMMENT '企业id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `est_knowledge_error_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `import_id` int(11) NOT NULL COMMENT '导入批次号',
  `name` varchar(32) DEFAULT NULL DEFAULT '',
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `est_knowledge_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_pid` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `category_name` varchar(30) NOT NULL DEFAULT '' COMMENT '名称',
  `category_deep` tinyint(1) NOT NULL DEFAULT '0' COMMENT '深度',
  `participant_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '查看权限的类型',
  `participant` varchar(255) NOT NULL COMMENT '查看权限的人员',
  PRIMARY KEY (`category_id`),
  KEY `category_pid` (`category_pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='知识库分类';
INSERT INTO `est_knowledge_category` (`category_id`, `category_pid`, `category_name`, `category_deep`, `participant_type`, `participant`) VALUES ('1', '0', '知识助手', '1', '2', '1');

CREATE TABLE `est_knowledge_file` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_old_name` varchar(50) NOT NULL DEFAULT '' COMMENT '文件原名',
  `file_new_name` varchar(50) NOT NULL DEFAULT '' COMMENT '文件名称',
  `file_upload_time` datetime NOT NULL COMMENT '上传时间',
  `file_upload_user_id` int(11) NOT NULL COMMENT '上传员工id',
  `file_upload_dept_id` int(11) NOT NULL COMMENT '上传员工部门id',
  `file_size` varchar(20) NOT NULL COMMENT '文件大小',
  `knowledge_id` int(11) NOT NULL DEFAULT '0' COMMENT '知识ID',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='知识库相关附件表';

CREATE TABLE `est_repository_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL DEFAULT '0' COMMENT '知识id',
  `insert_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `user_id` int(11) DEFAULT '0' COMMENT '坐席',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='喜欢的知识库';

CREATE TABLE `est_repository_dislike` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL DEFAULT '0' COMMENT '知识id',
  `insert_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `user_id` int(11) DEFAULT '0' COMMENT '坐席',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='不喜欢的知识库';

ALTER TABLE `est_knowledge_context`
ADD COLUMN `category_id`  int(11) NOT NULL DEFAULT 0 COMMENT '知识分类',
ADD COLUMN `collect_num`  int(11) NOT NULL DEFAULT 0 COMMENT '收藏量',
ADD COLUMN `scan_num`  int(11) NOT NULL DEFAULT 0 COMMENT '浏览量',
ADD COLUMN `like_num`  int(11) NOT NULL DEFAULT 0 COMMENT '喜欢量',
ADD COLUMN `dislike_num`  int(11) NOT NULL DEFAULT 0 COMMENT '不喜欢量';

ALTER TABLE `est_knowledge_error_data`
ADD COLUMN `category`  varchar(30) DEFAULT '';

ALTER TABLE `est_knowledge_context` CHANGE `name` `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '';