/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.dal.datainterface.DbGroupDAO;
import com.wangyin.wycds.web.dal.dataobject.DbGroupDO;
import com.wangyin.wycds.web.util.DbGroupUtil;
import com.wangyin.wycds.web.util.Paginator;
import com.wangyin.wycds.web.controller.vo.DbGroupVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 数据库基本信息管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 11:41 Exp $$
 */
@Service
public class DbGroupService {
    @Autowired
    private DbGroupDAO dbGroupDAO;

    public List<DbGroupVO> getDbGroupList() {
        List<DbGroupDO> dbGroupDOList = dbGroupDAO.getDbGroupAllList();
        return DbGroupUtil.convert2VOList(dbGroupDOList);
    }

    public List<DbGroupVO> getDbGroupList(Paginator paginator) {
        List<DbGroupDO> dbGroupDOList = dbGroupDAO.getDbGroupList(paginator);
        return DbGroupUtil.convert2VOList(dbGroupDOList);
    }

    public Integer getDbGroupListCount() {
        return dbGroupDAO.getDbGroupListCount();
    }

    public Integer getDbGroupAndClassCount(DbGroupVO dbGroupVO) {
        return dbGroupDAO.getDbGroupAndClassCount(dbGroupVO);
    }

    public List<DbGroupVO> getDbGroupAndClass(DbGroupVO dbGroupVO,String clusterId) {
        List<DbGroupDO> dbGroupDOList = dbGroupDAO.getDbGroupAndClassNoPaginator(dbGroupVO, clusterId);
        return DbGroupUtil.convert2VOList(dbGroupDOList);
    }

    public List<DbGroupVO> getDbGroupAndClass(DbGroupVO dbGroupVO, Paginator paginator) {
        List<DbGroupDO> dbGroupDOList = dbGroupDAO.getDbGroupAndClass(dbGroupVO, paginator.getBeginIndex(), paginator.getItemsPerPage());
        return DbGroupUtil.convert2VOList(dbGroupDOList);
    }

    public DbGroupVO getDbGroup(String id) {
        return DbGroupUtil.convert2VO(dbGroupDAO.getDbGroup(id));
    }

    public boolean insertDbGroup(DbGroupVO dbGroupVO) {
        return DbGroupUtil.checkIsOne(dbGroupDAO.insertDbGroup(DbGroupUtil.convert2DO(dbGroupVO)));
    }

    public boolean updateDbGroup(DbGroupVO dbGroupVO) {
        return DbGroupUtil.checkIsOne(dbGroupDAO.updateDbGroup(DbGroupUtil.convert2DO(dbGroupVO)));
    }

    public boolean deleteDbGroup(String id,String modifiedBy) {
        return DbGroupUtil.checkIsOne(dbGroupDAO.deleteDbGroup(id,modifiedBy));
    }
}
