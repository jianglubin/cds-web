/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.util;

import com.wangyin.wycds.web.controller.vo.SplittingKeyRuleRelationVO;
import com.wangyin.wycds.web.dal.dataobject.SplittingKeyRuleRelationDO;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.cglib.beans.BeanCopier;

import java.util.ArrayList;
import java.util.List;

/**
 * 切分键分库分表规则关系工具类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/7 14:21 Exp $$
 */
public class SplittingKeyRuleRelationUtil {

    /**
     * 转换器
     */
    private final static BeanCopier DO2VO_BC = BeanCopier.create(SplittingKeyRuleRelationDO.class,
            SplittingKeyRuleRelationVO.class, false);
    /**
     * 转换器
     */
    private final static BeanCopier VO2DO_BC = BeanCopier.create(SplittingKeyRuleRelationVO.class,
            SplittingKeyRuleRelationDO.class, false);

    /**
     * 把数据库返回的DO对象列表转换成页面展示VO对象列表
     *
     * @param splittingKeyRuleRelationDOList
     * @return
     */
    public static List<SplittingKeyRuleRelationVO> convert2VOList(List<SplittingKeyRuleRelationDO> splittingKeyRuleRelationDOList) {
        List<SplittingKeyRuleRelationVO> splittingKeyRuleRelationVOList = new ArrayList<SplittingKeyRuleRelationVO>();
        if (CollectionUtils.isEmpty(splittingKeyRuleRelationDOList)) {
            return splittingKeyRuleRelationVOList;
        }
        for (SplittingKeyRuleRelationDO splittingKeyRuleRelationDO : splittingKeyRuleRelationDOList) {
            SplittingKeyRuleRelationVO splittingKeyRuleRelationVO = new SplittingKeyRuleRelationVO();
            DO2VO_BC.copy(splittingKeyRuleRelationDO, splittingKeyRuleRelationVO, null);
            splittingKeyRuleRelationVOList.add(splittingKeyRuleRelationVO);
        }
        return splittingKeyRuleRelationVOList;
    }

    /**
     * 把数据库返回的DO对象转换成页面展示VO对象
     *
     * @param splittingKeyRuleRelationDO
     * @return
     */
    public static SplittingKeyRuleRelationVO convert2VO(SplittingKeyRuleRelationDO splittingKeyRuleRelationDO) {
        if (splittingKeyRuleRelationDO == null) {
            return null;
        }
        SplittingKeyRuleRelationVO splittingKeyRuleRelationVO = new SplittingKeyRuleRelationVO();
        DO2VO_BC.copy(splittingKeyRuleRelationDO, splittingKeyRuleRelationVO, null);
        return splittingKeyRuleRelationVO;
    }

    /**
     * 把页面上的DO对象转换成数据库存储的VO对象
     *
     * @param splittingKeyRuleRelationVO
     * @return
     */
    public static SplittingKeyRuleRelationDO convert2DO(SplittingKeyRuleRelationVO splittingKeyRuleRelationVO) {
        if (splittingKeyRuleRelationVO == null) {
            return null;
        }
        SplittingKeyRuleRelationDO splittingKeyRuleRelationDO = new SplittingKeyRuleRelationDO();
        VO2DO_BC.copy(splittingKeyRuleRelationVO, splittingKeyRuleRelationDO, null);
        return splittingKeyRuleRelationDO;
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
