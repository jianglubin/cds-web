/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.dal.dataobject.DbMonitorInstanceDO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

/**
 * 监控数据查询接口
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/29 11:51 Exp $$
 */
@Repository
@Transactional
public interface DbMonitorInstanceDAO {

    /**
     * 查询所有监控项
     *
     * @return
     */
    public List<String> getDbMonitorItem();

    /**
     * 查询监控信息数量
     *
     * @param dbMonitorInstanceDO
     * @return
     */
    public Integer getDbMonitorInstanceAndClassCount(@Param("dbMonitorInstanceDO")DbMonitorInstanceDO dbMonitorInstanceDO,@Param("beginTime")Date beginTime, @Param("endTime")Date endTime);

    /**
     * 无分页查询监控详情列表
     *
     * @param dbMonitorInstanceDO
     * @return
     */
    public List<DbMonitorInstanceDO> getDbMonitorInstanceAndClass(@Param("dbMonitorInstanceDO")DbMonitorInstanceDO dbMonitorInstanceDO,@Param("beginTime")Date beginTime, @Param("endTime")Date endTime);

    /**
     * 查询单个监控信息
     *
     * @param id
     * @return
     */
    public DbMonitorInstanceDO getDbMonitorInstance(String id);
}
