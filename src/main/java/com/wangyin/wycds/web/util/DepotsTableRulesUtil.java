/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.util;

import com.wangyin.wycds.web.controller.vo.DepotsTableRulesVO;
import com.wangyin.wycds.web.dal.dataobject.DepotsTableRulesDO;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.cglib.beans.BeanCopier;

import java.util.ArrayList;
import java.util.List;

/**
 * 分库分表规则信息工具类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/5 15:25 Exp $$
 */
public class DepotsTableRulesUtil {

    /**
     * 转换器
     */
    private final static BeanCopier DO2VO_BC = BeanCopier.create(DepotsTableRulesDO.class,
            DepotsTableRulesVO.class, false);
    /**
     * 转换器
     */
    private final static BeanCopier VO2DO_BC = BeanCopier.create(DepotsTableRulesVO.class,
            DepotsTableRulesDO.class, false);

    /**
     * 把数据库返回的DO对象列表转换成页面展示VO对象列表
     *
     * @param depotsTableRulesDOList
     * @return
     */
    public static List<DepotsTableRulesVO> convert2VOList(List<DepotsTableRulesDO> depotsTableRulesDOList) {
        List<DepotsTableRulesVO> depotsTableRulesVOList = new ArrayList<DepotsTableRulesVO>();
        if (CollectionUtils.isEmpty(depotsTableRulesDOList)) {
            return depotsTableRulesVOList;
        }
        for (DepotsTableRulesDO depotsTableRulesDO : depotsTableRulesDOList) {
            DepotsTableRulesVO depotsTableRulesVO = new DepotsTableRulesVO();
            DO2VO_BC.copy(depotsTableRulesDO, depotsTableRulesVO, null);
            depotsTableRulesVOList.add(depotsTableRulesVO);
        }
        return depotsTableRulesVOList;
    }

    /**
     * 把数据库返回的DO对象转换成页面展示VO对象
     *
     * @param depotsTableRulesDO
     * @return
     */
    public static DepotsTableRulesVO convert2VO(DepotsTableRulesDO depotsTableRulesDO) {
        if (depotsTableRulesDO == null) {
            return null;
        }
        DepotsTableRulesVO depotsTableRulesVO = new DepotsTableRulesVO();
        DO2VO_BC.copy(depotsTableRulesDO, depotsTableRulesVO, null);
        return depotsTableRulesVO;
    }

    /**
     * 把页面上的DO对象转换成数据库存储的VO对象
     *
     * @param depotsTableRulesVO
     * @return
     */
    public static DepotsTableRulesDO convert2DO(DepotsTableRulesVO depotsTableRulesVO) {
        if (depotsTableRulesVO == null) {
            return null;
        }
        DepotsTableRulesDO depotsTableRulesDO = new DepotsTableRulesDO();
        VO2DO_BC.copy(depotsTableRulesVO, depotsTableRulesDO, null);
        return depotsTableRulesDO;
    }

    /**
     * 校验参数是否等于1,是的话返回true,否的话返回false
     *
     * @param size
     * @return
     */
    public static boolean checkIsOne(int size) {
        if (size == 1) {
            return true;
        } else {
            return false;
        }
    }
}