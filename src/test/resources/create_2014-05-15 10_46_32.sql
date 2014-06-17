-- MySQL dump 10.13  Distrib 5.1.73, for Win64 (unknown)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	5.1.73-community-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app`
--

DROP TABLE IF EXISTS `app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `app_name` varchar(60) NOT NULL COMMENT '应用名,非空',
  `owner` varchar(45) NOT NULL COMMENT '负责人,非空',
  `phone` varchar(45) DEFAULT NULL COMMENT '联系电话,可空',
  `email` varchar(45) DEFAULT NULL COMMENT '邮箱,可空',
  `attribute` varchar(800) DEFAULT NULL COMMENT '关联属性,可空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` timestamp NULL DEFAULT NULL COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  PRIMARY KEY (`app_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='应用信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app`
--

LOCK TABLES `app` WRITE;
/*!40000 ALTER TABLE `app` DISABLE KEYS */;
INSERT INTO `app` VALUES (1,'1','1','1','','                    ','蒋鲁宾','2014-05-15 02:13:55','蒋鲁宾','2014-05-15 02:18:44','true');
/*!40000 ALTER TABLE `app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `columninfo`
--

DROP TABLE IF EXISTS `columninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columninfo` (
  `column_info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `splitting_key_id` int(11) NOT NULL COMMENT '分离键id,非空',
  `table_name` varchar(60) NOT NULL COMMENT '表名,非空',
  `column_name` varchar(60) NOT NULL COMMENT '字段,非空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` timestamp NULL DEFAULT NULL COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  PRIMARY KEY (`column_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='字段信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columninfo`
--

LOCK TABLES `columninfo` WRITE;
/*!40000 ALTER TABLE `columninfo` DISABLE KEYS */;
INSERT INTO `columninfo` VALUES (1,4,'app','app_id','蒋鲁宾','2014-05-05 10:27:29','蒋鲁宾','2014-05-05 10:45:54','true'),(2,4,'columninfo','splitting_key_id','蒋鲁宾','2014-05-05 10:45:47','蒋鲁宾','2014-05-05 10:45:47','false'),(3,4,'columninfo','table','蒋鲁宾','2014-05-05 10:45:47','蒋鲁宾','2014-05-05 10:45:47','false'),(4,4,'columninfo','column','蒋鲁宾','2014-05-05 10:45:47','蒋鲁宾','2014-05-05 10:45:47','false'),(5,4,'rdbclusterdbgroup','db_cluster_id','蒋鲁宾','2014-05-08 20:19:56','蒋鲁宾','2014-05-08 20:19:56','false'),(6,5,'testsplitting','id','蒋鲁宾','2014-05-11 15:41:13','蒋鲁宾','2014-05-11 15:41:13','false');
/*!40000 ALTER TABLE `columninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasource`
--

DROP TABLE IF EXISTS `datasource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasource` (
  `data_source_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(60) NOT NULL COMMENT '数据源名称,非空',
  `min_connections` int(11) NOT NULL COMMENT '最小连接数,非空',
  `max_connections` int(11) NOT NULL COMMENT '最大连接数,非空',
  `user_name` varchar(40) NOT NULL COMMENT '用户名,非空',
  `pass_word` varchar(30) NOT NULL COMMENT '密码,非空',
  `checkout_timeout_milli_sec` int(11) DEFAULT NULL COMMENT '等待超时时间,可空',
  `idle_timeout_sec` varchar(45) DEFAULT NULL COMMENT '连接最大空闲时间,可空',
  `check_statement` varchar(400) DEFAULT NULL COMMENT '检测连接是否可用的查询语句,可空',
  `max_statements` int(11) DEFAULT NULL COMMENT '池中最大普通语句数,可空',
  `max_pre_statements` int(11) DEFAULT NULL COMMENT '池中最大预编译语句数,可空',
  `print_sql` varchar(10) DEFAULT NULL COMMENT '记录SQL语句及执行时间,可空',
  `verbose` varchar(10) DEFAULT NULL COMMENT '记录除SQL语句及执行时间外的其他信息,可空',
  `connection_info` varchar(400) DEFAULT NULL COMMENT '驱动支持的其他参数,多个参数用&分割,可空,可空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` timestamp NULL DEFAULT NULL COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  `url` varchar(400) NOT NULL COMMENT '连接地址,非空',
  `driver` varchar(400) NOT NULL COMMENT '驱动,非空',
  PRIMARY KEY (`data_source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='数据源信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasource`
--

LOCK TABLES `datasource` WRITE;
/*!40000 ALTER TABLE `datasource` DISABLE KEYS */;
INSERT INTO `datasource` VALUES (1,'1',0,10,'root','123456',NULL,'','',NULL,NULL,'','','','蒋鲁宾','2014-05-02 12:08:51','蒋鲁宾','2014-05-02 16:50:20','true','111','33'),(2,'1',0,10,'root','123456',1000,'300','dfd',10,10,'true','true','是的范德萨','蒋鲁宾','2014-05-02 14:52:09','蒋鲁宾','2014-05-02 14:52:09','false','222','444'),(3,'1',0,10,'root','123456',1000,'300','dfd',10,10,'true','true','是的范德萨','蒋鲁宾','2014-05-02 16:41:25','蒋鲁宾','2014-05-02 16:41:25','false','12321','21321'),(4,'2',1,11,'root1','1234564',1001,'301','dfd',11,11,'false','false','是的范德萨','蒋鲁宾','2014-05-02 16:47:58','蒋鲁宾','2014-05-02 16:47:58','false','12321','21321'),(5,'cindy01',0,10,'root1','1234564',1000,'','111',NULL,NULL,'','','11','蒋鲁宾','2014-05-02 16:49:25','蒋鲁宾','2014-05-02 16:49:25','false','http://www.163.com/special/0077450P/login_frame.html','21321'),(6,'2',1,11,'aaa','1234564',1001,'301','dfd',11,11,'false','false','是的范德萨','蒋鲁宾','2014-05-02 16:53:27','蒋鲁宾','2014-05-02 16:53:27','false','12321','21321');
/*!40000 ALTER TABLE `datasource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasourcemonitor`
--

DROP TABLE IF EXISTS `datasourcemonitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasourcemonitor` (
  `data_source_monitor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `data_source_id` int(11) NOT NULL COMMENT '数据源id,非空',
  `app_id` int(11) NOT NULL COMMENT '应用id,非空',
  `connections` int(11) NOT NULL COMMENT '当前连接数,非空',
  `max_connections` int(11) NOT NULL COMMENT '最大连接数,非空',
  `wait_connections` int(11) NOT NULL COMMENT 'waitConnections,非空',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间,非空',
  PRIMARY KEY (`data_source_monitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据库连接池状态监控表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasourcemonitor`
--

LOCK TABLES `datasourcemonitor` WRITE;
/*!40000 ALTER TABLE `datasourcemonitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `datasourcemonitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbcluster`
--

DROP TABLE IF EXISTS `dbcluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbcluster` (
  `db_cluster_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `cluster_name` varchar(45) NOT NULL COMMENT '数据簇名,非空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` timestamp NULL DEFAULT NULL COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  PRIMARY KEY (`db_cluster_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='数据簇表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbcluster`
--

LOCK TABLES `dbcluster` WRITE;
/*!40000 ALTER TABLE `dbcluster` DISABLE KEYS */;
INSERT INTO `dbcluster` VALUES (1,'fdf3','蒋鲁宾','2014-05-01 16:45:12','蒋鲁宾','2014-05-01 16:56:51','true'),(2,'33','蒋鲁宾','2014-05-01 16:56:43','蒋鲁宾','2014-05-01 16:56:43','false'),(3,'43','蒋鲁宾','2014-05-01 16:56:46','蒋鲁宾','2014-05-01 16:56:46','false'),(4,'23','蒋鲁宾','2014-05-01 16:56:47','蒋鲁宾','2014-05-01 16:56:47','false'),(5,'22','蒋鲁宾','2014-05-04 16:54:04','蒋鲁宾','2014-05-04 16:54:04','false'),(6,'测试集群','蒋鲁宾','2014-05-10 10:44:18','蒋鲁宾','2014-05-10 10:44:18','false');
/*!40000 ALTER TABLE `dbcluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbgroup`
--

DROP TABLE IF EXISTS `dbgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbgroup` (
  `db_group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `group_name` varchar(60) DEFAULT NULL COMMENT '群组名称,可空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` timestamp NULL DEFAULT NULL COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  `db_type` varchar(20) NOT NULL COMMENT '数据库类型(Oralce或者MySql),非空',
  PRIMARY KEY (`db_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='数据库群组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbgroup`
--

LOCK TABLES `dbgroup` WRITE;
/*!40000 ALTER TABLE `dbgroup` DISABLE KEYS */;
INSERT INTO `dbgroup` VALUES (1,'地方','蒋鲁宾','2014-05-01 14:44:09','蒋鲁宾','2014-05-01 15:32:33','true',''),(2,'dd','蒋鲁宾','2014-05-01 15:03:01','蒋鲁宾','2014-05-07 21:59:07','false','MySQL'),(3,'eee','蒋鲁宾','2014-05-01 15:03:55','蒋鲁宾','2014-05-07 21:59:03','false','Oracle'),(4,'ffd','蒋鲁宾','2014-05-01 15:06:53','蒋鲁宾','2014-05-07 21:59:00','false','Oracle'),(5,'dd','蒋鲁宾','2014-05-01 15:07:29','蒋鲁宾','2014-05-07 21:58:55','false','Oracle'),(6,'fdf','蒋鲁宾','2014-05-01 15:07:58','蒋鲁宾','2014-05-07 21:58:51','false','MySQL'),(7,'dfd','蒋鲁宾','2014-05-01 15:08:32','蒋鲁宾','2014-05-07 21:58:47','false','Oracle'),(8,'343','蒋鲁宾','2014-05-01 15:10:07','蒋鲁宾','2014-05-07 21:58:43','false','Oracle'),(9,'4','蒋鲁宾','2014-05-01 15:10:43','蒋鲁宾','2014-05-07 21:57:53','false','MySQL'),(10,'4','蒋鲁宾','2014-05-01 15:11:19','蒋鲁宾','2014-05-07 21:58:30','false','Oracle'),(11,'23','蒋鲁宾','2014-05-01 15:11:44','蒋鲁宾','2014-05-07 21:58:37','false','Oracle'),(12,'fdf','蒋鲁宾','2014-05-01 16:09:49','蒋鲁宾','2014-05-07 21:57:15','false','Oracle'),(13,'测试群组1','蒋鲁宾','2014-05-10 10:44:03','蒋鲁宾','2014-05-10 10:47:38','false','MySQL'),(14,'测试群组2','蒋鲁宾','2014-05-10 10:47:46','蒋鲁宾','2014-05-10 10:47:46','false','MySQL'),(15,'测试群组3','蒋鲁宾','2014-05-10 10:47:49','蒋鲁宾','2014-05-10 10:47:49','false','MySQL');
/*!40000 ALTER TABLE `dbgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbinfo`
--

DROP TABLE IF EXISTS `dbinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbinfo` (
  `db_info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ip` varchar(20) NOT NULL COMMENT 'ip地址,非空',
  `port` int(11) NOT NULL COMMENT '端口号,非空',
  `db_name` varchar(60) DEFAULT NULL COMMENT '数据库名称,可空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` timestamp NULL DEFAULT NULL COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  PRIMARY KEY (`db_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='数据库基本信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbinfo`
--

LOCK TABLES `dbinfo` WRITE;
/*!40000 ALTER TABLE `dbinfo` DISABLE KEYS */;
INSERT INTO `dbinfo` VALUES (1,'192.168.1.4',111,'ddd','蒋鲁宾','2014-04-30 20:02:21','蒋鲁宾','2014-05-01 10:39:25','false'),(2,'128.0.0.1',111,'多发点','蒋鲁宾','2014-04-30 20:13:45','蒋鲁宾','2014-05-01 10:53:00','false'),(3,'128.0.0.1',3301,'111','蒋鲁宾','2014-04-30 20:15:51','蒋鲁宾','2014-05-01 10:53:34','false'),(4,'192.168.1.1',3301,'222','蒋鲁宾','2014-04-30 20:23:33','蒋鲁宾','2014-04-30 20:23:33','false'),(5,'192.168.1.2',3302,'333','蒋鲁宾','2014-04-30 20:31:03','蒋鲁宾','2014-04-30 20:31:03','false'),(6,'127.0.0.4',2345,'444','蒋鲁宾','2014-04-30 20:33:20','蒋鲁宾','2014-04-30 20:33:20','false'),(7,'127.0.1.4',2324,'5434','蒋鲁宾','2014-04-30 20:39:18','蒋鲁宾','2014-04-30 20:39:18','false'),(8,'127.1.0.1',11,'dwqwe','蒋鲁宾','2014-04-30 20:48:28','蒋鲁宾','2014-05-01 12:09:01','false'),(9,'128.0.0.1',223,'dfd','蒋鲁宾','2014-04-30 20:51:45','蒋鲁宾','2014-04-30 20:51:45','false'),(10,'213.23.3.3',3301,'DF','蒋鲁宾','2014-05-01 14:48:48','蒋鲁宾','2014-05-01 14:48:48','false'),(11,'213.23.3.3',43,'润肤乳','蒋鲁宾','2014-05-01 14:49:20','蒋鲁宾','2014-05-01 14:49:20','false'),(12,'213.23.3.3',222,'dfd','蒋鲁宾','2014-05-01 14:56:37','蒋鲁宾','2014-05-01 14:56:37','false'),(13,'127.0.0.1',22,'3334','蒋鲁宾','2014-05-01 14:57:20','蒋鲁宾','2014-05-01 14:57:20','false'),(14,'127.0.0.1',111,'111','蒋鲁宾','2014-05-07 21:46:24','蒋鲁宾','2014-05-07 21:46:24','false'),(15,'127.0.0.1',3307,'测试库1','蒋鲁宾','2014-05-10 10:43:31','蒋鲁宾','2014-05-10 10:43:31','false'),(16,'127.0.0.1',3308,'测试库2','蒋鲁宾','2014-05-10 10:43:40','蒋鲁宾','2014-05-10 10:43:40','false'),(17,'127.0.0.1',3309,'测试库3','蒋鲁宾','2014-05-10 10:43:50','蒋鲁宾','2014-05-10 10:43:50','false');
/*!40000 ALTER TABLE `dbinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depotstablerules`
--

DROP TABLE IF EXISTS `depotstablerules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `depotstablerules` (
  `depots_table_rules_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '规则id,非空',
  `rule_type` varchar(10) NOT NULL COMMENT '规则类型(哈希,范围),非空',
  `db_group_id` int(11) NOT NULL COMMENT '群组id,非空',
  `table_suffix` varchar(45) NOT NULL COMMENT '表后缀,非空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` timestamp NULL DEFAULT NULL COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  `upper_limit` varchar(20) DEFAULT NULL COMMENT '上限值,可空',
  `lower_limit` varchar(20) DEFAULT NULL COMMENT '下限值,可空',
  `hash_value` varchar(20) DEFAULT NULL COMMENT '哈希值,可空',
  PRIMARY KEY (`depots_table_rules_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='分库分表规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depotstablerules`
--

LOCK TABLES `depotstablerules` WRITE;
/*!40000 ALTER TABLE `depotstablerules` DISABLE KEYS */;
INSERT INTO `depotstablerules` VALUES (1,'range',11,'_01','蒋鲁宾','2014-05-06 18:04:26','蒋鲁宾','2014-05-06 20:58:26','false','3','4','2'),(2,'hash',12,'_02','蒋鲁宾','2014-05-06 21:09:46','蒋鲁宾','2014-05-06 21:09:55','true','','','4'),(3,'hash',12,'_02','蒋鲁宾','2014-05-06 21:09:50','蒋鲁宾','2014-05-06 21:09:50','false','','','4'),(4,'range',13,'_01','蒋鲁宾','2014-05-11 15:41:57','蒋鲁宾','2014-05-11 15:41:57','false','0','100',''),(5,'range',14,'_02','蒋鲁宾','2014-05-11 15:42:23','蒋鲁宾','2014-05-11 15:42:23','false','101','200',''),(6,'range',15,'_03','蒋鲁宾','2014-05-11 15:42:36','蒋鲁宾','2014-05-11 15:42:36','false','201','300','');
/*!40000 ALTER TABLE `depotstablerules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rdatasourceapp`
--

DROP TABLE IF EXISTS `rdatasourceapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdatasourceapp` (
  `r_data_source_app_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `date_source_id` int(11) NOT NULL COMMENT '数据源id,非空',
  `app_id` int(11) NOT NULL COMMENT '应用id,非空',
  PRIMARY KEY (`r_data_source_app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据源与应用信息关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rdatasourceapp`
--

LOCK TABLES `rdatasourceapp` WRITE;
/*!40000 ALTER TABLE `rdatasourceapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `rdatasourceapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rdbclusterdbgroup`
--

DROP TABLE IF EXISTS `rdbclusterdbgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdbclusterdbgroup` (
  `r_db_cluster_db_group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `db_cluster_id` int(11) NOT NULL COMMENT '数据簇id,非空',
  `db_group_id` int(11) NOT NULL COMMENT '群组id,非空',
  `group_type` varchar(10) NOT NULL COMMENT '群组类型(全局组,工作组),非空',
  PRIMARY KEY (`r_db_cluster_db_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='群组和数据簇关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rdbclusterdbgroup`
--

LOCK TABLES `rdbclusterdbgroup` WRITE;
/*!40000 ALTER TABLE `rdbclusterdbgroup` DISABLE KEYS */;
INSERT INTO `rdbclusterdbgroup` VALUES (1,2,12,'Global'),(2,2,11,'work'),(3,2,10,'Work'),(4,3,12,'Work'),(5,3,11,'Work'),(6,3,10,'Work'),(7,3,9,'Work'),(8,3,8,'Work'),(9,2,9,'Global'),(10,2,8,'Global'),(11,2,7,'Global'),(12,6,13,'Global'),(13,6,15,'Work'),(14,6,14,'Work');
/*!40000 ALTER TABLE `rdbclusterdbgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rdbinfodbgroup`
--

DROP TABLE IF EXISTS `rdbinfodbgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rdbinfodbgroup` (
  `r_db_info_db_group_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `db_group_id` int(11) NOT NULL COMMENT '群组id,非空',
  `db_info_id` int(11) NOT NULL COMMENT '数据库id,非空',
  `master_or_slave` varchar(10) NOT NULL COMMENT '主/备类型,非空',
  PRIMARY KEY (`r_db_info_db_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='数据库信息与群组关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rdbinfodbgroup`
--

LOCK TABLES `rdbinfodbgroup` WRITE;
/*!40000 ALTER TABLE `rdbinfodbgroup` DISABLE KEYS */;
INSERT INTO `rdbinfodbgroup` VALUES (1,12,1,'Master'),(2,12,5,'Slave'),(3,12,4,'Slave'),(4,12,3,'Slave'),(5,11,14,'Slave'),(6,11,13,'Slave'),(7,13,15,'Master'),(10,14,16,'Master'),(11,15,17,'Master');
/*!40000 ALTER TABLE `rdbinfodbgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rrulessplittingkey`
--

DROP TABLE IF EXISTS `rrulessplittingkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rrulessplittingkey` (
  `r_rules_splitting_key_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `splitting_key_id` int(11) NOT NULL COMMENT '分离键id,非空',
  `depots_table_rules_id` int(11) NOT NULL COMMENT '规则id,非空',
  PRIMARY KEY (`r_rules_splitting_key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='分离键与分库分表规则关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rrulessplittingkey`
--

LOCK TABLES `rrulessplittingkey` WRITE;
/*!40000 ALTER TABLE `rrulessplittingkey` DISABLE KEYS */;
INSERT INTO `rrulessplittingkey` VALUES (2,4,3),(3,5,4),(4,5,5),(5,5,6);
/*!40000 ALTER TABLE `rrulessplittingkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `splittingkey`
--

DROP TABLE IF EXISTS `splittingkey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `splittingkey` (
  `splitting_key_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '切分健id',
  `split_name` varchar(45) DEFAULT NULL COMMENT '切分健名称,可空',
  `create_by` varchar(20) NOT NULL COMMENT '创建人,非空',
  `creation_date` timestamp NULL DEFAULT NULL COMMENT '创建时间,非空',
  `modified_by` varchar(20) NOT NULL COMMENT '最后修改人,非空',
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间,非空',
  `delete_status` varchar(10) NOT NULL DEFAULT 'false' COMMENT '删除状态(true已删除,false未删除),非空',
  PRIMARY KEY (`splitting_key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='切分键表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `splittingkey`
--

LOCK TABLES `splittingkey` WRITE;
/*!40000 ALTER TABLE `splittingkey` DISABLE KEYS */;
INSERT INTO `splittingkey` VALUES (1,'1','蒋鲁宾','2014-05-04 16:48:57','蒋鲁宾','2014-05-04 16:48:57','false'),(2,'22','蒋鲁宾','2014-05-04 16:50:23','蒋鲁宾','2014-05-04 16:50:23','false'),(3,'我','蒋鲁宾','2014-05-04 17:00:06','蒋鲁宾','2014-05-04 17:03:50','true'),(4,'333','蒋鲁宾','2014-05-04 17:04:04','蒋鲁宾','2014-05-04 17:04:04','false'),(5,'测试切分键','蒋鲁宾','2014-05-11 15:38:38','蒋鲁宾','2014-05-11 15:38:38','false');
/*!40000 ALTER TABLE `splittingkey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlperformancemonitor`
--

DROP TABLE IF EXISTS `sqlperformancemonitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlperformancemonitor` (
  `sql_performance_monitor_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `data_source_id` int(11) NOT NULL COMMENT '数据源id',
  `app_id` int(11) NOT NULL COMMENT '应用id',
  `average_time` int(11) NOT NULL COMMENT '平均执行时间',
  `error_num` int(11) NOT NULL COMMENT '错误次数',
  `creation_date` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`sql_performance_monitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='SQL执行性能监控表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlperformancemonitor`
--

LOCK TABLES `sqlperformancemonitor` WRITE;
/*!40000 ALTER TABLE `sqlperformancemonitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `sqlperformancemonitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testsplitting`
--

DROP TABLE IF EXISTS `testsplitting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testsplitting` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testsplitting`
--

LOCK TABLES `testsplitting` WRITE;
/*!40000 ALTER TABLE `testsplitting` DISABLE KEYS */;
/*!40000 ALTER TABLE `testsplitting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-15 11:30:07
