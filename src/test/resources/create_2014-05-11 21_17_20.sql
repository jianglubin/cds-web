-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.17 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 mydb 的数据库结构
DROP DATABASE IF EXISTS `mydb`;
CREATE DATABASE IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mydb`;


-- 导出  表 mydb.app 结构
DROP TABLE IF EXISTS `app`;
CREATE TABLE IF NOT EXISTS `app` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `app_name` varchar(60) NOT NULL COMMENT '应用名,非空',
  `owner` varchar(45) NOT NULL COMMENT '负责人,非空',
  `phone` varchar(45) DEFAULT NULL COMMENT '联系电话,可空',
  `email` varchar(45) DEFAULT NULL COMMENT '邮箱,可空',
  `attribute` varchar(800) DEFAULT NULL COMMENT '关联属性,可空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应用信息表';

-- 正在导出表  mydb.app 的数据：~0 rows (大约)
DELETE FROM `app`;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
/*!40000 ALTER TABLE `app` ENABLE KEYS */;


-- 导出  表 mydb.columninfo 结构
DROP TABLE IF EXISTS `columninfo`;
CREATE TABLE IF NOT EXISTS `columninfo` (
  `column_info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `splitting_key_id` int(11) NOT NULL COMMENT '分离键id,非空',
  `table_name` varchar(60) NOT NULL COMMENT '表名,非空',
  `column_name` varchar(60) NOT NULL COMMENT '字段,非空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  PRIMARY KEY (`column_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='字段信息表';

-- 正在导出表  mydb.columninfo 的数据：~5 rows (大约)
DELETE FROM `columninfo`;
/*!40000 ALTER TABLE `columninfo` DISABLE KEYS */;
INSERT INTO `columninfo` (`column_info_id`, `splitting_key_id`, `table_name`, `column_name`, `create_by`, `creation_date`, `modified_by`, `modification_date`, `delete_status`) VALUES
	(1, 4, 'app', 'app_id', '蒋鲁宾', '2014-05-05 10:27:29', '蒋鲁宾', '2014-05-05 10:45:54', 'true'),
	(2, 4, 'columninfo', 'splitting_key_id', '蒋鲁宾', '2014-05-05 10:45:47', '蒋鲁宾', '2014-05-05 10:45:47', 'false'),
	(3, 4, 'columninfo', 'table', '蒋鲁宾', '2014-05-05 10:45:47', '蒋鲁宾', '2014-05-05 10:45:47', 'false'),
	(4, 4, 'columninfo', 'column', '蒋鲁宾', '2014-05-05 10:45:47', '蒋鲁宾', '2014-05-05 10:45:47', 'false'),
	(5, 4, 'rdbclusterdbgroup', 'db_cluster_id', '蒋鲁宾', '2014-05-08 20:19:56', '蒋鲁宾', '2014-05-08 20:19:56', 'false'),
	(6, 5, 'testsplitting', 'id', '蒋鲁宾', '2014-05-11 15:41:13', '蒋鲁宾', '2014-05-11 15:41:13', 'false');
/*!40000 ALTER TABLE `columninfo` ENABLE KEYS */;


