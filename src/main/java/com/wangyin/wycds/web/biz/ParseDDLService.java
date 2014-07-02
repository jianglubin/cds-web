/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.controller.vo.DbInfoDbGroupRelationVO;
import com.wangyin.wycds.web.controller.vo.SqlVO;
import com.wangyin.wycds.web.dal.datainterface.ColumnInfoDAO;
import com.wangyin.wycds.web.dal.datainterface.DbClusterDbGroupRelationDAO;
import com.wangyin.wycds.web.dal.datainterface.DbInfoDbGroupRelationDAO;
import com.wangyin.wycds.web.dal.datainterface.SplittingKeyRuleRelationDAO;
import com.wangyin.wycds.web.dal.dataobject.ColumnInfoDO;
import com.wangyin.wycds.web.dal.dataobject.DbClusterDbGroupRelationDO;
import com.wangyin.wycds.web.dal.dataobject.DbInfoDbGroupRelationDO;
import com.wangyin.wycds.web.dal.dataobject.SplittingKeyRuleRelationDO;
import com.wangyin.wycds.web.util.DbInfoDbGroupRelationUtil;
import com.wangyin.wycds.web.util.JDBCUtil;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * 解析DDL语句,获取表名
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/5/10 11:43 Exp $$
 */
@Service
public class ParseDDLService {

    @Autowired
    private ColumnInfoDAO columnInfoDAO;

    @Autowired
    private DbClusterDbGroupRelationDAO dbClusterDbGroupRelationDAO;

    @Autowired
    private DbInfoDbGroupRelationDAO dbInfoDbGroupRelationDAO;

    @Autowired
    private SplittingKeyRuleRelationDAO splittingKeyRuleRelationDAO;


    /**
     * 根据sql查找需要操作的所有关联数据库信息.
     * 1.获取表名,通过表名查找该表是否有切分信息
     * 2.如果没有切分信息则查询数据簇下的所有群组,global和work全部执行操作
     * 3.如果有切分信息则需要根据切分键获取实际需要操作的库和表后缀,拼装真实的sql执行
     *
     * @param sql
     * @param clusterId
     */
    public SqlVO executeSQL(String sql, String clusterId) {
        SqlVO sqlVO = JDBCUtil.getTableName(sql);
        if (StringUtils.isBlank(sqlVO.getTableName()) && StringUtils.isBlank(sqlVO.getColumn())) {
            return sqlVO;
        }
        //获得集群下的所有群组
        List<DbClusterDbGroupRelationDO> dbClusterDbGroupRelationDOs = dbClusterDbGroupRelationDAO.getDbClusterDbGroupRelationList(clusterId);
        if (CollectionUtils.isEmpty(dbClusterDbGroupRelationDOs)) {
            return null;
        }
        //获取切分信息
        List<ColumnInfoDO> columnInfoDOs = columnInfoDAO.getColumnInfoAndClassNoPaginator(sqlVO.getTableName(), sqlVO.getColumn());
        if (CollectionUtils.isEmpty(columnInfoDOs)) {
            //不存在切分信息,群组下的数据库全部执行相同sql
            executeNoSplitting(dbClusterDbGroupRelationDOs, sql);
        } else {
            //存在切分信息,全局组执行原始sql,工作组执行替换规则后的sql
            executeSplitting(sqlVO, columnInfoDOs, sql, dbClusterDbGroupRelationDOs);
        }
        return sqlVO;
    }

    /**
     * 执行没有切分信息的DDL语句
     *
     * @param dbClusterDbGroupRelationDOs
     * @param sql
     */
    private void executeNoSplitting(List<DbClusterDbGroupRelationDO> dbClusterDbGroupRelationDOs, String sql) {
        List<String> groupIdList = new ArrayList<String>();
        for (DbClusterDbGroupRelationDO dbClusterDbGroupRelationDO : dbClusterDbGroupRelationDOs) {
            groupIdList.add(dbClusterDbGroupRelationDO.getDbGroupId());
        }
        List<DbInfoDbGroupRelationDO> dbInfoDbGroupRelationDOs = dbInfoDbGroupRelationDAO.getDbInfoDbGroupRelationListByIds(groupIdList);
        if (CollectionUtils.isEmpty(dbInfoDbGroupRelationDOs)) {
            return;
        }
        List<DbInfoDbGroupRelationVO> dbInfoDbGroupRelationVOs = DbInfoDbGroupRelationUtil.convert2VOList(dbInfoDbGroupRelationDOs);
        for (DbInfoDbGroupRelationVO dbInfoDbGroupRelationVO : dbInfoDbGroupRelationVOs) {
            JDBCUtil.executeSQL(sql, dbInfoDbGroupRelationVO);
        }
    }

