
监控启动

初始化监控配置，sql初始化脚本：src\main\python\com\wangyin\cds\monitor\init_sql\monitor_init.sql
在cds_web工程下的src\main\python\com\wangyin\cds\monitor\cds.cfg 中配置group的数据库用户名和密码
[group]
user=root
pwd=123

运行cds_web工程下的 src\main\python\com\wangyin\cds\monitor\client.py