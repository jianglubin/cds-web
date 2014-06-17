# coding: utf-8
from connector import ClusterConnector
import time
from dbMonitorInstance import DbMonitorInstance
from dbMonitorInstance import MonitorIndexInstance

class DbHangUtil:
    
    @staticmethod   
    def check(dbInfo,dbMonitor):
        print 'DbHangCheck[ip:'+dbInfo.getIp()+';port:'+dbInfo.getPort()+';dbName:'+dbInfo.getDbName()+'] start ...'
        dbMonitorInstance = None
        i=0
        while i<= dbMonitor.getRetryNum():
            if i> 0 :
                print 'The '+str(i)+' times few retries'
            conn = ClusterConnector().new_group_conn(dbInfo.getIp(),dbInfo.getPort(),dbInfo.getDbName())
            if conn!= None:
                break
            i= i+1
            time.sleep(5)
        if i > dbMonitor.getRetryNum():
            print 'db connect overtime [ip:'+dbInfo.getIp()+';port:'+dbInfo.getPort()+';dbName:'+dbInfo.getDbName()+']' 
            return DbMonitorInstance(dbMonitor.getGroupId(),dbMonitor.getMonitorItem(),dbMonitor.getMonitorItemName(),i,'数据库连接超时')
         
        dbMonitorInstance = DbMonitorInstance(dbMonitor.getGroupId(),dbMonitor.getMonitorItem(),dbMonitor.getMonitorItemName(),i,'')
        try:
            cursor = conn.cursor()
            startTime = time.localtime()
            sql = "select * from TABLE HA_HEARTBEAT where id=1234567"
            cursor.execute(sql)
            endTime = time.localtime()
            dbMonitorIndexInstance = MonitorIndexInstance('db_read','数据库读检测',endTime - startTime)
            dbMonitorInstance.add_monitorIndexInstance(dbMonitorIndexInstance)
        except Exception, e:  
            print('query error!{}'.format(e)) 

        try:
            startTime = time.localtime()
            sql = "Update HA_HEARTBEAT  set HEARTBEAT =%s where id=1234567;"
            ISOTIMEFORMAT='%Y-%m-%d %X'
            date=time.strftime(ISOTIMEFORMAT, time.localtime())
            cursor.execute(sql,date)  
            endTime = time.localtime()
            dbMonitorIndexInstance = MonitorIndexInstance('db_write','数据库读检测',endTime - startTime)
            dbMonitorInstance.add_monitorIndexInstance(dbMonitorIndexInstance)
        except Exception, e:  
            print('update error!{}'.format(e))  
        finally:  
            cursor.close()  
        conn.close()

        return dbMonitorInstance
         