    /**
     * 执行存在切分信息的DDL语句
     *
     * @param sqlVO
     * @param columnInfoDOs
     * @param sql
     * @param dbClusterDbGroupRelationDOs
     */
    private void executeSplitting(SqlVO sqlVO, List<ColumnInfoDO> columnInfoDOs, String sql, List<DbClusterDbGroupRelationDO> dbClusterDbGroupRelationDOs) {
        List<SplittingKeyRuleRelationDO> splittingKeyRuleRelationDOsAll = new ArrayList<SplittingKeyRuleRelationDO>();
        List<String> groupIdList = new ArrayList<String>();
        List<DbInfoDbGroupRelationVO> globalDbInfoDbGroupRelationVOs = new ArrayList<DbInfoDbGroupRelationVO>();
        for (DbClusterDbGroupRelationDO dbClusterDbGroupRelationDO : dbClusterDbGroupRelationDOs) {
            if (StringUtils.equalsIgnoreCase(dbClusterDbGroupRelationDO.getGroupType(), "Work")) {
                groupIdList.add(dbClusterDbGroupRelationDO.getDbGroupId());
            } else {
                List<String> globalList = new ArrayList<String>();
                globalList.add(dbClusterDbGroupRelationDO.getDbGroupId());
                List<DbInfoDbGroupRelationDO> dbInfoDbGroupRelationDOs = dbInfoDbGroupRelationDAO.getDbInfoDbGroupRelationListByIds(globalList);
                globalDbInfoDbGroupRelationVOs = DbInfoDbGroupRelationUtil.convert2VOList(dbInfoDbGroupRelationDOs);
            }
        }
        //全局组执行原始sql
        for (DbInfoDbGroupRelationVO dbInfoDbGroupRelationVO : globalDbInfoDbGroupRelationVOs) {
            JDBCUtil.executeSQL(sql, dbInfoDbGroupRelationVO);
        }
        //整合所有的切分信息
        for (ColumnInfoDO columnInfoDO : columnInfoDOs) {
            if (StringUtils.isBlank(columnInfoDO.getSplittingKeyId())) {
                continue;
            }
            List<SplittingKeyRuleRelationDO> splittingKeyRuleRelationDOs = splittingKeyRuleRelationDAO.getSplittingKeyRuleRelationListBySplittingKeyId(columnInfoDO.getSplittingKeyId(), groupIdList);
            if (CollectionUtils.isEmpty(splittingKeyRuleRelationDOs)) {
                continue;
            }
            splittingKeyRuleRelationDOsAll.addAll(splittingKeyRuleRelationDOs);
        }
        //通过切分信息找到规则对应的组合规则对应的表后缀,替换sql中的表名,在对应的的群组下的数据库中执行替换后的sql
        for (SplittingKeyRuleRelationDO splittingKeyRuleRelationDO : splittingKeyRuleRelationDOsAll) {
            List<String> groupIds = new ArrayList<String>();
            groupIds.add(splittingKeyRuleRelationDO.getDbGroupId());
            List<DbInfoDbGroupRelationDO> dbInfoDbGroupRelationDOs = dbInfoDbGroupRelationDAO.getDbInfoDbGroupRelationListByIds(groupIds);
            String newSql = changeSql(sqlVO, sql, splittingKeyRuleRelationDO);
            for (DbInfoDbGroupRelationVO dbInfoDbGroupRelationVO : DbInfoDbGroupRelationUtil.convert2VOList(dbInfoDbGroupRelationDOs)) {
                JDBCUtil.executeSQL(newSql, dbInfoDbGroupRelationVO);
            }
        }
    }

    /**
     * 替换sql,把原来的表名替换成规则中的实际表名
     *
     * @param sqlVO
     * @param sql
     * @param splittingKeyRuleRelationDO
     * @return
     */
    private String changeSql(SqlVO sqlVO, String sql, SplittingKeyRuleRelationDO splittingKeyRuleRelationDO) {
        String newTableName = sqlVO.getTableName() + splittingKeyRuleRelationDO.getTableSuffix();
        return StringUtils.replace(sql, sqlVO.getTableName(), newTableName);
    }

}
