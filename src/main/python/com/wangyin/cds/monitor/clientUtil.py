# coding: utf-8
import requests
import json
from dbMonitor import DbMonitorConfig
from dbInfo import DbInfo
from dbMonitor import MonitorIndexConfig
import urllib
import urllib2

class ClientUtil:
    
    @staticmethod    
    def getDbInfoListByType(type):
        URL = URLS.ALL_MASTER.format(type)
        r = requests.get(URL)
        dbinfos = json.loads(r.text)
        retDbinfos = []
        if len(dbinfos) != 0:
            for dbinfo in dbinfos:
                dbinfo = DbInfo(dbinfo['groupId'], dbinfo['ip'], dbinfo['port'],dbinfo['dbName'],dbinfo['masterOrSlave'],dbinfo['dbType'],dbinfo['dbStatus'])
                retDbinfos.append(dbinfo)
        return retDbinfos
    
    @staticmethod
    def getDbMonitorConfigByDbGroupId(groupId):
        URL = URLS.DB_MONITOR_CONFIG.format(groupId)
        r = requests.get(URL)
        dbMonitors = json.loads(r.text)
        dbMonitorConfigs = []
        if len(dbMonitors) != 0:
            for dbMonitor in dbMonitors:
                dbMonitorConfig = DbMonitorConfig(dbMonitor['dbGroupId'],dbMonitor['monitorItem'],dbMonitor['monitorItemName'],dbMonitor['errorNumUpper'],dbMonitor['checkInterval'])
                dbMonitorIndexs = dbMonitor['dbMonitorIndexs']
                if len(dbMonitorIndexs) != 0:
                    for dbMonitorIndex in dbMonitorIndexs:
                         indexConfig = MonitorIndexConfig(dbMonitorIndex['indexItem'],dbMonitorIndex['indexItemName'],dbMonitorIndex['indexPower'],dbMonitorIndex['thresholdUpper'],dbMonitorIndex['thresholdLower'])
                         dbMonitorConfig.add_monitorIndex(indexConfig)
                dbMonitorConfigs.append(dbMonitorConfig)
        return dbMonitorConfigs
    
    @staticmethod
    def monitorInstanceFormat(monitorInstance):
        monitorIns =  {}
        monitorIns['dbGroupId']= monitorInstance.getGroupId()
        monitorIns['monitorItem'] = monitorInstance.getMonitorItem()
        monitorIns['errorNum'] = monitorInstance.getErrorNum()
        monitorIns['alarmMsg'] = monitorInstance.getAlarmMsg()
        monitorIns['monitorItemName'] = monitorInstance.getMonitorItemName()
        indexInsList= []
        indexInstances = monitorInstance.getMonitorIndexInstances()
        if len(indexInstances)!=0:
            for indexInstance in indexInstances :
                 indexIns =  {}
                 indexIns['indexItem'] = indexInstance.getIndexItem()
                 indexIns['indexValue'] = indexInstance.getValue()
                 indexIns['indexItemName'] = indexInstance.getIndexItemName()
                 indexInsList.append(indexIns)
            monitorIns['dbMonitorIndexInstances'] = indexInsList
            print monitorIns
        return monitorIns

    @staticmethod
    def sendMonitorInstance(monitorIns):
        print 'send monitorInsance to cds server...'
        values = json.dumps(monitorIns)
        headers={'Content-Type': 'application/json'}
        r = requests.post(URLS.SWITH_MASTERORSLAVE, data=values, headers=headers)
        print r

class URLS:
    ALL_MASTER = 'http://localhost:8088/dbinfo/type/{0}'
    DB_MONITOR_CONFIG = 'http://localhost:8088/dbmonitor/dbGroupId/{0}'
    SWITH_MASTERORSLAVE = 'http://localhost:8088/dbinfo/dbMonitorInstance/json/m-s-makePolicySwith'


