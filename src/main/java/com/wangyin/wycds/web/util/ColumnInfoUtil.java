/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.util;

import com.wangyin.wycds.web.controller.vo.ColumnInfoVO;
import com.wangyin.wycds.web.dal.dataobject.ColumnInfoDO;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.cglib.beans.BeanCopier;

import java.util.ArrayList;
import java.util.List;

/**
 * 切分键映射表字段信息工具类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/4 17:28 Exp $$
 */
public class ColumnInfoUtil {

    /**
     * 转换器
     */
    private final static BeanCopier DO2VO_BC = BeanCopier.create(ColumnInfoDO.class,
            ColumnInfoVO.class, false);
    /**
     * 转换器
     */
    private final static BeanCopier VO2DO_BC = BeanCopier.create(ColumnInfoVO.class,
            ColumnInfoDO.class, false);

    /**
     * 把数据库返回的DO对象列表转换成页面展示VO对象列表
     *
     * @param columnInfoDOList
     * @return
     */
    public static List<ColumnInfoVO> convert2VOList(List<ColumnInfoDO> columnInfoDOList) {
        List<ColumnInfoVO> columnInfoVOList = new ArrayList<ColumnInfoVO>();
        if (CollectionUtils.isEmpty(columnInfoDOList)) {
            return columnInfoVOList;
        }
        for (ColumnInfoDO columnInfoDO : columnInfoDOList) {
            ColumnInfoVO columnInfoVO = new ColumnInfoVO();
            DO2VO_BC.copy(columnInfoDO, columnInfoVO, null);
            columnInfoVOList.add(columnInfoVO);
        }
        return columnInfoVOList;
    }

    /**
     * 把数据库返回的DO对象转换成页面展示VO对象
     *
     * @param columnInfoDO
     * @return
     */
    public static ColumnInfoVO convert2VO(ColumnInfoDO columnInfoDO) {
        if (columnInfoDO == null) {
            return null;
        }
        ColumnInfoVO columnInfoVO = new ColumnInfoVO();
        DO2VO_BC.copy(columnInfoDO, columnInfoVO, null);
        return columnInfoVO;
    }

    /**
     * 把页面上的DO对象转换成数据库存储的VO对象
     *
     * @param columnInfoVO
     * @return
     */
    public static ColumnInfoDO convert2DO(ColumnInfoVO columnInfoVO) {
        if (columnInfoVO == null) {
            return null;
        }
        ColumnInfoDO columnInfoDO = new ColumnInfoDO();
        VO2DO_BC.copy(columnInfoVO, columnInfoDO, null);
        return columnInfoDO;
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
