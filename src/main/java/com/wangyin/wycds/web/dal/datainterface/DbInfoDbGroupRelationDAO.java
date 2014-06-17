/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.dal.dataobject.DbInfoDbGroupRelationDO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 群组与数据库关系查询接口
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/3 19:59 Exp $$
 */
@Repository
@Transactional
public interface DbInfoDbGroupRelationDAO {

    /**
     * 获取群组下所有数据库信息
     *
     * @param ids
     * @return
     */
    public List<DbInfoDbGroupRelationDO> getDbInfoDbGroupRelationListByIds(List<String> ids);

    /**
     * 获取群组下所有数据库信息
     *
     * @param dbGroupId
     * @return
     */
    public List<DbInfoDbGroupRelationDO> getDbInfoDbGroupRelationList(String dbGroupId);

    /**
     * 入群组和数据库关系
     *
     * @param dbInfoDbGroupRelationDO
     * @return
     */
    public int insertDbInfoDbGroupRelation(DbInfoDbGroupRelationDO dbInfoDbGroupRelationDO);

    /**
     * 删除群组和数据库关系
     *
     * @param ids
     */
    public int deleteDbInfoDbGroupRelation(List<String> ids);

    /**
     * 更新主备状态
     *
     * @param masterOrSlave
     * @param id
     * @return
     */
    public int updateDbInfoDbGroupRelation(@Param("masterOrSlave") String masterOrSlave, @Param("id") String id);
}
