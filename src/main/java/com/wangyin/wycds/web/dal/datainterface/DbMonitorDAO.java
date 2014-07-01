/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.controller.vo.DbMonitorVO;
import com.wangyin.wycds.web.dal.dataobject.DbMonitorDO;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 监控项信息查询接口
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/27 16:43 Exp $$
 */
@Repository
@Transactional
public interface DbMonitorDAO {

    /**
     * 获取状态为"未删除"的所有监控项信息
     *
     * @param paginator
     * @return
     */
    public List<DbMonitorDO> getDbMonitorList(Paginator paginator);

    /**
     * 获取状态为"未删除"的所有监控项信息的总数
     *
     * @return
     */
    public Integer getDbMonitorListCount();

    /**
     * 根据监控项id查询信息
     *
     * @param id
     * @return
     */
    public DbMonitorDO getDbMonitor(String id);

    /**
     * 根据组合条件查询监控项信息,无分页
     * @param dbMonitorVO
     * @param groupId
     * @return
     */
    public List<DbMonitorDO> getDbMonitorAndClassNoPaginator(@Param("dbMonitorVO") DbMonitorVO dbMonitorVO, @Param("groupId") String groupId);


    /**
     * 根据组合条件查询监控项信息
     * @param dbMonitorVO
     * @param beginIndex
     * @param itemsPerPage
     * @return
     */
    public List<DbMonitorDO> getDbMonitorAndClass(@Param("dbMonitorVO") DbMonitorVO dbMonitorVO, @Param("beginIndex") Integer beginIndex, @Param("itemsPerPage") Integer itemsPerPage);

    /**
     * 根据组合条件查询监控项信息总数
     *
     * @param dbMonitorVO
     * @return
     */
    public Integer getDbMonitorAndClassCount(@Param("dbMonitorVO") DbMonitorVO dbMonitorVO);


    /**
     * 新增一条监控项信息
     *
     * @param dbMonitorDO
     * @return
     */
    public int insertDbMonitor(DbMonitorDO dbMonitorDO);

    /**
     * 更新一条监控项信息
     *
     * @param dbMonitorDO
     * @return
     */
    public int updateDbMonitor(DbMonitorDO dbMonitorDO);

    /**
     * 删除一条监控项信息
     *
     * @param id
     * @param modifiedBy
     * @param status
     */
    public int udpateStatus(@Param("id") String id, @Param("modifiedBy") String modifiedBy, @Param("status") String status);
}
