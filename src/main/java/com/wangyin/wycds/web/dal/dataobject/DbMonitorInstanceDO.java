/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.dataobject;

import java.io.Serializable;

/**
 * 监控实例表
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/29 11:19 Exp $$
 */
public class DbMonitorInstanceDO implements Serializable {

    private static final long serialVersionUID = -3513651210308552166L;
    /**
     * 主键id
     */
    private String id;
    /**
     * 监控项id
     */
    private String dbMonitorId;
    /**
     * 创建时间
     */
    private String creationDate;
    /**
     * 监控项
     */
    private String monitorItem;
    /**
     * 状态,OK（正常）、WARNING（警告）、CRITICALl（宕机）
     */
    private String status;
    /**
     * 监控值
     */
    private String monitorValue;
    /**
     * 积分（总分100）
     */
    private String integral;
    /**
     * 连续错误次数
     */
    private String errorNum;
    /**
     * 报警内容
     */
    private String alarmMsg;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDbMonitorId() {
        return dbMonitorId;
    }

    public void setDbMonitorId(String dbMonitorId) {
        this.dbMonitorId = dbMonitorId;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }

    public String getMonitorItem() {
        return monitorItem;
    }

    public void setMonitorItem(String monitorItem) {
        this.monitorItem = monitorItem;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getMonitorValue() {
        return monitorValue;
    }

    public void setMonitorValue(String monitorValue) {
        this.monitorValue = monitorValue;
    }

    public String getIntegral() {
        return integral;
    }

    public void setIntegral(String integral) {
        this.integral = integral;
    }

    public String getErrorNum() {
        return errorNum;
    }

    public void setErrorNum(String errorNum) {
        this.errorNum = errorNum;
    }

    public String getAlarmMsg() {
        return alarmMsg;
    }

    public void setAlarmMsg(String alarmMsg) {
        this.alarmMsg = alarmMsg;
    }
}
