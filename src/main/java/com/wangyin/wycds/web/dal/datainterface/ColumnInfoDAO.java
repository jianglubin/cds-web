/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.controller.vo.ColumnInfoVO;
import com.wangyin.wycds.web.dal.dataobject.ColumnInfoDO;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 切分键映射表字段信息查询接口
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 17:13 Exp $$
 */
@Repository
@Transactional
public interface ColumnInfoDAO {

    /**
     * 获取状态为"未删除"的所有切分键映射表字段信息
     *
     * @param paginator
     * @return
     */
    public List<ColumnInfoDO> getColumnInfoList(Paginator paginator);

    /**
     * 获取状态为"未删除"的所有切分键映射表字段信息的总数
     *
     * @return
     */
    public Integer getColumnInfoListCount();

    /**
     * 根据切分键映射表字段id查询信息
     *
     * @param id
     * @return
     */
    public ColumnInfoDO getColumnInfo(String id);

    /**
     * 根据组合条件查询切分键映射表字段信息
     * @param columnInfoVO
     * @param beginIndex
     * @param itemsPerPage
     * @return
     */
    public List<ColumnInfoDO> getColumnInfoAndClass(@Param("columnInfoVO") ColumnInfoVO columnInfoVO, @Param("beginIndex") Integer beginIndex, @Param("itemsPerPage") Integer itemsPerPage);

    /**
     * 准确查找切分键映射表信息
     *
     * @param tableName
     * @param columnName
     * @return
     */
    public List<ColumnInfoDO> getColumnInfoAndClassNoPaginator(@Param("tableName")String tableName,@Param("columnName")String columnName);
    /**
     * 根据组合条件查询切分键映射表字段信息总数
     *
     * @param columnInfoVO
     * @return
     */
    public Integer getColumnInfoAndClassCount(@Param("columnInfoVO") ColumnInfoVO columnInfoVO);


    /**
     * 新增一条切分键映射表字段信息
     *
     * @param columnInfoDO
     * @return
     */
    public int insertColumnInfo(ColumnInfoDO columnInfoDO);

    /**
     * 更新一条切分键映射表字段信息
     *
     * @param columnInfoDO
     * @return
     */
    public int updateColumnInfo(ColumnInfoDO columnInfoDO);

    /**
     * 删除一条切分键映射表字段信息
     *
     * @param id
     * @param modifiedBy
     */
    public int deleteColumnInfo(@Param("id")String id,@Param("modifiedBy")String modifiedBy);
}
