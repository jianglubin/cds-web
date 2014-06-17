/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.util;

import com.wangyin.wycds.web.controller.form.DbGroupForm;
import com.wangyin.wycds.web.dal.dataobject.DbGroupDO;
import com.wangyin.wycds.web.controller.vo.DbGroupVO;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.cglib.beans.BeanCopier;

import java.util.ArrayList;
import java.util.List;

/**
 * 数据库群组信息工具类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 11:46 Exp $$
 */
public class DbGroupUtil {
    /**
     * 转换器
     */
    private final static BeanCopier DO2VO_BC = BeanCopier.create(DbGroupDO.class,
            DbGroupVO.class, false);
    /**
     * 转换器
     */
    private final static BeanCopier VO2DO_BC = BeanCopier.create(DbGroupVO.class,
            DbGroupDO.class, false);

    /**
     * 转换器
     */
    private final static BeanCopier FORM2VO_BC=BeanCopier.create(DbGroupForm.class,DbGroupVO.class,false);

    /**
     * 把页面查询表单转换成展示VO
     * @param dbGroupForm
     * @return
     */
    public static DbGroupVO convert2VO(DbGroupForm dbGroupForm){
        if(dbGroupForm==null){
            return null;
        }
        DbGroupVO dbGroupVO = new DbGroupVO();
        FORM2VO_BC.copy(dbGroupForm, dbGroupVO, null);
        return dbGroupVO;
    }
    /**
     * 把数据库返回的DO对象列表转换成页面展示VO对象列表
     *
     * @param dbGroupDOList
     * @return
     */
    public static List<DbGroupVO> convert2VOList(List<DbGroupDO> dbGroupDOList) {
        List<DbGroupVO> dbGroupVOList = new ArrayList<DbGroupVO>();
        if (CollectionUtils.isEmpty(dbGroupDOList)) {
            return dbGroupVOList;
        }
        for (DbGroupDO dbGroupDO : dbGroupDOList) {
            DbGroupVO dbGroupVO = new DbGroupVO();
            DO2VO_BC.copy(dbGroupDO, dbGroupVO, null);
            dbGroupVOList.add(dbGroupVO);
        }
        return dbGroupVOList;
    }

    /**
     * 把数据库返回的DO对象转换成页面展示VO对象
     *
     * @param dbGroupDO
     * @return
     */
    public static DbGroupVO convert2VO(DbGroupDO dbGroupDO) {
        if (dbGroupDO == null) {
            return null;
        }
        DbGroupVO dbGroupVO = new DbGroupVO();
        DO2VO_BC.copy(dbGroupDO, dbGroupVO, null);
        return dbGroupVO;
    }

    /**
     * 把页面上的DO对象转换成数据库存储的VO对象
     *
     * @param dbGroupVO
     * @return
     */
    public static DbGroupDO convert2DO(DbGroupVO dbGroupVO) {
        if (dbGroupVO == null) {
            return null;
        }
        DbGroupDO dbGroupDO = new DbGroupDO();
        VO2DO_BC.copy(dbGroupVO, dbGroupDO, null);
        return dbGroupDO;
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
