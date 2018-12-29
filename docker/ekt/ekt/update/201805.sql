ALTER TABLE `est_config` ADD COLUMN `joint_tp_token` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启弹屏对接token验证 0否1是';
ALTER TABLE `est_config` ADD COLUMN `joint_sy_token` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启首页对接token验证 0否1是';
ALTER TABLE `est_config` ADD COLUMN `custom_menu_token` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启菜单对接token验证 0否1是';