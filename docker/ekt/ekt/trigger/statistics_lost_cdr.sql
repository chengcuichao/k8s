CREATE DEFINER=`root`@`%` TRIGGER `statistics_lost_cdr` AFTER INSERT ON `est_lost_cdr` FOR EACH ROW BEGIN
IF NEW.caller!=''
THEN
IF NEW.user_id!=0
THEN
SET @fen_num=1;
ELSE
SET @fen_num=0;
END IF;
IF NEW.state=1
THEN
SET @deal_num=1;
ELSE
SET @deal_num=0;
END IF;
INSERT INTO est_statistics_lost_cdr(lost_date,missed_num,fen_num,deal_num)VALUES(NEW.start_date,1,@fen_num,@deal_num) ON DUPLICATE KEY UPDATE missed_num=missed_num+1,fen_num=fen_num+@fen_num,deal_num=deal_num+@deal_num;
END IF;
END
