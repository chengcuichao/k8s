INSERT INTO `est_dictionary` (`id`, `name`, `type`) VALUES
(1, '客户来源', 1),
(2, '客户阶段', 1),
(3, '订单状态', 2),
(4, '服务类型', 3),
(5, '配送方式', 2),
(6, '号码状态', 1),
(7, '联系结果', 4),
(8, '放弃原因', 1);

INSERT INTO `est_dictionary_detail` (`parent_id`, `name`, `sorts`) VALUES ('7', '成功', '0');
INSERT INTO `est_dictionary_detail` (`parent_id`, `name`, `sorts`) VALUES ('7', '未呼通', '1');
INSERT INTO `est_dictionary_detail` (`parent_id`, `name`, `sorts`) VALUES ('7', '稍后联系', '2');
INSERT INTO `est_dictionary_detail` (`parent_id`, `name`, `sorts`) VALUES ('6', '未拨打', 0);
INSERT INTO `est_dictionary_detail` (`parent_id`, `name`, `sorts`) VALUES ('6', '呼通', 1);
INSERT INTO `est_dictionary_detail` (`parent_id`, `name`, `sorts`) VALUES ('6', '未呼通', 2);
INSERT INTO `est_dictionary_detail` (`parent_id`, `name`, `sorts`) VALUES ('6', '空号错号', 3);
INSERT INTO `est_dictionary_detail` (`parent_id`, `name`, `sorts`) VALUES ('6', '停机', 4);
INSERT INTO `est_dictionary_detail` (`parent_id`, `name`, `sorts`) VALUES ('8', '空号错号', '');
