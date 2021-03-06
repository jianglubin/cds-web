/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.controller.vo.DbGroupVO;
import com.wangyin.wycds.web.dal.dataobject.DbGroupDO;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 数据库群组信息查询接口
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 11:00 Exp $$
 */
@Repository
@Transactional
public interface DbGroupDAO {

    /**
     * 获取状态为"未删除"的所有数据库群组信息
     *
     * @return
     */
    public List<DbGroupDO> getDbGroupAllList();

    /**
     * 获取状态为"未删除"的所有数据库群组信息,带分页
     *
     * @return
     */
    public List<DbGroupDO> getDbGroupList(Paginator paginator);

    /**
     * 获取状态为"未删除"的所有数据库群组信息的总数
     *
     * @return
     */
    public Integer getDbGroupListCount();

    /**
     * 根据数据库id查询信息
     *
     * @param id
     * @return
     */
    public DbGroupDO getDbGroup(String id);

    /**
     * 组合条件查询不在选中数据库集中中的数据库群组信息,无分页
     *
     * @param dbGroupVO
     * @param clusterId
     * @return
     */
    public List<DbGroupDO> getDbGroupAndClassNoPaginator(@Param("dbGroupVO") DbGroupVO dbGroupVO, @Param("clusterId") String clusterId);

    /**
     * 根据组合条件查询数据库群组信息
     *
     * @param dbGroupVO
     * @param beginIndex
     * @param itemsPerPage
     * @return
     */
    public List<DbGroupDO> getDbGroupAndClass(@Param("dbGroupVO") DbGroupVO dbGroupVO, @Param("beginIndex") Integer beginIndex, @Param("itemsPerPage") Integer itemsPerPage);

    /**
     * 根据组合条件查询数据库群组信息总数
     *
     * @param dbGroupVO
     * @return
     */
    public Integer getDbGroupAndClassCount(@Param("dbGroupVO") DbGroupVO dbGroupVO);


    /**
     * 新增一条数据库群组信息
     *
     * @param dbGroupDO
     * @return
     */
    public int insertDbGroup(DbGroupDO dbGroupDO);

    /**
     * 更新一条数据库群组信息
     *
     * @param dbGroupDO
     * @return
     */
    public int updateDbGroup(DbGroupDO dbGroupDO);

    /**
     * 删除一条数据库群组信息
     *
     * @param id
     * @param modifiedBy
     */
    public int deleteDbGroup(@Param("id") String id, @Param("modifiedBy") String modifiedBy);
}
