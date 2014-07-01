/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.controller.vo.DbHostGroupVO;
import com.wangyin.wycds.web.dal.dataobject.DbHostGroupDO;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 监控数据库组信息查询接口
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 11:00 Exp $$
 */
@Repository
@Transactional
public interface DbHostGroupDAO {

    /**
     * 获取状态为"未删除"的所有数据库群组信息
     *
     * @return
     */
    public List<DbHostGroupDO> getDbHostGroupAllList();

    /**
     * 获取状态为"未删除"的所有数据库群组信息,带分页
     *
     * @return
     */
    public List<DbHostGroupDO> getDbHostGroupList(Paginator paginator);

    /**
     * 获取状态为"未删除"的所有数据库群组信息的总数
     *
     * @return
     */
    public Integer getDbHostGroupListCount();

    /**
     * 根据数据库id查询信息
     *
     * @param id
     * @return
     */
    public DbHostGroupDO getDbHostGroup(String id);

    /**
     * 组合条件查询不在选中数据库集中中的数据库群组信息,无分页
     *
     * @param dbHostGroupVO
     * @param clusterId
     * @return
     */
    public List<DbHostGroupDO> getDbHostGroupAndClassNoPaginator(@Param("dbHostGroupVO") DbHostGroupVO dbHostGroupVO, @Param("clusterId") String clusterId);

    /**
     * 根据组合条件查询数据库群组信息
     *
     * @param dbHostGroupVO
     * @param beginIndex
     * @param itemsPerPage
     * @return
     */
    public List<DbHostGroupDO> getDbHostGroupAndClass(@Param("dbHostGroupVO") DbHostGroupVO dbHostGroupVO, @Param("beginIndex") Integer beginIndex, @Param("itemsPerPage") Integer itemsPerPage);

    /**
     * 根据组合条件查询数据库群组信息总数
     *
     * @param dbHostGroupVO
     * @return
     */
    public Integer getDbHostGroupAndClassCount(@Param("dbHostGroupVO") DbHostGroupVO dbHostGroupVO);


    /**
     * 新增一条数据库群组信息
     *
     * @param dbHostGroupDO
     * @return
     */
    public int insertDbHostGroup(DbHostGroupDO dbHostGroupDO);

    /**
     * 更新一条数据库群组信息
     *
     * @param dbHostGroupDO
     * @return
     */
    public int updateDbHostGroup(DbHostGroupDO dbHostGroupDO);

    /**
     * 删除一条数据库群组信息
     *
     * @param id
     * @param modifiedBy
     */
    public int deleteDbHostGroup(@Param("id") String id, @Param("modifiedBy") String modifiedBy);
}
