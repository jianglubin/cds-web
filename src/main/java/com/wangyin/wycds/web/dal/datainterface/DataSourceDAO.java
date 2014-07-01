/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.controller.vo.DataSourceVO;
import com.wangyin.wycds.web.dal.dataobject.DataSourceDO;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 数据库源信息查询接口
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 20:37 Exp $$
 */
@Repository
@Transactional
public interface DataSourceDAO {
    /**
     * 获取状态为"未删除"的所有数据源信息
     *
     * @return
     */
    public List<DataSourceDO> getDataSourceList(Paginator paginator);

    /**
     * 获取状态为"未删除"的所有数据源信息的总数
     *
     * @return
     */
    public Integer getDataSourceListCount();

    /**
     * 根据数据库id查询信息
     *
     * @param id
     * @return
     */
    public DataSourceDO getDataSource(String id);

    /**
     * 根据组合条件查询数据源信息
     *
     * @param dataSourceVO
     * @param beginIndex
     * @param itemsPerPage
     * @return
     */
    public List<DataSourceDO> getDataSourceAndClass(@Param("dataSourceVO") DataSourceVO dataSourceVO, @Param("beginIndex") Integer beginIndex, @Param("itemsPerPage") Integer itemsPerPage);

    /**
     * 根据组合条件查询数据源信息总数
     *
     * @param dataSourceVO
     * @return
     */
    public Integer getDataSourceAndClassCount(@Param("dataSourceVO") DataSourceVO dataSourceVO);


    /**
     * 新增一条数据源信息
     *
     * @param dataSourceDO
     * @return
     */
    public int insertDataSource(DataSourceDO dataSourceDO);

    /**
     * 更新一条数据源信息
     *
     * @param dataSourceDO
     * @return
     */
    public int updateDataSource(DataSourceDO dataSourceDO);

    /**
     * 删除一条数据源信息
     *
     * @param id
     * @param modifiedBy
     */
    public int deleteDataSource(@Param("id") String id, @Param("modifiedBy") String modifiedBy);
}
