/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.util;

import com.wangyin.wycds.web.controller.form.DbInfoForm;
import com.wangyin.wycds.web.dal.dataobject.DbInfoDO;
import com.wangyin.wycds.web.controller.vo.DbInfoVO;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.cglib.beans.BeanCopier;

import java.util.ArrayList;
import java.util.List;

/**
 * 数据库信息工具类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/4/30 23:23 Exp $$
 */
public class DbInfoUtil {
    /**
     * 转换器
     */
    private final static BeanCopier DO2VO_BC = BeanCopier.create(DbInfoDO.class,
            DbInfoVO.class, false);
    /**
     * 转换器
     */
    private final static BeanCopier VO2DO_BC = BeanCopier.create(DbInfoVO.class,
            DbInfoDO.class, false);

    /**
     * 转换器
     */
    private final static BeanCopier FORM2VO_BC=BeanCopier.create(DbInfoForm.class,DbInfoVO.class,false);

    /**
     * 把查询表单Form对象转换成页面展示VO对象
     *
     * @param dbInfoForm
     * @return
     */
    public static DbInfoVO convert2VO(DbInfoForm dbInfoForm){
        if (dbInfoForm == null) {
            return null;
        }
        DbInfoVO dbInfoVO = new DbInfoVO();
        FORM2VO_BC.copy(dbInfoForm, dbInfoVO, null);
        return dbInfoVO;
    }
    /**
     * 把数据库返回的DO对象列表转换成页面展示VO对象列表
     *
     * @param dbInfoDOList
     * @return
     */
    public static List<DbInfoVO> convert2VOList(List<DbInfoDO> dbInfoDOList) {
        List<DbInfoVO> dbInfoVOList = new ArrayList<DbInfoVO>();
        if (CollectionUtils.isEmpty(dbInfoDOList)) {
            return dbInfoVOList;
        }
        for (DbInfoDO dbInfoDO : dbInfoDOList) {
            DbInfoVO dbInfoVO = new DbInfoVO();
            DO2VO_BC.copy(dbInfoDO, dbInfoVO, null);
            dbInfoVOList.add(dbInfoVO);
        }
        return dbInfoVOList;
    }

    /**
     * 把数据库返回的DO对象转换成页面展示VO对象
     *
     * @param dbInfoDO
     * @return
     */
    public static DbInfoVO convert2VO(DbInfoDO dbInfoDO) {
        if (dbInfoDO == null) {
            return null;
        }
        DbInfoVO dbInfoVO = new DbInfoVO();
        DO2VO_BC.copy(dbInfoDO, dbInfoVO, null);
        return dbInfoVO;
    }

    /**
     * 把页面上的DO对象转换成数据库存储的VO对象
     *
     * @param dbInfoVO
     * @return
     */
    public static DbInfoDO convert2DO(DbInfoVO dbInfoVO) {
        if (dbInfoVO == null) {
            return null;
        }
        DbInfoDO dbInfoDO = new DbInfoDO();
        VO2DO_BC.copy(dbInfoVO, dbInfoDO, null);
        return dbInfoDO;
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
