DROP TABLE IF EXISTS `est_quality_problem`;
CREATE TABLE `est_quality_problem` (
  `problem_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '问题分析id',
  `project_id` int(11) NOT NULL COMMENT '质检项目id',
  `quality_problem` varchar(250) NOT NULL COMMENT '问题分析',
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='质检项目问题分析表';

