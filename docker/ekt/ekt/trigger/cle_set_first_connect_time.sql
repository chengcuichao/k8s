CREATE DEFINER=`root`@`%` TRIGGER `cle_set_first_connect_time` BEFORE UPDATE ON `est_client` FOR EACH ROW BEGIN
IF NEW.cle_last_connecttime != '0000-00-00 00:00:00'
THEN
IF OLD.cle_first_connecttime = '0000-00-00 00:00:00'
THEN
SET NEW.cle_first_connecttime = NEW.cle_last_connecttime;
END IF;

IF NEW.con_rec_next_time = '0000-00-00 00:00:00' AND OLD.con_rec_next_time != '0000-00-00 00:00:00'
THEN
IF NEW.cle_last_connecttime >= OLD.con_rec_next_time
THEN
SET NEW.con_rec_next_time = '0000-00-00 00:00:00';
ELSE
SET NEW.con_rec_next_time = OLD.con_rec_next_time ;
END IF;
END IF;
END IF;
END
