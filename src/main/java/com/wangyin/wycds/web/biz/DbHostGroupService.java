/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.controller.vo.DbHostGroupVO;
import com.wangyin.wycds.web.dal.datainterface.DbHostGroupDAO;
import com.wangyin.wycds.web.dal.dataobject.DbHostGroupDO;
import com.wangyin.wycds.web.util.ConvertUtil;
import com.wangyin.wycds.web.util.Paginator;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 监控数据库组信息管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/25 11:41 Exp $$
 */
@Service
public class DbHostGroupService {
    @Autowired
    private DbHostGroupDAO dbHostGroupDAO;

    public List<DbHostGroupVO> getDbHostGroupList() {
        List<DbHostGroupDO> dbHostGroupDOs = dbHostGroupDAO.getDbHostGroupAllList();
        List<DbHostGroupVO> dbHostGroupVOs = new ArrayList<DbHostGroupVO>();
        if (CollectionUtils.isEmpty(dbHostGroupDOs)) {
            return null;
        }
        for (DbHostGroupDO dbHostGroupDO : dbHostGroupDOs) {
            DbHostGroupVO dbHostGroupVO = new DbHostGroupVO();
            ConvertUtil.copyProperties(dbHostGroupDO, dbHostGroupVO);
            dbHostGroupVOs.add(dbHostGroupVO);
        }
        return dbHostGroupVOs;
    }

    public List<DbHostGroupVO> getDbHostGroupList(Paginator paginator) {
        List<DbHostGroupDO> dbHostGroupDOs = dbHostGroupDAO.getDbHostGroupList(paginator);
        List<DbHostGroupVO> dbHostGroupVOs = new ArrayList<DbHostGroupVO>();
        if (CollectionUtils.isEmpty(dbHostGroupDOs)) {
            return null;
        }
        for (DbHostGroupDO dbHostGroupDO : dbHostGroupDOs) {
            DbHostGroupVO dbHostGroupVO = new DbHostGroupVO();
            ConvertUtil.copyProperties(dbHostGroupDO, dbHostGroupVO);
            dbHostGroupVOs.add(dbHostGroupVO);
        }
        return dbHostGroupVOs;
    }

    public Integer getDbHostGroupListCount() {
        return dbHostGroupDAO.getDbHostGroupListCount();
    }

    public Integer getDbHostGroupAndClassCount(DbHostGroupVO dbHostGroupVO) {
        return dbHostGroupDAO.getDbHostGroupAndClassCount(dbHostGroupVO);
    }

    public List<DbHostGroupVO> getDbHostGroupAndClass(DbHostGroupVO dbHostGroupVO, String clusterId) {
        List<DbHostGroupDO> dbHostGroupDOs = dbHostGroupDAO.getDbHostGroupAndClassNoPaginator(dbHostGroupVO, clusterId);
        List<DbHostGroupVO> dbHostGroupVOs = new ArrayList<DbHostGroupVO>();
        if (CollectionUtils.isEmpty(dbHostGroupDOs)) {
            return null;
        }
        for (DbHostGroupDO dbHostGroupDO : dbHostGroupDOs) {
            DbHostGroupVO newDbHostGroupVO = new DbHostGroupVO();
            ConvertUtil.copyProperties(dbHostGroupDO, newDbHostGroupVO);
            dbHostGroupVOs.add(newDbHostGroupVO);
        }
        return dbHostGroupVOs;
    }

    public List<DbHostGroupVO> getDbHostGroupAndClass(DbHostGroupVO dbHostGroupVO, Paginator paginator) {
        List<DbHostGroupDO> dbHostGroupDOs = dbHostGroupDAO.getDbHostGroupAndClass(dbHostGroupVO, paginator.getBeginIndex(), paginator.getItemsPerPage());
        List<DbHostGroupVO> dbHostGroupVOs = new ArrayList<DbHostGroupVO>();
        if (CollectionUtils.isEmpty(dbHostGroupDOs)) {
            return null;
        }
        for (DbHostGroupDO dbHostGroupDO : dbHostGroupDOs) {
            DbHostGroupVO newDbHostGroupVO = new DbHostGroupVO();
            ConvertUtil.copyProperties(dbHostGroupDO, newDbHostGroupVO);
            dbHostGroupVOs.add(newDbHostGroupVO);
        }
        return dbHostGroupVOs;
    }

    public DbHostGroupVO getDbHostGroup(String id) {
        DbHostGroupVO dbHostGroupVO = new DbHostGroupVO();
        ConvertUtil.copyProperties(dbHostGroupDAO.getDbHostGroup(id), dbHostGroupVO);
        return dbHostGroupVO;
    }

    public void insertDbHostGroup(DbHostGroupVO dbHostGroupVO) {
        DbHostGroupDO dbHostGroupDO = new DbHostGroupDO();
        ConvertUtil.copyProperties(dbHostGroupVO, dbHostGroupDO);
        dbHostGroupDAO.insertDbHostGroup(dbHostGroupDO);
    }

    public void updateDbHostGroup(DbHostGroupVO dbHostGroupVO) {
        DbHostGroupDO dbHostGroupDO = new DbHostGroupDO();
        ConvertUtil.copyProperties(dbHostGroupVO, dbHostGroupDO);
        dbHostGroupDAO.updateDbHostGroup(dbHostGroupDO);
    }

    public void deleteDbHostGroup(String id, String modifiedBy) {
        dbHostGroupDAO.deleteDbHostGroup(id, modifiedBy);
    }
}
