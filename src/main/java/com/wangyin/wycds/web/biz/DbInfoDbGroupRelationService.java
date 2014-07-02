/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.dal.datainterface.DbInfoDbGroupRelationDAO;
import com.wangyin.wycds.web.dal.dataobject.DbInfoDbGroupRelationDO;
import com.wangyin.wycds.web.util.DbInfoDbGroupRelationUtil;
import com.wangyin.wycds.web.controller.vo.DbInfoDbGroupRelationVO;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 群组与数据库关系管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/3 20:21 Exp $$
 */
@Service
public class DbInfoDbGroupRelationService {

    @Autowired
    private DbInfoDbGroupRelationDAO dbInfoDbGroupRelationDAO;

    public List<DbInfoDbGroupRelationVO> getDbInfoList(String dbGroupId) {
        List<DbInfoDbGroupRelationDO> dbGroupDOList = dbInfoDbGroupRelationDAO.getDbInfoDbGroupRelationList(dbGroupId);
        return DbInfoDbGroupRelationUtil.convert2VOList(dbGroupDOList);
    }

    public boolean insertDbCluster(String[] dbInfoIds, String groupId, String masterOrSlave) {
        if (ArrayUtils.isEmpty(dbInfoIds) || StringUtils.isBlank(groupId) || StringUtils.isBlank(masterOrSlave)) {
            return false;
        }
        DbInfoDbGroupRelationDO dbDbInfoDbGroupRelationDO = new DbInfoDbGroupRelationDO();
        dbDbInfoDbGroupRelationDO.setDbGroupId(groupId);
        dbDbInfoDbGroupRelationDO.setMasterOrSlave(masterOrSlave);
        for (String infoId : dbInfoIds) {
            dbDbInfoDbGroupRelationDO.setDbInfoId(infoId);
            dbInfoDbGroupRelationDAO.insertDbInfoDbGroupRelation(dbDbInfoDbGroupRelationDO);
        }
        return true;
    }

    public boolean deleteDbCluster(List<String> ids) {
        return DbInfoDbGroupRelationUtil.checkIsOne(dbInfoDbGroupRelationDAO.deleteDbInfoDbGroupRelation(ids));
    }

    public boolean updateDbInfoDbGroupRelation(String masterOrSlave, String id) {
        return DbInfoDbGroupRelationUtil.checkIsOne(dbInfoDbGroupRelationDAO.updateDbInfoDbGroupRelation(masterOrSlave, id));
    }
}
