/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.dal.dataobject.DbEventDO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * 事件操作接口
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/30 15:01 Exp $$
 */
@Repository
@Transactional
public interface DbEventDAO {

    /**
     * 根据事件id查询信息
     *
     * @param id
     * @return
     */
    public DbEventDO getEventById(String id);

    /**
     * 更新事件
     * @param dbEventDO
     */
    public void updateEvent(DbEventDO dbEventDO);

    /**
     * 新增事件
     * @param dbEventDO
     */
    public void insertEvent(DbEventDO dbEventDO);

    /**
     * 查询是否存在监控信息
     *
     * @param dbInfoId
     * @param dbMonitorId
     * @return
     */
    public DbEventDO getEventCount(@Param("dbInfoId") String dbInfoId,@Param("dbMonitorId") String dbMonitorId);
}
