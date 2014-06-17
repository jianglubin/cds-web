__author__ = 'litu'
import time
from com.wangyin.cds.monitor.utils.clientUtil import ClientUtil
from com.wangyin.cds.monitor.utils.check.dbHangCheck import DbHangUtil
from com.wangyin.cds.monitor.utils.check.pingCheck import PingUtil
from com.wangyin.cds.monitor.model.dbMonitor import DbMonitorConfig
from com.wangyin.cds.monitor.utils.model.dbInfo import DbInfo


class Client: 
    def run():
        dbInfos = ClientUtil.getDbInfoListByType('Master')
        for dbInfo in dbInfos:
            dbMonitor = ClientUtil.getDbMonitorConfigByDbGroupId(dbInfo.getGroupId())
            if dbMonitor == None:
                continue
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

    if __name__ == '__main__':
        client = Client()
        client.main()


