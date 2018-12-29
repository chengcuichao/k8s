CREATE DEFINER=`root`@`%` TRIGGER `insert_update_client` AFTER INSERT ON `est_contact_record` FOR EACH ROW BEGIN
IF NEW.con_rec_time != '0000-00-00 00:00:00' AND NEW.cle_id > 0
THEN
UPDATE est_client SET cle_last_connecttime = NEW.con_rec_time,con_rec_next_time = NEW.con_rec_next_time WHERE cle_id = NEW.cle_id;
END IF;
END
