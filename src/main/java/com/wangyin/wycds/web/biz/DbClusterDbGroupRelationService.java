/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.dal.datainterface.DbClusterDbGroupRelationDAO;
import com.wangyin.wycds.web.dal.dataobject.DbClusterDbGroupRelationDO;
import com.wangyin.wycds.web.util.DbClusterDbGroupRelationUtil;
import com.wangyin.wycds.web.controller.vo.DbClusterDbGroupRelationVO;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 集群与群组关系管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/1 16:22 Exp $$
 */
@Service
public class DbClusterDbGroupRelationService {
    @Autowired
    private DbClusterDbGroupRelationDAO dbClusterDbGroupRelationDAO;

    public List<DbClusterDbGroupRelationVO> getDbClusterList(String dbClusterId) {
        List<DbClusterDbGroupRelationDO> dbClusterDOList = dbClusterDbGroupRelationDAO.getDbClusterDbGroupRelationList(dbClusterId);
        return DbClusterDbGroupRelationUtil.convert2VOList(dbClusterDOList);
    }

    public boolean insertDbCluster(String[] groupIds,String clusterId,String groupType) {
        if(ArrayUtils.isEmpty(groupIds)|| StringUtils.isBlank(clusterId)){
            return false;
        }
        DbClusterDbGroupRelationDO dbClusterDbGroupRelationDO=new DbClusterDbGroupRelationDO();
        dbClusterDbGroupRelationDO.setDbClusterId(clusterId);
        dbClusterDbGroupRelationDO.setGroupType(groupType);
        for(String groupId :groupIds){
            dbClusterDbGroupRelationDO.setDbGroupId(groupId);
            dbClusterDbGroupRelationDAO.insertDbClusterDbGroupRelation(dbClusterDbGroupRelationDO);
        }
        return true;
    }

    public boolean deleteDbCluster(List<String> ids) {
        return DbClusterDbGroupRelationUtil.checkIsOne(dbClusterDbGroupRelationDAO.deleteDbClusterDbGroupRelation(ids));
    }
}
