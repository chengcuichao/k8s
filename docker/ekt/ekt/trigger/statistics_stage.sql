CREATE TRIGGER `statistics_stage` AFTER INSERT ON `est_cdr`
 FOR EACH ROW BEGIN
IF NEW.user_id!=0
THEN
IF NEW.conn_secs=0
THEN
SET @conn_success=0;
ELSE
SET @conn_success=1;
END IF;
IF NEW.call_type=1
THEN
SET @conn_out_num=1;
ELSE
SET @conn_out_num=0;
END IF;
IF NEW.call_type=2 || NEW.call_type=13
THEN
SET @conn_in_num=1;
ELSE
SET @conn_in_num=0;
END IF;
IF NEW.call_type=2 && NEW.conn_secs!=0
THEN
SET @conn_success_in=1;
ELSE
SET @conn_success_in=0;
END IF;
IF NEW.call_type=1 && NEW.conn_secs!=0
THEN
SET @conn_success_out=1;
ELSE
SET @conn_success_out=0;
END IF;
INSERT INTO est_statistics_stage(deal_date,user_id,dept_id,conn_secs,conn_num,conn_success,conn_out_num,conn_in_num,conn_success_in,conn_success_out)VALUES(NEW.start_date,NEW.user_id,NEW.dept_id,NEW.conn_secs,1,@conn_success,@conn_out_num,@conn_in_num,@conn_success_in,@conn_success_out) ON DUPLICATE KEY UPDATE conn_secs=conn_secs+NEW.conn_secs,conn_num=conn_num+1,conn_success=conn_success+@conn_success,conn_out_num=conn_out_num+@conn_out_num,conn_in_num=conn_in_num+@conn_in_num,conn_success_in=conn_success_in+@conn_success_in,conn_success_out=conn_success_out+@conn_success_out;
IF NEW.result=0
THEN
UPDATE est_lost_cdr set state=1,user_id=NEW.user_id,dept_id=NEW.dept_id WHERE caller = NEW.cus_phone;
END IF;
END IF;
IF LENGTH(NEW.cle_id) != 19
THEN
IF NEW.cle_id !=0 && NEW.conn_secs!=0
THEN
UPDATE est_client SET cle_dial_number=cle_dial_number+1 WHERE cle_id=NEW.cle_id;
SELECT callid into @call_id FROM est_contact_record WHERE callid=NEW.call_id limit 1;
SELECT cle_stage,cle_info_source into @cle_stage,@cle_info_source FROM est_client WHERE cle_id=NEW.cle_id limit 1;
IF @call_id
THEN
UPDATE est_contact_record set con_rec_time=FROM_UNIXTIME( NEW.start_time,'%Y-%m-%d %H:%i:%s'),user_id=NEW.user_id,dept_id=NEW.dept_id,conn_secs=NEW.conn_secs,call_type=NEW.call_type,cle_stage=@cle_stage,cle_info_source=@cle_info_source WHERE callid= NEW.call_id;
ELSE
INSERT INTO est_contact_record (cle_id,callid,user_id,dept_id,conn_secs,call_type,con_rec_time,cle_stage,cle_info_source) values (NEW.cle_id,NEW.call_id,NEW.user_id,NEW.dept_id,NEW.conn_secs,NEW.call_type,FROM_UNIXTIME( NEW.start_time,'%Y-%m-%d %H:%i:%s'),@cle_stage,@cle_info_source);
END IF;
END IF;
END IF;
END