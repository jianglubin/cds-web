/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-2014 All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.vo;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.web.multipart.MultipartFile;

/**
 * 监控项信息视图
 * @author 蒋鲁宾
 * @version v 0.1 2014/6/27 15:42 Exp $$
 */
public class DbMonitorVO extends BaseVO{

    /**
     * 监控ID
     */
    private String id;
    /**
     * 监控组id
     */
    @NotBlank(message = "监控组id不能为空!")
    private String groupId;

    /**
     * 监控项
     */
    @NotBlank(message = "监控项不能为空!")
    private String item;

    /**
     * 老监控组id
     */
    private String oldGroupId;

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
    private MultipartFile scriptPath;

    /**
     * 间隔检测时间单位
     */
    @NotBlank(message = "间隔检测时间单位不能为空!")
    private String checkInterval;

    /**
     * 允许最大连续错误次数
     */
    @NotBlank(message = "允许最大连续错误次数不能为空!")
    private String errorNumUpper;

    /**
     * 监控次数
     */
    @NotBlank(message = "监控次数不能为空!")
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
    @NotBlank(message = "权重不能为空!")
    private String power;

    public String getId() {

        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public String getOldGroupId() {
        return oldGroupId;
    }

    public void setOldGroupId(String oldGroupId) {
        this.oldGroupId = oldGroupId;
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

    public MultipartFile getScriptPath() {
        return scriptPath;
    }

    public void setScriptPath(MultipartFile scriptPath) {
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
}
