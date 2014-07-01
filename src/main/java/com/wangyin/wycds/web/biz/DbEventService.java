/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.dal.datainterface.DbEventDAO;
import com.wangyin.wycds.web.dal.datainterface.DbInfoDAO;
import com.wangyin.wycds.web.dal.dataobject.DbEventDO;
import com.wangyin.wycds.web.dal.dataobject.DbInfoDO;
import com.wangyin.wycds.web.enums.EventTypeEnum;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 事件业务处理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/30 15:24 Exp $$
 */
@Service
public class DbEventService {

    @Autowired
    private DbEventDAO dbEventDAO;

    @Autowired
    private DbInfoDAO dbInfoDAO;

    /**
     * 新增事件
     * @param dbGroupId
     * @param dbMonitorId
     * @param createBy
     */
    public void sendEvent(String dbGroupId, String dbMonitorId, String createBy) {
        if (StringUtils.isBlank(dbGroupId) || StringUtils.isBlank(dbMonitorId)) {
            return;
        }
        List<DbInfoDO> dbInfoDOs = dbInfoDAO.getDbInfoByGroupId(dbGroupId);
        if (CollectionUtils.isEmpty(dbInfoDOs)) {
            return;
        }
        for (DbInfoDO dbInfoDO : dbInfoDOs) {
            insertOrUpdateDO(createBy,dbInfoDO,dbMonitorId);
        }
    }

    /**
     * 删除事件
     * @param dbGroupId
     * @param dbMonitorId
     * @param createBy
     */
    public void deleteEvent(String dbGroupId, String dbMonitorId, String createBy){
        if (StringUtils.isBlank(dbGroupId) || StringUtils.isBlank(dbMonitorId)) {
            return;
        }
        List<DbInfoDO> dbInfoDOs = dbInfoDAO.getDbInfoByGroupId(dbGroupId);
        if (CollectionUtils.isEmpty(dbInfoDOs)) {
            return;
        }
        for (DbInfoDO dbInfoDO : dbInfoDOs) {
            DbEventDO dbEventCount = dbEventDAO.getEventCount(dbInfoDO.getId(), dbMonitorId);
            DbEventDO dbEventDO ;
            if (dbEventCount != null) {
                dbEventDO = new DbEventDO();
                dbEventDO.setId(dbEventCount.getId());
                dbEventDO.setCreateBy(createBy);
                dbEventDO.setEventType(EventTypeEnum.MONITOR_STOP.getCode());
                dbEventDAO.updateEvent(dbEventDO);
            }
        }
    }

    /**
     * 新增数据库
     * @param createBy
     * @param dbInfoDO
     * @param dbMonitorId
     */
    private void insertOrUpdateDO(String createBy,DbInfoDO dbInfoDO,String dbMonitorId){
        DbEventDO dbEventDO = new DbEventDO();
        dbEventDO.setCreateBy(createBy);
        dbEventDO.setDbInfoId(dbInfoDO.getId());
        dbEventDO.setDbMonitorId(dbMonitorId);
        dbEventDO.setDbType(dbInfoDO.getDbType());
        dbEventDO.setEventId(getEventId());
        dbEventDO.setIp(dbInfoDO.getIp());
        dbEventDO.setPort(dbInfoDO.getPort());
        dbEventDO.setEventType(EventTypeEnum.MONITOR_START.getCode());
        DbEventDO dbEventCount = dbEventDAO.getEventCount(dbInfoDO.getId(), dbMonitorId);
        if (dbEventCount == null) {
            dbEventDAO.insertEvent(dbEventDO);
        }else{
            dbEventDO.setId(dbEventCount.getId());
            dbEventDAO.updateEvent(dbEventDO);
        }
    }

    /**
     * 获取eventId
     * @return
     */
    private String getEventId() {
        return String.valueOf(new Date().getTime());
    }
}
