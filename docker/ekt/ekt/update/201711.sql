ALTER TABLE `est_config` ADD COLUMN `name_ifrepeat` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否允许客户名称重复：0允许重复， 1不允许重复';
ALTER TABLE `est_config` ADD COLUMN `auto_create_client` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '来电时，是否自动创建客户，0否1是';
ALTER TABLE `est_config` ADD COLUMN `joint_tp` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否开启弹屏对接：0否1是';
ALTER TABLE `est_config` ADD COLUMN `joint_sy` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否开启首页对接：0否1是';
ALTER TABLE `est_config` ADD COLUMN `joint_tp_url` varchar(255) NOT NULL DEFAULT '' COMMENT '对接弹屏地址';
ALTER TABLE `est_config` ADD COLUMN `joint_sy_url` varchar(255) NOT NULL DEFAULT '' COMMENT '对接首页地址';
ALTER TABLE `est_config` MODIFY COLUMN `use_custom_menu` tinyint(4) NOT NULL DEFAULT 0 COMMENT '使用自定义菜单 0否1是';
ALTER TABLE `est_users` ADD COLUMN `user_status` tinyint(1) NULL DEFAULT 1 COMMENT '员工状态：1、在职 2、离职 3、冻结';

ALTER TABLE `est_contact_record` CHANGE `cle_info_source` `cle_info_source` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '信息来源（数据字典配置）';
ALTER TABLE `est_contact_record` CHANGE `cle_stage` `cle_stage` VARCHAR(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户阶段（数据字典配置）';
ALTER TABLE `est_client_history` ADD `abandon_reason` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '放弃原因';

ALTER TABLE `est_config` ADD COLUMN `if_watermark` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否开启水印（0否1是）', ADD COLUMN `watermark_words` varchar(255) NOT NULL DEFAULT '' COMMENT '水印文字';

