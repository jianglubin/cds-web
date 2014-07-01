/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.dal.dataobject;

import java.io.Serializable;

/**
 * 监控DO
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/27 15:50 Exp $$
 */
public class DbMonitorDO implements Serializable {

    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 7178080172888869590L;
    /**
     * 监控ID
     */
    private String id;
    /**
     * 监控组id
     */
    private String groupId;

    /**
     * 监控项
     */
    private String item;

    /**
     * 监控项描述
     */
    private String itemDesc;

    /**
     * 监控脚本类型
     */
    private String scriptType;

    /**
     * 脚本地址
     */
    private String scriptPath;

    /**
     * 间隔检测时间单位
     */
    private String checkInterval;

    /**
     * 允许最大连续错误次数
     */
    private String errorNumUpper;

    /**
     * 监控次数
     */
    private String checkTimes;

    /**
     * 阈值上限
     */
    private String thresholdUpper;

    /**
     * 阈值下限
     */
    private String thresholdLower;

    /**
     * 权重
     */
    private String power;

    /**
     * 创建人
     */
    private String createBy;
    /**
     * 创建时间
     */
    private String creationDate;
    /**
     * 最后修改人
     */
    private String modifiedBy;
    /**
     * 最后修改时间
     */
    private String modificationDate;
    /**
     * 删除状态(true已删除,false未删除)
     */
    private String deleteStatus;


    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public String getItem() {
        return item;
    }

    public void setItem(String item) {
        this.item = item;
    }

    public String getItemDesc() {
        return itemDesc;
    }

    public void setItemDesc(String itemDesc) {
        this.itemDesc = itemDesc;
    }

    public String getScriptType() {
        return scriptType;
    }

    public void setScriptType(String scriptType) {
        this.scriptType = scriptType;
    }

    public String getScriptPath() {
        return scriptPath;
    }

    public void setScriptPath(String scriptPath) {
        this.scriptPath = scriptPath;
    }

    public String getCheckInterval() {
        return checkInterval;
    }

    public void setCheckInterval(String checkInterval) {
        this.checkInterval = checkInterval;
    }

    public String getErrorNumUpper() {
        return errorNumUpper;
    }

    public void setErrorNumUpper(String errorNumUpper) {
        this.errorNumUpper = errorNumUpper;
    }

    public String getCheckTimes() {
        return checkTimes;
    }

    public void setCheckTimes(String checkTimes) {
        this.checkTimes = checkTimes;
    }

    public String getThresholdUpper() {
        return thresholdUpper;
    }

    public void setThresholdUpper(String thresholdUpper) {
        this.thresholdUpper = thresholdUpper;
    }

    public String getThresholdLower() {
        return thresholdLower;
    }

    public void setThresholdLower(String thresholdLower) {
        this.thresholdLower = thresholdLower;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public String getModificationDate() {
        return modificationDate;
    }

    public void setModificationDate(String modificationDate) {
        this.modificationDate = modificationDate;
    }

    public String getDeleteStatus() {
        return deleteStatus;
    }

    public void setDeleteStatus(String deleteStatus) {
        this.deleteStatus = deleteStatus;
    }
}
