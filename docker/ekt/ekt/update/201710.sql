ALTER TABLE `est_client` ADD COLUMN `session_uuid`  varchar(100) NULL COMMENT '会话uuid' AFTER `cle_id`;