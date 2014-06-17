/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.controller.vo.AppVO;
import com.wangyin.wycds.web.dal.dataobject.AppDO;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 应用查询接口
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/7 17:57 Exp $$
 */
@Repository
@Transactional
public interface AppDAO {

    /**
     * 获取状态为"未删除"的所有数据库信息
     *
     * @param paginator
     * @return
     */
    public List<AppDO> getAppList(Paginator paginator);

    /**
     * 获取状态为"未删除"的所有数据库信息的总数
     *
     * @return
     */
    public Integer getAppListCount();

    /**
     * 根据数据库id查询信息
     *
     * @param id
     * @return
     */
    public AppDO getApp(String id);

    /**
     * 根据组合条件查询数据库信息
     *
     * @param appVO
     * @param beginIndex
     * @param itemsPerPage
     * @return
     */
    public List<AppDO> getAppAndClass(@Param("appVO") AppVO appVO, @Param("beginIndex") Integer beginIndex, @Param("itemsPerPage") Integer itemsPerPage);

    /**
     * 根据组合条件查询数据库信息总数
     *
     * @param appVO
     * @return
     */
    public Integer getAppAndClassCount(@Param("appVO") AppVO appVO);


    /**
     * 新增一条数据库信息
     *
     * @param appDO
     * @return
     */
    public int insertApp(AppDO appDO);

    /**
     * 更新一条数据库信息
     *
     * @param appDO
     * @return
     */
    public int updateApp(AppDO appDO);

    /**
     * 删除一条数据库信息
     *
     * @param id
     * @param modifiedBy
     */
    public int deleteApp(@Param("id") String id, @Param("modifiedBy") String modifiedBy);
}
