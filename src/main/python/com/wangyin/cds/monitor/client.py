__author__ = 'litu'
import time
from clientUtil import ClientUtil
from dbHangCheck import DbHangUtil
from pingCheck import PingUtil
from dbMonitor import DbMonitorConfig
from dbInfo import DbInfo
def run():
    dbInfos = ClientUtil.getDbInfoListByType('Master')
    for dbInfo in dbInfos:
        dbMonitors= ClientUtil.getDbMonitorConfigByDbGroupId(dbInfo.getGroupId())
        if len(dbMonitors)!=0:
            for dbMonitor in dbMonitors:
                if dbMonitor.getMonitorItem()=='dbhang_check':
                    dbMonitorInstance = DbHangUtil.check(dbInfo,dbMonitor)
                    monitorIns = ClientUtil.monitorInstanceFormat(dbMonitorInstance)
                    ClientUtil.sendMonitorInstance(monitorIns)
                if dbMonitor.getMonitorItem()=='ping_check':
                    dbMonitorInstance = PingUtil.check(dbInfo,dbMonitor)
                    monitorIns = ClientUtil.monitorInstanceFormat(dbMonitorInstance)
                    ClientUtil.sendMonitorInstance(monitorIns)

def main():
    print 'db monitor client start ...'
    while True:
        run()
        time.sleep(10)
    print 'db monitor client end ...'
    
if __name__ == '__main__':
    main()


