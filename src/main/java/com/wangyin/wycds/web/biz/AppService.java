/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.controller.vo.AppVO;
import com.wangyin.wycds.web.dal.datainterface.AppDAO;
import com.wangyin.wycds.web.dal.dataobject.AppDO;
import com.wangyin.wycds.web.util.AppUtil;
import com.wangyin.wycds.web.util.Paginator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 应用信息管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/7 18:11 Exp $$
 */
@Service
public class AppService {

    @Autowired
    private AppDAO appDAO;

    public List<AppVO> getAppList(Paginator paginator) {
        List<AppDO> appDOList = appDAO.getAppList(paginator);
        return AppUtil.convert2VOList(appDOList);
    }

    public Integer getAppListCount() {
        return appDAO.getAppListCount();
    }

    public Integer getAppAndClassCount(AppVO appVO) {
        return appDAO.getAppAndClassCount(appVO);
    }

    public List<AppVO> getAppAndClass(AppVO appVO, Paginator paginator) {
        List<AppDO> appDOList = appDAO.getAppAndClass(appVO, paginator.getBeginIndex(), paginator.getItemsPerPage());
        return AppUtil.convert2VOList(appDOList);
    }

    public AppVO getApp(String id) {
        return AppUtil.convert2VO(appDAO.getApp(id));
    }

    public boolean insertApp(AppVO appVO) {
        return AppUtil.checkIsOne(appDAO.insertApp(AppUtil.convert2DO(appVO)));
    }

    public boolean updateApp(AppVO appVO) {
        return AppUtil.checkIsOne(appDAO.updateApp(AppUtil.convert2DO(appVO)));
    }

    public boolean deleteApp(String id, String modifiedBy) {
        return AppUtil.checkIsOne(appDAO.deleteApp(id, modifiedBy));
    }
}