-- 导出  表 mydb.datasource 结构
DROP TABLE IF EXISTS `datasource`;
CREATE TABLE IF NOT EXISTS `datasource` (
  `data_source_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL COMMENT '数据源名称,非空',
  `min_connections` int(11) NOT NULL COMMENT '最小连接数,非空',
  `max_connections` int(11) NOT NULL COMMENT '最大连接数,非空',
  `user_name` varchar(40) NOT NULL COMMENT '用户名,非空',
  `pass_word` varchar(30) DEFAULT NULL,
  `checkout_timeout_milli_sec` int(11) DEFAULT NULL COMMENT '等待超时时间,可空',
  `idle_timeout_sec` varchar(45) DEFAULT NULL COMMENT '连接最大空闲时间,可空',
  `check_statement` varchar(400) DEFAULT NULL COMMENT '检测连接是否可用的查询语句,可空',
  `max_statements` int(11) DEFAULT NULL COMMENT '池中最大普通语句数,可空',
  `max_pre_statements` int(11) DEFAULT NULL COMMENT '池中最大预编译语句数,可空',
  `print_sql` varchar(10) DEFAULT NULL COMMENT '记录SQL语句及执行时间,可空',
  `verbose` varchar(10) DEFAULT NULL COMMENT '记录除SQL语句及执行时间外的其他信息,可空',
  `connection_info` varchar(400) DEFAULT NULL COMMENT '驱动支持的其他参数,多个参数用&分割,可空,可空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  `url` varchar(400) NOT NULL,
  `driver` varchar(400) NOT NULL,
  PRIMARY KEY (`data_source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='数据源信息表';

-- 正在导出表  mydb.datasource 的数据：~6 rows (大约)
DELETE FROM `datasource`;
/*!40000 ALTER TABLE `datasource` DISABLE KEYS */;
INSERT INTO `datasource` (`data_source_id`, `name`, `min_connections`, `max_connections`, `user_name`, `pass_word`, `checkout_timeout_milli_sec`, `idle_timeout_sec`, `check_statement`, `max_statements`, `max_pre_statements`, `print_sql`, `verbose`, `connection_info`, `create_by`, `creation_date`, `modified_by`, `modification_date`, `delete_status`, `url`, `driver`) VALUES
	(1, '1', 0, 10, 'root', '123456', NULL, '', '', NULL, NULL, '', '', '', '蒋鲁宾', '2014-05-02 12:08:51', '蒋鲁宾', '2014-05-02 16:50:20', 'true', '111', '33'),
	(2, '1', 0, 10, 'root', '123456', 1000, '300', 'dfd', 10, 10, 'true', 'true', '是的范德萨', '蒋鲁宾', '2014-05-02 14:52:09', '蒋鲁宾', '2014-05-02 14:52:09', 'false', '222', '444'),
	(3, '1', 0, 10, 'root', '123456', 1000, '300', 'dfd', 10, 10, 'true', 'true', '是的范德萨', '蒋鲁宾', '2014-05-02 16:41:25', '蒋鲁宾', '2014-05-02 16:41:25', 'false', '12321', '21321'),
	(4, '2', 1, 11, 'root1', '1234564', 1001, '301', 'dfd', 11, 11, 'false', 'false', '是的范德萨', '蒋鲁宾', '2014-05-02 16:47:58', '蒋鲁宾', '2014-05-02 16:47:58', 'false', '12321', '21321'),
	(5, 'cindy01', 0, 10, 'root1', '1234564', 1000, '', '111', NULL, NULL, '', '', '11', '蒋鲁宾', '2014-05-02 16:49:25', '蒋鲁宾', '2014-05-02 16:49:25', 'false', 'http://www.163.com/special/0077450P/login_frame.html', '21321'),
	(6, '2', 1, 11, 'aaa', '1234564', 1001, '301', 'dfd', 11, 11, 'false', 'false', '是的范德萨', '蒋鲁宾', '2014-05-02 16:53:27', '蒋鲁宾', '2014-05-02 16:53:27', 'false', '12321', '21321');
/*!40000 ALTER TABLE `datasource` ENABLE KEYS */;


-- 导出  表 mydb.datasourcemonitor 结构
DROP TABLE IF EXISTS `datasourcemonitor`;
CREATE TABLE IF NOT EXISTS `datasourcemonitor` (
  `data_source_monitor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `data_source_id` int(11) NOT NULL COMMENT '数据源id,非空',
  `app_id` int(11) NOT NULL COMMENT '应用id,非空',
  `connections` int(11) NOT NULL COMMENT '当前连接数,非空',
  `max_connections` int(11) NOT NULL COMMENT '最大连接数,非空',
  `wait_connections` int(11) NOT NULL COMMENT 'waitConnections,非空',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间,非空',
  PRIMARY KEY (`data_source_monitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据库连接池状态监控表';

-- 正在导出表  mydb.datasourcemonitor 的数据：~0 rows (大约)
DELETE FROM `datasourcemonitor`;
/*!40000 ALTER TABLE `datasourcemonitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `datasourcemonitor` ENABLE KEYS */;


-- 导出  表 mydb.dbcluster 结构
DROP TABLE IF EXISTS `dbcluster`;
CREATE TABLE IF NOT EXISTS `dbcluster` (
  `db_cluster_id` int(11) NOT NULL AUTO_INCREMENT,
  `cluster_name` varchar(45) DEFAULT NULL,
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  PRIMARY KEY (`db_cluster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='数据簇表';

-- 正在导出表  mydb.dbcluster 的数据：~4 rows (大约)
DELETE FROM `dbcluster`;
/*!40000 ALTER TABLE `dbcluster` DISABLE KEYS */;
INSERT INTO `dbcluster` (`db_cluster_id`, `cluster_name`, `create_by`, `creation_date`, `modified_by`, `modification_date`, `delete_status`) VALUES
	(1, 'fdf3', '蒋鲁宾', '2014-05-01 16:45:12', '蒋鲁宾', '2014-05-01 16:56:51', 'true'),
	(2, '33', '蒋鲁宾', '2014-05-01 16:56:43', '蒋鲁宾', '2014-05-01 16:56:43', 'false'),
	(3, '43', '蒋鲁宾', '2014-05-01 16:56:46', '蒋鲁宾', '2014-05-01 16:56:46', 'false'),
	(4, '23', '蒋鲁宾', '2014-05-01 16:56:47', '蒋鲁宾', '2014-05-01 16:56:47', 'false'),
	(5, '22', '蒋鲁宾', '2014-05-04 16:54:04', '蒋鲁宾', '2014-05-04 16:54:04', 'false'),
	(6, '测试集群', '蒋鲁宾', '2014-05-10 10:44:18', '蒋鲁宾', '2014-05-10 10:44:18', 'false');
/*!40000 ALTER TABLE `dbcluster` ENABLE KEYS */;


-- 导出  表 mydb.dbgroup 结构
DROP TABLE IF EXISTS `dbgroup`;
CREATE TABLE IF NOT EXISTS `dbgroup` (
  `db_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(60) DEFAULT NULL COMMENT '群组名称,可空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  `db_type` varchar(20) NOT NULL,
  PRIMARY KEY (`db_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='数据库群组表';

-- 正在导出表  mydb.dbgroup 的数据：~15 rows (大约)
DELETE FROM `dbgroup`;
/*!40000 ALTER TABLE `dbgroup` DISABLE KEYS */;
INSERT INTO `dbgroup` (`db_group_id`, `group_name`, `create_by`, `creation_date`, `modified_by`, `modification_date`, `delete_status`, `db_type`) VALUES
	(1, '地方', '蒋鲁宾', '2014-05-01 14:44:09', '蒋鲁宾', '2014-05-01 15:32:33', 'true', ''),
	(2, 'dd', '蒋鲁宾', '2014-05-01 15:03:01', '蒋鲁宾', '2014-05-07 21:59:07', 'false', 'MySQL'),
	(3, 'eee', '蒋鲁宾', '2014-05-01 15:03:55', '蒋鲁宾', '2014-05-07 21:59:03', 'false', 'Oracle'),
	(4, 'ffd', '蒋鲁宾', '2014-05-01 15:06:53', '蒋鲁宾', '2014-05-07 21:59:00', 'false', 'Oracle'),
	(5, 'dd', '蒋鲁宾', '2014-05-01 15:07:29', '蒋鲁宾', '2014-05-07 21:58:55', 'false', 'Oracle'),
	(6, 'fdf', '蒋鲁宾', '2014-05-01 15:07:58', '蒋鲁宾', '2014-05-07 21:58:51', 'false', 'MySQL'),
	(7, 'dfd', '蒋鲁宾', '2014-05-01 15:08:32', '蒋鲁宾', '2014-05-07 21:58:47', 'false', 'Oracle'),
	(8, '343', '蒋鲁宾', '2014-05-01 15:10:07', '蒋鲁宾', '2014-05-07 21:58:43', 'false', 'Oracle'),
	(9, '4', '蒋鲁宾', '2014-05-01 15:10:43', '蒋鲁宾', '2014-05-07 21:57:53', 'false', 'MySQL'),
	(10, '4', '蒋鲁宾', '2014-05-01 15:11:19', '蒋鲁宾', '2014-05-07 21:58:30', 'false', 'Oracle'),
	(11, '23', '蒋鲁宾', '2014-05-01 15:11:44', '蒋鲁宾', '2014-05-07 21:58:37', 'false', 'Oracle'),
	(12, 'fdf', '蒋鲁宾', '2014-05-01 16:09:49', '蒋鲁宾', '2014-05-07 21:57:15', 'false', 'Oracle'),
	(13, '测试群组1', '蒋鲁宾', '2014-05-10 10:44:03', '蒋鲁宾', '2014-05-10 10:47:38', 'false', 'MySQL'),
	(14, '测试群组2', '蒋鲁宾', '2014-05-10 10:47:46', '蒋鲁宾', '2014-05-10 10:47:46', 'false', 'MySQL'),
	(15, '测试群组3', '蒋鲁宾', '2014-05-10 10:47:49', '蒋鲁宾', '2014-05-10 10:47:49', 'false', 'MySQL');
/*!40000 ALTER TABLE `dbgroup` ENABLE KEYS */;


-- 导出  表 mydb.dbinfo 结构
DROP TABLE IF EXISTS `dbinfo`;
CREATE TABLE IF NOT EXISTS `dbinfo` (
  `db_info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ip` varchar(20) NOT NULL COMMENT 'ip地址,非空',
  `port` int(11) NOT NULL COMMENT '端口号,非空',
  `db_name` varchar(60) DEFAULT NULL COMMENT '数据库名称,可空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  PRIMARY KEY (`db_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='数据库基本信息表';

-- 正在导出表  mydb.dbinfo 的数据：~17 rows (大约)
DELETE FROM `dbinfo`;
/*!40000 ALTER TABLE `dbinfo` DISABLE KEYS */;
INSERT INTO `dbinfo` (`db_info_id`, `ip`, `port`, `db_name`, `create_by`, `creation_date`, `modified_by`, `modification_date`, `delete_status`) VALUES
	(1, '192.168.1.4', 111, 'ddd', '蒋鲁宾', '2014-04-30 20:02:21', '蒋鲁宾', '2014-05-01 10:39:25', 'false'),
	(2, '128.0.0.1', 111, '多发点', '蒋鲁宾', '2014-04-30 20:13:45', '蒋鲁宾', '2014-05-01 10:53:00', 'false'),
	(3, '128.0.0.1', 3301, '111', '蒋鲁宾', '2014-04-30 20:15:51', '蒋鲁宾', '2014-05-01 10:53:34', 'false'),
	(4, '192.168.1.1', 3301, '222', '蒋鲁宾', '2014-04-30 20:23:33', '蒋鲁宾', '2014-04-30 20:23:33', 'false'),
	(5, '192.168.1.2', 3302, '333', '蒋鲁宾', '2014-04-30 20:31:03', '蒋鲁宾', '2014-04-30 20:31:03', 'false'),
	(6, '127.0.0.4', 2345, '444', '蒋鲁宾', '2014-04-30 20:33:20', '蒋鲁宾', '2014-04-30 20:33:20', 'false'),
	(7, '127.0.1.4', 2324, '5434', '蒋鲁宾', '2014-04-30 20:39:18', '蒋鲁宾', '2014-04-30 20:39:18', 'false'),
	(8, '127.1.0.1', 11, 'dwqwe', '蒋鲁宾', '2014-04-30 20:48:28', '蒋鲁宾', '2014-05-01 12:09:01', 'false'),
	(9, '128.0.0.1', 223, 'dfd', '蒋鲁宾', '2014-04-30 20:51:45', '蒋鲁宾', '2014-04-30 20:51:45', 'false'),
	(10, '213.23.3.3', 3301, 'DF', '蒋鲁宾', '2014-05-01 14:48:48', '蒋鲁宾', '2014-05-01 14:48:48', 'false'),
	(11, '213.23.3.3', 43, '润肤乳', '蒋鲁宾', '2014-05-01 14:49:20', '蒋鲁宾', '2014-05-01 14:49:20', 'false'),
	(12, '213.23.3.3', 222, 'dfd', '蒋鲁宾', '2014-05-01 14:56:37', '蒋鲁宾', '2014-05-01 14:56:37', 'false'),
	(13, '127.0.0.1', 22, '3334', '蒋鲁宾', '2014-05-01 14:57:20', '蒋鲁宾', '2014-05-01 14:57:20', 'false'),
	(14, '127.0.0.1', 111, '111', '蒋鲁宾', '2014-05-07 21:46:24', '蒋鲁宾', '2014-05-07 21:46:24', 'false'),
	(15, '127.0.0.1', 3307, '测试库1', '蒋鲁宾', '2014-05-10 10:43:31', '蒋鲁宾', '2014-05-10 10:43:31', 'false'),
	(16, '127.0.0.1', 3308, '测试库2', '蒋鲁宾', '2014-05-10 10:43:40', '蒋鲁宾', '2014-05-10 10:43:40', 'false'),
	(17, '127.0.0.1', 3309, '测试库3', '蒋鲁宾', '2014-05-10 10:43:50', '蒋鲁宾', '2014-05-10 10:43:50', 'false');
/*!40000 ALTER TABLE `dbinfo` ENABLE KEYS */;


-- 导出  表 mydb.depotstablerules 结构
DROP TABLE IF EXISTS `depotstablerules`;
CREATE TABLE IF NOT EXISTS `depotstablerules` (
  `depots_table_rules_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规则id,非空',
  `rule_type` varchar(10) NOT NULL COMMENT '规则类型(哈希,范围),非空',
  `db_group_id` int(11) NOT NULL COMMENT '群组id,非空',
  `table_suffix` varchar(45) NOT NULL COMMENT '表后缀,非空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  `upper_limit` varchar(20) DEFAULT NULL,
  `lower_limit` varchar(20) DEFAULT NULL,
  `hash_value` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`depots_table_rules_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='分库分表规则表';

-- 正在导出表  mydb.depotstablerules 的数据：~6 rows (大约)
DELETE FROM `depotstablerules`;
/*!40000 ALTER TABLE `depotstablerules` DISABLE KEYS */;
INSERT INTO `depotstablerules` (`depots_table_rules_id`, `rule_type`, `db_group_id`, `table_suffix`, `create_by`, `creation_date`, `modified_by`, `modification_date`, `delete_status`, `upper_limit`, `lower_limit`, `hash_value`) VALUES
	(1, 'range', 11, '_01', '蒋鲁宾', '2014-05-06 18:04:26', '蒋鲁宾', '2014-05-06 20:58:26', 'false', '3', '4', '2'),
	(2, 'hash', 12, '_02', '蒋鲁宾', '2014-05-06 21:09:46', '蒋鲁宾', '2014-05-06 21:09:55', 'true', '', '', '4'),
	(3, 'hash', 12, '_02', '蒋鲁宾', '2014-05-06 21:09:50', '蒋鲁宾', '2014-05-06 21:09:50', 'false', '', '', '4'),
	(4, 'range', 13, '_01', '蒋鲁宾', '2014-05-11 15:41:57', '蒋鲁宾', '2014-05-11 15:41:57', 'false', '0', '100', ''),
	(5, 'range', 14, '_02', '蒋鲁宾', '2014-05-11 15:42:23', '蒋鲁宾', '2014-05-11 15:42:23', 'false', '101', '200', ''),
	(6, 'range', 15, '_03', '蒋鲁宾', '2014-05-11 15:42:36', '蒋鲁宾', '2014-05-11 15:42:36', 'false', '201', '300', '');
/*!40000 ALTER TABLE `depotstablerules` ENABLE KEYS */;


-- 导出  表 mydb.rdatasourceapp 结构
DROP TABLE IF EXISTS `rdatasourceapp`;
CREATE TABLE IF NOT EXISTS `rdatasourceapp` (
  `r_data_source_app_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `date_source_id` int(11) NOT NULL COMMENT '数据源id',
  `app_id` int(11) NOT NULL COMMENT '应用id',
  PRIMARY KEY (`r_data_source_app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据源与应用信息关联表';

-- 正在导出表  mydb.rdatasourceapp 的数据：~0 rows (大约)
DELETE FROM `rdatasourceapp`;
/*!40000 ALTER TABLE `rdatasourceapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `rdatasourceapp` ENABLE KEYS */;


-- 导出  表 mydb.rdbclusterdbgroup 结构
DROP TABLE IF EXISTS `rdbclusterdbgroup`;
CREATE TABLE IF NOT EXISTS `rdbclusterdbgroup` (
  `r_db_cluster_db_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `db_cluster_id` int(11) NOT NULL,
  `db_group_id` int(11) NOT NULL,
  `group_type` varchar(10) NOT NULL COMMENT '群组类型(全局组,工作组),非空',
  PRIMARY KEY (`r_db_cluster_db_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='群组和数据簇关系表';

-- 正在导出表  mydb.rdbclusterdbgroup 的数据：~14 rows (大约)
DELETE FROM `rdbclusterdbgroup`;
/*!40000 ALTER TABLE `rdbclusterdbgroup` DISABLE KEYS */;
INSERT INTO `rdbclusterdbgroup` (`r_db_cluster_db_group_id`, `db_cluster_id`, `db_group_id`, `group_type`) VALUES
	(1, 2, 12, 'Global'),
	(2, 2, 11, 'work'),
	(3, 2, 10, 'Work'),
	(4, 3, 12, 'Work'),
	(5, 3, 11, 'Work'),
	(6, 3, 10, 'Work'),
	(7, 3, 9, 'Work'),
	(8, 3, 8, 'Work'),
	(9, 2, 9, 'Global'),
	(10, 2, 8, 'Global'),
	(11, 2, 7, 'Global'),
	(12, 6, 13, 'Global'),
	(13, 6, 15, 'Work'),
	(14, 6, 14, 'Work');
/*!40000 ALTER TABLE `rdbclusterdbgroup` ENABLE KEYS */;


-- 导出  表 mydb.rdbinfodbgroup 结构
DROP TABLE IF EXISTS `rdbinfodbgroup`;
CREATE TABLE IF NOT EXISTS `rdbinfodbgroup` (
  `r_db_info_db_group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `db_group_id` int(11) NOT NULL COMMENT '群组id,非空',
  `db_info_id` int(11) NOT NULL COMMENT '数据库id,非空',
  `master_or_slave` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`r_db_info_db_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='数据库信息与群组关联表';

-- 正在导出表  mydb.rdbinfodbgroup 的数据：~8 rows (大约)
DELETE FROM `rdbinfodbgroup`;
/*!40000 ALTER TABLE `rdbinfodbgroup` DISABLE KEYS */;
INSERT INTO `rdbinfodbgroup` (`r_db_info_db_group_id`, `db_group_id`, `db_info_id`, `master_or_slave`) VALUES
	(1, 12, 1, 'Master'),
	(2, 12, 5, 'Slave'),
	(3, 12, 4, 'Slave'),
	(4, 12, 3, 'Slave'),
	(5, 11, 14, 'Slave'),
	(6, 11, 13, 'Slave'),
	(7, 13, 15, 'Master'),
	(10, 14, 16, 'Master'),
	(11, 15, 17, 'Master');
/*!40000 ALTER TABLE `rdbinfodbgroup` ENABLE KEYS */;


-- 导出  表 mydb.rrulessplittingkey 结构
DROP TABLE IF EXISTS `rrulessplittingkey`;
CREATE TABLE IF NOT EXISTS `rrulessplittingkey` (
  `r_rules_splitting_key_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `splitting_key_id` int(11) DEFAULT NULL COMMENT '分离键id,非空',
  `depots_table_rules_id` int(11) DEFAULT NULL COMMENT '规则id,非空',
  PRIMARY KEY (`r_rules_splitting_key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分离键与分库分表规则关联表';

-- 正在导出表  mydb.rrulessplittingkey 的数据：~4 rows (大约)
DELETE FROM `rrulessplittingkey`;
/*!40000 ALTER TABLE `rrulessplittingkey` DISABLE KEYS */;
INSERT INTO `rrulessplittingkey` (`r_rules_splitting_key_id`, `splitting_key_id`, `depots_table_rules_id`) VALUES
	(2, 4, 3),
	(3, 5, 4),
	(4, 5, 5),
	(5, 5, 6);
/*!40000 ALTER TABLE `rrulessplittingkey` ENABLE KEYS */;


-- 导出  表 mydb.splittingkey 结构
DROP TABLE IF EXISTS `splittingkey`;
CREATE TABLE IF NOT EXISTS `splittingkey` (
  `splitting_key_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '切分健id',
  `split_name` varchar(45) DEFAULT NULL COMMENT '切分健名称,可空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  PRIMARY KEY (`splitting_key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='切分键表';

-- 正在导出表  mydb.splittingkey 的数据：~5 rows (大约)
DELETE FROM `splittingkey`;
/*!40000 ALTER TABLE `splittingkey` DISABLE KEYS */;
INSERT INTO `splittingkey` (`splitting_key_id`, `split_name`, `create_by`, `creation_date`, `modified_by`, `modification_date`, `delete_status`) VALUES
	(1, '1', '蒋鲁宾', '2014-05-04 16:48:57', '蒋鲁宾', '2014-05-04 16:48:57', 'false'),
	(2, '22', '蒋鲁宾', '2014-05-04 16:50:23', '蒋鲁宾', '2014-05-04 16:50:23', 'false'),
	(3, '我', '蒋鲁宾', '2014-05-04 17:00:06', '蒋鲁宾', '2014-05-04 17:03:50', 'true'),
	(4, '333', '蒋鲁宾', '2014-05-04 17:04:04', '蒋鲁宾', '2014-05-04 17:04:04', 'false'),
	(5, '测试切分键', '蒋鲁宾', '2014-05-11 15:38:38', '蒋鲁宾', '2014-05-11 15:38:38', 'false');
/*!40000 ALTER TABLE `splittingkey` ENABLE KEYS */;


-- 导出  表 mydb.sqlperformancemonitor 结构
DROP TABLE IF EXISTS `sqlperformancemonitor`;
CREATE TABLE IF NOT EXISTS `sqlperformancemonitor` (
  `sql_performance_monitor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `data_source_id` int(11) NOT NULL COMMENT '数据源id',
  `app_id` int(11) NOT NULL COMMENT '应用id',
  `average_time` int(11) NOT NULL COMMENT '平均执行时间',
  `error_num` int(11) NOT NULL COMMENT '错误次数',
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`sql_performance_monitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SQL执行性能监控表';

-- 正在导出表  mydb.sqlperformancemonitor 的数据：~0 rows (大约)
DELETE FROM `sqlperformancemonitor`;
/*!40000 ALTER TABLE `sqlperformancemonitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `sqlperformancemonitor` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
