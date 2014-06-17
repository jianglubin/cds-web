/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.datainterface;

import com.wangyin.wycds.web.controller.vo.SplittingKeyRuleRelationVO;
import com.wangyin.wycds.web.dal.dataobject.SplittingKeyRuleRelationDO;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 分库分表规则映与切分健关联关系查询接口
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/6 22:06 Exp $$
 */
@Repository
@Transactional
public interface SplittingKeyRuleRelationDAO {

    /**
     * 根据切分键id获取关联规则信息
     *
     * @param splittingKeyId
     * @param groupIds
     * @return
     */
    public List<SplittingKeyRuleRelationDO> getSplittingKeyRuleRelationListBySplittingKeyId(@Param("splittingKeyId") String splittingKeyId, @Param("groupIds") List<String> groupIds);

    /**
     * 获取状态为"未删除"的所有数据库信息,无分页
     *
     * @return
     */
    public List<SplittingKeyRuleRelationDO> getSplittingKeyRuleRelationListNoPaginator();

    /**
     * 获取状态为"未删除"的所有数据库信息
     *
     * @param paginator
     * @return
     */
    public List<SplittingKeyRuleRelationDO> getSplittingKeyRuleRelationList(Paginator paginator);

    /**
     * 获取状态为"未删除"的所有数据库信息的总数
     *
     * @return
     */
    public Integer getSplittingKeyRuleRelationListCount();

    /**
     * 根据数据库id查询信息
     *
     * @param id
     * @return
     */
    public SplittingKeyRuleRelationDO getSplittingKeyRuleRelation(String id);

    /**
     * 根据组合条件查询数据库信息
     *
     * @param splittingKeyRuleRelationVO
     * @param beginIndex
     * @param itemsPerPage
     * @return
     */
    public List<SplittingKeyRuleRelationDO> getSplittingKeyRuleRelationAndClass(@Param("splittingKeyRuleRelationVO") SplittingKeyRuleRelationVO splittingKeyRuleRelationVO, @Param("beginIndex") Integer beginIndex, @Param("itemsPerPage") Integer itemsPerPage);

    /**
     * 根据组合条件查询数据库信息总数
     *
     * @param splittingKeyRuleRelationVO
     * @return
     */
    public Integer getSplittingKeyRuleRelationAndClassCount(@Param("splittingKeyRuleRelationVO") SplittingKeyRuleRelationVO splittingKeyRuleRelationVO);

    /**
     * 新增一条数据库信息
     *
     * @param splittingKeyRuleRelationDO
     * @return
     */
    public int insertSplittingKeyRuleRelation(SplittingKeyRuleRelationDO splittingKeyRuleRelationDO);

    /**
     * 更新一条数据库信息
     *
     * @param splittingKeyRuleRelationDO
     * @return
     */
    public int updateSplittingKeyRuleRelation(SplittingKeyRuleRelationDO splittingKeyRuleRelationDO);

    /**
     * 删除一条数据库信息
     *
     * @param id
     * @param modifiedBy
     */
    public int deleteSplittingKeyRuleRelation(@Param("id") String id, @Param("modifiedBy") String modifiedBy);
}