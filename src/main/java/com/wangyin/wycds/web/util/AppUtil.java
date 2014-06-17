/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.util;

import com.wangyin.wycds.web.controller.vo.AppVO;
import com.wangyin.wycds.web.dal.dataobject.AppDO;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.cglib.beans.BeanCopier;

import java.util.ArrayList;
import java.util.List;

/**
 * 应用工具类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/7 18:10 Exp $$
 */
public class AppUtil {
    /**
     * 转换器
     */
    private final static BeanCopier DO2VO_BC = BeanCopier.create(AppDO.class,
            AppVO.class, false);
    /**
     * 转换器
     */
    private final static BeanCopier VO2DO_BC = BeanCopier.create(AppVO.class,
            AppDO.class, false);

    /**
     * 把数据库返回的DO对象列表转换成页面展示VO对象列表
     *
     * @param appDOList
     * @return
     */
    public static List<AppVO> convert2VOList(List<AppDO> appDOList) {
        List<AppVO> appVOList = new ArrayList<AppVO>();
        if (CollectionUtils.isEmpty(appDOList)) {
            return appVOList;
        }
        for (AppDO appDO : appDOList) {
            AppVO appVO = new AppVO();
            DO2VO_BC.copy(appDO, appVO, null);
            appVOList.add(appVO);
        }
        return appVOList;
    }

    /**
     * 把数据库返回的DO对象转换成页面展示VO对象
     *
     * @param appDO
     * @return
     */
    public static AppVO convert2VO(AppDO appDO) {
        if (appDO == null) {
            return null;
        }
        AppVO appVO = new AppVO();
        DO2VO_BC.copy(appDO, appVO, null);
        return appVO;
    }

    /**
     * 把页面上的DO对象转换成数据库存储的VO对象
     *
     * @param appVO
     * @return
     */
    public static AppDO convert2DO(AppVO appVO) {
        if (appVO == null) {
            return null;
        }
        AppDO appDO = new AppDO();
        VO2DO_BC.copy(appVO, appDO, null);
        return appDO;
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
