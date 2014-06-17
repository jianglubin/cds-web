
INSERT INTO DB_MONITOR
   (`id`, `db_group_Id`, `create_by`, `creation_date`, `modified_by`, `modification_date`, `delete_status`, `monitor_item`, `monitor_item_name`, `check_interval`, `error_num_upper`)
VALUES
   (1, 11, '11', "2014/5/29 22:09:36", '11', "2014/5/29 22:09:40", 'false', 'ping_check', '服务器网关检测', 5, 3);

INSERT INTO DB_MONITOR
   (`id`, `db_group_Id`, `create_by`, `creation_date`, `modified_by`, `modification_date`, `delete_status`, `monitor_item`, `monitor_item_name`, `check_interval`, `error_num_upper`)
VALUES
   (2, 11, '11', "2014/5/29 22:09:36", '11', "2014/5/29 22:09:40", 'false', 'dbhang_check', '数据库心跳检测', 5, 3);

INSERT INTO DB_MONITOR_INDEX
   (`id`, `monitor_id`, `create_by`, `creation_date`, `modified_by`, `modification_date`, `delete_status`, `index_item`, `index_item_name`, `index_power`, `threshold_upper`, `threshold_lower`)
VALUES
   (1, 2, 'ff', "2014/5/30 10:11:32", 'ff', "2014/5/30 10:11:37", 'false', 'db_read', '检测数据库读', 0.50, 30, 10);

INSERT INTO DB_MONITOR_INDEX
   (`id`, `monitor_id`, `create_by`, `creation_date`, `modified_by`, `modification_date`, `delete_status`, `index_item`, `index_item_name`, `index_power`, `threshold_upper`, `threshold_lower`)
VALUES
   (2, 2, 'ff', "2014/5/30 10:11:32", 'ff', "2014/5/30 10:11:37", 'false', 'db_write', '检测数据库写', 0.50, 30, 10);

