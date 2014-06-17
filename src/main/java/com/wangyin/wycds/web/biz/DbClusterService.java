/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.dal.datainterface.DbClusterDAO;
import com.wangyin.wycds.web.dal.dataobject.DbClusterDO;
import com.wangyin.wycds.web.util.DbClusterUtil;
import com.wangyin.wycds.web.util.Paginator;
import com.wangyin.wycds.web.controller.vo.DbClusterVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 数据库集群管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 16:22 Exp $$
 */
@Service
public class DbClusterService {
    @Autowired
    private DbClusterDAO dbClusterDAO;

    public List<DbClusterVO> getDbClusterList() {
        List<DbClusterDO> dbClusterDOList = dbClusterDAO.getDbClusterAllList();
        return DbClusterUtil.convert2VOList(dbClusterDOList);
    }

    public List<DbClusterVO> getDbClusterList(Paginator paginator) {
        List<DbClusterDO> dbClusterDOList = dbClusterDAO.getDbClusterList(paginator);
        return DbClusterUtil.convert2VOList(dbClusterDOList);
    }

    public Integer getDbClusterListCount() {
        return dbClusterDAO.getDbClusterListCount();
    }

    public Integer getDbClusterAndClassCount(DbClusterVO dbGroupVO) {
        return dbClusterDAO.getDbClusterAndClassCount(dbGroupVO);
    }

    public List<DbClusterVO> getDbClusterAndClass(DbClusterVO dbGroupVO, Paginator paginator) {
        List<DbClusterDO> dbClusterDOList = dbClusterDAO.getDbClusterAndClass(dbGroupVO, paginator.getBeginIndex(), paginator.getItemsPerPage());
        return DbClusterUtil.convert2VOList(dbClusterDOList);
    }

    public DbClusterVO getDbCluster(String id) {
        return DbClusterUtil.convert2VO(dbClusterDAO.getDbCluster(id));
    }

    public boolean insertDbCluster(DbClusterVO dbGroupVO) {
        return DbClusterUtil.checkIsOne(dbClusterDAO.insertDbCluster(DbClusterUtil.convert2DO(dbGroupVO)));
    }

    public boolean updateDbCluster(DbClusterVO dbGroupVO) {
        return DbClusterUtil.checkIsOne(dbClusterDAO.updateDbCluster(DbClusterUtil.convert2DO(dbGroupVO)));
    }

    public boolean deleteDbCluster(String id,String modifiedBy) {
        return DbClusterUtil.checkIsOne(dbClusterDAO.deleteDbCluster(id, modifiedBy));
    }
}
