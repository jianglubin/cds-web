/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.controller.vo.DbInfoVO;
import com.wangyin.wycds.web.dal.dataobject.DbInfoDO;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 数据库信息查询接口
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/4/30 13:43 Exp $$
 */
@Repository
@Transactional
public interface DbInfoDAO {

    /**
     * 获取状态为"未删除"的所有数据库信息
     *
     * @param paginator
     * @return
     */
    public List<DbInfoDO> getDbInfoList(Paginator paginator);

    /**
     * 查询组下所有数据库信息
     * @param groupId
     * @return
     */
    public List<DbInfoDO> getDbInfoByGroupId(String groupId);

    /**
     * 获取状态为"未删除"的所有数据库信息的总数
     *
     * @return
     */
    public Integer getDbInfoListCount();

    /**
     * 根据数据库id查询信息
     *
     * @param id
     * @return
     */
    public DbInfoDO getDbInfo(String id);

    /**
     * 根据组合条件查询数据库信息,无分页
     * @param dbInfoVO
     * @param groupId
     * @return
     */
    public List<DbInfoDO> getDbInfoAndClassNoPaginator(@Param("dbInfoVO") DbInfoVO dbInfoVO, @Param("groupId")String groupId);


    /**
     * 根据组合条件查询数据库信息
     * @param dbInfoVO
     * @param beginIndex
     * @param itemsPerPage
     * @return
     */
    public List<DbInfoDO> getDbInfoAndClass(@Param("dbInfoVO") DbInfoVO dbInfoVO, @Param("beginIndex") Integer beginIndex, @Param("itemsPerPage") Integer itemsPerPage);

    /**
     * 根据组合条件查询数据库信息总数
     *
     * @param dbInfoVO
     * @return
     */
    public Integer getDbInfoAndClassCount(@Param("dbInfoVO") DbInfoVO dbInfoVO);


    /**
     * 新增一条数据库信息
     *
     * @param dbInfoDO
     * @return
     */
    public int insertDbInfo(DbInfoDO dbInfoDO);

    /**
     * 更新一条数据库信息
     *
     * @param dbInfoDO
     * @return
     */
    public int updateDbInfo(DbInfoDO dbInfoDO);

    /**
     * 删除一条数据库信息
     *
     * @param id
     * @param modifiedBy
     */
    public int deleteDbInfo(@Param("id")String id,@Param("modifiedBy")String modifiedBy);
}
