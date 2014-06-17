/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.controller.vo.DepotsTableRulesVO;
import com.wangyin.wycds.web.dal.datainterface.DepotsTableRulesDAO;
import com.wangyin.wycds.web.dal.dataobject.DepotsTableRulesDO;
import com.wangyin.wycds.web.util.DepotsTableRulesUtil;
import com.wangyin.wycds.web.util.Paginator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 分库分表规则信息管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/5 15:22 Exp $$
 */
@Service
public class DepotsTableRulesService {

    @Autowired
    private DepotsTableRulesDAO depotsTableRulesDAO;

    public List<DepotsTableRulesVO> getDepotsTableRulesList() {
        List<DepotsTableRulesDO> depotsTableRulesDOList = depotsTableRulesDAO.getDepotsTableRulesListNoPaginator();
        return DepotsTableRulesUtil.convert2VOList(depotsTableRulesDOList);
    }

    public List<DepotsTableRulesVO> getDepotsTableRulesList(Paginator paginator) {
        List<DepotsTableRulesDO> depotsTableRulesDOList = depotsTableRulesDAO.getDepotsTableRulesList(paginator);
        return DepotsTableRulesUtil.convert2VOList(depotsTableRulesDOList);
    }

    public Integer getDepotsTableRulesListCount() {
        return depotsTableRulesDAO.getDepotsTableRulesListCount();
    }

    public Integer getDepotsTableRulesAndClassCount(DepotsTableRulesVO depotsTableRulesVO) {
        return depotsTableRulesDAO.getDepotsTableRulesAndClassCount(depotsTableRulesVO);
    }

    public List<DepotsTableRulesVO> getDepotsTableRulesAndClass(DepotsTableRulesVO depotsTableRulesVO, Paginator paginator) {
        List<DepotsTableRulesDO> depotsTableRulesDOList = depotsTableRulesDAO.getDepotsTableRulesAndClass(depotsTableRulesVO, paginator.getBeginIndex(), paginator.getItemsPerPage());
        return DepotsTableRulesUtil.convert2VOList(depotsTableRulesDOList);
    }

    public DepotsTableRulesVO getDepotsTableRules(String id) {
        return DepotsTableRulesUtil.convert2VO(depotsTableRulesDAO.getDepotsTableRules(id));
    }

    public boolean insertDepotsTableRules(DepotsTableRulesVO depotsTableRulesVO) {
        return DepotsTableRulesUtil.checkIsOne(depotsTableRulesDAO.insertDepotsTableRules(DepotsTableRulesUtil.convert2DO(depotsTableRulesVO)));
    }

    public boolean updateDepotsTableRules(DepotsTableRulesVO depotsTableRulesVO) {
        return DepotsTableRulesUtil.checkIsOne(depotsTableRulesDAO.updateDepotsTableRules(DepotsTableRulesUtil.convert2DO(depotsTableRulesVO)));
    }

    public boolean deleteDepotsTableRules(String id, String modifiedBy) {
        return DepotsTableRulesUtil.checkIsOne(depotsTableRulesDAO.deleteDepotsTableRules(id, modifiedBy));
    }
}
