/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.controller.vo.DbInfoVO;
import com.wangyin.wycds.web.dal.datainterface.DbInfoDAO;
import com.wangyin.wycds.web.dal.dataobject.DbInfoDO;
import com.wangyin.wycds.web.util.DbInfoUtil;
import com.wangyin.wycds.web.util.Paginator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 数据库基本信息管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/4/30 15:20 Exp $$
 */
@Service
public class DbInfoService {
    @Autowired
    private DbInfoDAO dbInfoDAO;

    public List<DbInfoVO> getDbInfoList(Paginator paginator) {
        List<DbInfoDO> dbInfoDOList = dbInfoDAO.getDbInfoList(paginator);
        return DbInfoUtil.convert2VOList(dbInfoDOList);
    }

    public Integer getDbInfoListCount() {
        return dbInfoDAO.getDbInfoListCount();
    }

    public Integer getDbInfoAndClassCount(DbInfoVO dbInfoVO) {
        return dbInfoDAO.getDbInfoAndClassCount(dbInfoVO);
    }

    public List<DbInfoVO> getDbInfoAndClass(DbInfoVO dbInfoVO, String groupId) {
        List<DbInfoDO> dbInfoDOList = dbInfoDAO.getDbInfoAndClassNoPaginator(dbInfoVO, groupId);
        return DbInfoUtil.convert2VOList(dbInfoDOList);
    }

    public List<DbInfoVO> getDbInfoAndClass(DbInfoVO dbInfoVO, Paginator paginator) {
        List<DbInfoDO> dbInfoDOList = dbInfoDAO.getDbInfoAndClass(dbInfoVO, paginator.getBeginIndex(), paginator.getItemsPerPage());
        return DbInfoUtil.convert2VOList(dbInfoDOList);
    }

    public DbInfoVO getDbInfo(String id) {
        return DbInfoUtil.convert2VO(dbInfoDAO.getDbInfo(id));
    }

    public boolean insertDbInfo(DbInfoVO dbInfoVO) {
        return DbInfoUtil.checkIsOne(dbInfoDAO.insertDbInfo(DbInfoUtil.convert2DO(dbInfoVO)));
    }

    public boolean updateDbInfo(DbInfoVO dbInfoVO) {
        return DbInfoUtil.checkIsOne(dbInfoDAO.updateDbInfo(DbInfoUtil.convert2DO(dbInfoVO)));
    }

    public boolean deleteDbInfo(String id,String modifiedBy) {
        return DbInfoUtil.checkIsOne(dbInfoDAO.deleteDbInfo(id,modifiedBy));
    }

}
