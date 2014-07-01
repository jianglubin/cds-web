/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.biz;

import com.wangyin.wycds.web.controller.vo.DbMonitorVO;
import com.wangyin.wycds.web.dal.datainterface.DbEventDAO;
import com.wangyin.wycds.web.dal.datainterface.DbInfoDAO;
import com.wangyin.wycds.web.dal.datainterface.DbMonitorDAO;
import com.wangyin.wycds.web.dal.dataobject.DbEventDO;
import com.wangyin.wycds.web.dal.dataobject.DbInfoDO;
import com.wangyin.wycds.web.dal.dataobject.DbMonitorDO;
import com.wangyin.wycds.web.enums.EventTypeEnum;
import com.wangyin.wycds.web.util.ConvertUtil;
import com.wangyin.wycds.web.util.Paginator;
import com.wangyin.wycds.web.util.TransactionTemplateUtils;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.StringUtils;
import org.junit.Assert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallbackWithoutResult;
import org.springframework.transaction.support.TransactionTemplate;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 监控项信息管理类
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/4/30 15:20 Exp $$
 */
@Service
public class DbMonitorService {
    @Autowired
    private DbMonitorDAO dbMonitorDAO;

    @Autowired
    private DbEventDAO dbEventDAO;

    @Autowired
    private DbInfoDAO dbInfoDAO;

    @Autowired
    private PlatformTransactionManager txManager;

    /**
     * 新增或者更新事件
     *
     * @param createBy
     * @param dbGroupId
     * @param dbMonitorId
     * @param eventTypeEnum
     */
    private void insertOrUpdateDO(String createBy, String dbGroupId, String dbMonitorId, EventTypeEnum eventTypeEnum) {
        if (StringUtils.isBlank(dbGroupId) || StringUtils.isBlank(dbMonitorId)) {
            return;
        }
        List<DbInfoDO> dbInfoDOs = dbInfoDAO.getDbInfoByGroupId(dbGroupId);
        if (CollectionUtils.isEmpty(dbInfoDOs)) {
            return;
        }
        for (DbInfoDO dbInfoDO : dbInfoDOs) {
            DbEventDO dbEventDO = new DbEventDO();
            dbEventDO.setCreateBy(createBy);
            dbEventDO.setDbInfoId(dbInfoDO.getId());
            dbEventDO.setDbMonitorId(dbMonitorId);
            dbEventDO.setDbType(dbInfoDO.getDbType());
            dbEventDO.setEventId(getEventId());
            dbEventDO.setIp(dbInfoDO.getIp());
            dbEventDO.setPort(dbInfoDO.getPort());
            dbEventDO.setMonitorGroupId(dbGroupId);
            dbEventDO.setEventType(eventTypeEnum.getCode());
            DbEventDO dbEventCount = dbEventDAO.getEventCount(dbInfoDO.getId(), dbMonitorId);
            if (dbEventCount == null) {
                dbEventDAO.insertEvent(dbEventDO);
            } else {
                dbEventDO.setId(dbEventCount.getId());
                dbEventDAO.updateEvent(dbEventDO);
            }
        }

    }

    /**
     * 获取eventId
     *
     * @return
     */
    private String getEventId() {
        return String.valueOf(new Date().getTime());
    }

    /**
     * 获取监控列表
     *
     * @param paginator
     * @return
     */
    public List<DbMonitorVO> getDbMonitorList(Paginator paginator) {
        List<DbMonitorDO> dbMonitorDOs = dbMonitorDAO.getDbMonitorList(paginator);
        List<DbMonitorVO> dbMonitorVOs = new ArrayList<DbMonitorVO>();
        if (CollectionUtils.isEmpty(dbMonitorDOs)) {
            return null;
        }
        for (DbMonitorDO dbMonitorDO : dbMonitorDOs) {
            DbMonitorVO dbMonitorVO = new DbMonitorVO();
            ConvertUtil.copyProperties(dbMonitorDO, dbMonitorVO);
            dbMonitorVOs.add(dbMonitorVO);

        }
        return dbMonitorVOs;
    }

    /**
     * 获取监控数目
     *
     * @return
     */
    public Integer getDbMonitorListCount() {
        return dbMonitorDAO.getDbMonitorListCount();
    }

    /**
     * 获取监控数目
     *
     * @param dbMonitorVO
     * @return
     */
    public Integer getDbMonitorAndClassCount(DbMonitorVO dbMonitorVO) {
        return dbMonitorDAO.getDbMonitorAndClassCount(dbMonitorVO);
    }

    /**
     * 综合查询
     *
     * @param dbMonitorVO
     * @param groupId
     * @return
     */
    public List<DbMonitorVO> getDbMonitorAndClass(DbMonitorVO dbMonitorVO, String groupId) {
        List<DbMonitorDO> dbMonitorDOs = dbMonitorDAO.getDbMonitorAndClassNoPaginator(dbMonitorVO, groupId);
        List<DbMonitorVO> dbMonitorVOs = new ArrayList<DbMonitorVO>();
        if (CollectionUtils.isEmpty(dbMonitorDOs)) {
            return null;
        }
        for (DbMonitorDO dbMonitorDO : dbMonitorDOs) {
            DbMonitorVO newDbMonitorVO = new DbMonitorVO();
            ConvertUtil.copyProperties(dbMonitorDO, newDbMonitorVO);
            dbMonitorVOs.add(dbMonitorVO);

        }
        return dbMonitorVOs;
    }

