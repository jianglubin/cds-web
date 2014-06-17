/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.util;

import com.wangyin.wycds.web.dal.dataobject.DataSourceDO;
import com.wangyin.wycds.web.controller.vo.DataSourceVO;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.cglib.beans.BeanCopier;

import java.util.ArrayList;
import java.util.List;

/**
 * 数据源工具类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 21:10 Exp $$
 */
public class DataSourceUtil {
    /**
     * 转换器
     */
    private final static BeanCopier DO2VO_BC = BeanCopier.create(DataSourceDO.class,
            DataSourceVO.class, false);
    /**
     * 转换器
     */
    private final static BeanCopier VO2DO_BC = BeanCopier.create(DataSourceVO.class,
            DataSourceDO.class, false);


    /**
     * 把数据库返回的DO对象列表转换成页面展示VO对象列表
     *
     * @param dataSourceDOList
     * @return
     */
    public static List<DataSourceVO> convert2VOList(List<DataSourceDO> dataSourceDOList) {
        List<DataSourceVO> dataSourceVOList = new ArrayList<DataSourceVO>();
        if (CollectionUtils.isEmpty(dataSourceDOList)) {
            return dataSourceVOList;
        }
        for (DataSourceDO dataSourceDO : dataSourceDOList) {
            DataSourceVO dataSourceVO = new DataSourceVO();
            DO2VO_BC.copy(dataSourceDO, dataSourceVO, null);
            dataSourceVOList.add(dataSourceVO);
        }
        return dataSourceVOList;
    }

    /**
     * 把数据库返回的DO对象转换成页面展示VO对象
     *
     * @param dataSourceDO
     * @return
     */
    public static DataSourceVO convert2VO(DataSourceDO dataSourceDO) {
        if (dataSourceDO == null) {
            return null;
        }
        DataSourceVO dataSourceVO = new DataSourceVO();
        DO2VO_BC.copy(dataSourceDO, dataSourceVO, null);
        return dataSourceVO;
    }

    /**
     * 把页面上的DO对象转换成数据库存储的VO对象
     *
     * @param dataSourceVO
     * @return
     */
    public static DataSourceDO convert2DO(DataSourceVO dataSourceVO) {
        if (dataSourceVO == null) {
            return null;
        }
        DataSourceDO dataSourceDO = new DataSourceDO();
        VO2DO_BC.copy(dataSourceVO, dataSourceDO, null);
        return dataSourceDO;
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

