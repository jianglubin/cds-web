/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.controller.vo.SplittingKeyRuleRelationVO;
import com.wangyin.wycds.web.dal.datainterface.SplittingKeyRuleRelationDAO;
import com.wangyin.wycds.web.dal.dataobject.SplittingKeyRuleRelationDO;
import com.wangyin.wycds.web.util.Paginator;
import com.wangyin.wycds.web.util.SplittingKeyRuleRelationUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 切分键分库分表规则管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/7 14:19 Exp $$
 */
@Service
public class SplittingKeyRuleRelationService {
    @Autowired
    private SplittingKeyRuleRelationDAO splittingKeyRuleRelationDAO;

    public List<SplittingKeyRuleRelationVO> getSplittingKeyRuleRelationListNoPaginator() {
        List<SplittingKeyRuleRelationDO> splittingKeyRuleRelationDOList = splittingKeyRuleRelationDAO.getSplittingKeyRuleRelationListNoPaginator();
        return SplittingKeyRuleRelationUtil.convert2VOList(splittingKeyRuleRelationDOList);
    }

    public List<SplittingKeyRuleRelationVO> getSplittingKeyRuleRelationList(Paginator paginator) {
        List<SplittingKeyRuleRelationDO> splittingKeyRuleRelationDOList = splittingKeyRuleRelationDAO.getSplittingKeyRuleRelationList(paginator);
        return SplittingKeyRuleRelationUtil.convert2VOList(splittingKeyRuleRelationDOList);
    }

    public Integer getSplittingKeyRuleRelationListCount() {
        return splittingKeyRuleRelationDAO.getSplittingKeyRuleRelationListCount();
    }

    public Integer getSplittingKeyRuleRelationAndClassCount(SplittingKeyRuleRelationVO splittingKeyRuleRelationVO) {
        return splittingKeyRuleRelationDAO.getSplittingKeyRuleRelationAndClassCount(splittingKeyRuleRelationVO);
    }

    public List<SplittingKeyRuleRelationVO> getSplittingKeyRuleRelationAndClass(SplittingKeyRuleRelationVO splittingKeyRuleRelationVO, Paginator paginator) {
        List<SplittingKeyRuleRelationDO> splittingKeyRuleRelationDOList = splittingKeyRuleRelationDAO.getSplittingKeyRuleRelationAndClass(splittingKeyRuleRelationVO, paginator.getBeginIndex(), paginator.getItemsPerPage());
        return SplittingKeyRuleRelationUtil.convert2VOList(splittingKeyRuleRelationDOList);
    }

    public SplittingKeyRuleRelationVO getSplittingKeyRuleRelation(String id) {
        return SplittingKeyRuleRelationUtil.convert2VO(splittingKeyRuleRelationDAO.getSplittingKeyRuleRelation(id));
    }

    public boolean insertSplittingKeyRuleRelation(SplittingKeyRuleRelationVO splittingKeyRuleRelationVO) {
        return SplittingKeyRuleRelationUtil.checkIsOne(splittingKeyRuleRelationDAO.insertSplittingKeyRuleRelation(SplittingKeyRuleRelationUtil.convert2DO(splittingKeyRuleRelationVO)));
    }

    public boolean updateSplittingKeyRuleRelation(SplittingKeyRuleRelationVO splittingKeyRuleRelationVO) {
        return SplittingKeyRuleRelationUtil.checkIsOne(splittingKeyRuleRelationDAO.updateSplittingKeyRuleRelation(SplittingKeyRuleRelationUtil.convert2DO(splittingKeyRuleRelationVO)));
    }

    public boolean deleteSplittingKeyRuleRelation(String id, String modifiedBy) {
        return SplittingKeyRuleRelationUtil.checkIsOne(splittingKeyRuleRelationDAO.deleteSplittingKeyRuleRelation(id, modifiedBy));
    }
}
