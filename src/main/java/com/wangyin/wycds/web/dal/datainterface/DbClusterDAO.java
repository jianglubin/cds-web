/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.dal.dataobject.DbClusterDO;
import com.wangyin.wycds.web.util.Paginator;
import com.wangyin.wycds.web.controller.vo.DbClusterVO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 数据库集群信息查询接口
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 16:22 Exp $$
 */
@Repository
@Transactional
public interface DbClusterDAO {

    /**
     * 获取状态为"未删除"的所有数据库集群信息
     *
     * @return
     */
    public List<DbClusterDO> getDbClusterAllList();

    /**
     * 获取状态为"未删除"的所有数据库集群信息,带分页
     *
     * @return
     */
    public List<DbClusterDO> getDbClusterList(Paginator paginator);

    /**
     * 获取状态为"未删除"的所有数据库集群信息的总数
     *
     * @return
     */
    public Integer getDbClusterListCount();

    /**
     * 根据集群id查询信息
     *
     * @param id
     * @return
     */
    public DbClusterDO getDbCluster(String id);

    /**
     * 根据组合条件查询数据库集群信息
     *
     * @param dbClusterVO
     * @param beginIndex
     * @param itemsPerPage
     * @return
     */
    public List<DbClusterDO> getDbClusterAndClass(@Param("dbClusterVO") DbClusterVO dbClusterVO, @Param("beginIndex") Integer beginIndex, @Param("itemsPerPage") Integer itemsPerPage);

    /**
     * 根据组合条件查询数据库集群信息总数
     *
     * @param dbClusterVO
     * @return
     */
    public Integer getDbClusterAndClassCount(@Param("dbClusterVO") DbClusterVO dbClusterVO);


    /**
     * 新增一条数据库集群信息
     *
     * @param dbClusterDO
     * @return
     */
    public int insertDbCluster(DbClusterDO dbClusterDO);

    /**
     * 更新一条数据库集群信息
     *
     * @param dbClusterDO
     * @return
     */
    public int updateDbCluster(DbClusterDO dbClusterDO);

    /**
     * 删除一条数据库集群信息
     *
     * @param id
     * @param modifiedBy
     */
    public int deleteDbCluster(@Param("id") String id, @Param("modifiedBy") String modifiedBy);
}