    /**
     * 综合查询,带分页
     *
     * @param dbMonitorVO
     * @param paginator
     * @return
     */
    public List<DbMonitorVO> getDbMonitorAndClass(DbMonitorVO dbMonitorVO, Paginator paginator) {
        List<DbMonitorDO> dbMonitorDOs = dbMonitorDAO.getDbMonitorAndClass(dbMonitorVO, paginator.getBeginIndex(), paginator.getItemsPerPage());
        List<DbMonitorVO> dbMonitorVOs = new ArrayList<DbMonitorVO>();
        if (CollectionUtils.isEmpty(dbMonitorDOs)) {
            return null;
        }
        for (DbMonitorDO dbMonitorDO : dbMonitorDOs) {
            DbMonitorVO newDbMonitorVO = new DbMonitorVO();
            ConvertUtil.copyProperties(dbMonitorDO, newDbMonitorVO);
            dbMonitorVOs.add(dbMonitorVO);

        }
        return dbMonitorVOs;
    }

    /**
     * 获得单个监控信息
     *
     * @param id
     * @return
     */
    public DbMonitorVO getDbMonitor(String id) {
        DbMonitorDO dbMonitorDO = dbMonitorDAO.getDbMonitor(id);
        DbMonitorVO dbMonitorVO = new DbMonitorVO();
        ConvertUtil.copyProperties(dbMonitorDO, dbMonitorVO);
        return dbMonitorVO;
    }

    /**
     * 新增监控项
     *
     * @param dbMonitorVO
     */
    public void insertDbMonitor(final DbMonitorVO dbMonitorVO) {

        TransactionTemplate transactionTemplate = TransactionTemplateUtils.getDefaultTransactionTemplate(txManager);
        transactionTemplate.execute(new TransactionCallbackWithoutResult() {
            @Override
            protected void doInTransactionWithoutResult(TransactionStatus status) {
                DbMonitorDO dbMonitorDO = new DbMonitorDO();
                ConvertUtil.copyProperties(dbMonitorVO, dbMonitorDO);
                dbMonitorDAO.insertDbMonitor(dbMonitorDO);
                String dbGroupId = dbMonitorDO.getGroupId();
                String dbMonitorId = dbMonitorDO.getId();
                String createBy = dbMonitorDO.getCreateBy();
                insertOrUpdateDO(createBy, dbGroupId, dbMonitorId, EventTypeEnum.MONITOR_START);
            }
        });
    }

    /**
     * 更新监控项
     *
     * @param dbMonitorVO
     * @param oldGroupId
     */
    public void updateDbMonitor(final DbMonitorVO dbMonitorVO, final String oldGroupId) {
        TransactionTemplate transactionTemplate = TransactionTemplateUtils.getDefaultTransactionTemplate(txManager);
        transactionTemplate.execute(new TransactionCallbackWithoutResult() {
            @Override
            protected void doInTransactionWithoutResult(TransactionStatus status) {
                DbMonitorDO dbMonitorDO = new DbMonitorDO();
                ConvertUtil.copyProperties(dbMonitorVO, dbMonitorDO);
                dbMonitorDAO.updateDbMonitor(dbMonitorDO);
                String dbGroupId = dbMonitorVO.getGroupId();
                String dbMonitorId = dbMonitorVO.getId();
                String createBy = dbMonitorVO.getCreateBy();
                //停用老的事件
                if (StringUtils.isNotBlank(oldGroupId)) {
                    insertOrUpdateDO(createBy, oldGroupId, dbMonitorId, EventTypeEnum.MONITOR_STOP);
                }
                insertOrUpdateDO(createBy, dbGroupId, dbMonitorId, EventTypeEnum.MONITOR_START);
            }
        });

    }

    /**
     * 更新监控项状态
     *
     * @param id
     * @param modifiedBy
     * @param itemStatus
     * @param
     */
    public void udpateStatus(final String id, final String modifiedBy, final boolean itemStatus) {
        TransactionTemplate transactionTemplate = TransactionTemplateUtils.getDefaultTransactionTemplate(txManager);
        transactionTemplate.execute(new TransactionCallbackWithoutResult() {
            @Override
            protected void doInTransactionWithoutResult(TransactionStatus status) {
                dbMonitorDAO.udpateStatus(id, modifiedBy, String.valueOf(itemStatus));
                DbMonitorDO dbMonitorDO = dbMonitorDAO.getDbMonitor(id);
                String dbGroupId = dbMonitorDO.getGroupId();
                String dbMonitorId = dbMonitorDO.getId();
                String createBy = dbMonitorDO.getCreateBy();
                insertOrUpdateDO(createBy, dbGroupId, dbMonitorId, itemStatus ? EventTypeEnum.MONITOR_STOP : EventTypeEnum.MONITOR_START);
            }
        });
    }
}
