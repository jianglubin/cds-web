/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-${year} All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.vo;

import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Pattern;

/**
 * 数据库基本信息视图
 *
 * @author 蒋鲁宾
 * @version v 0.1 2014/4/26 16:23 Exp $$
 */
public class DbInfoVO extends BaseVO {
    /**
     * 数据库ID
     */
    private String id;
    /**
     * 数据库地址
     */
    @NotBlank(message = "数据库地址不能为空!")
    @Pattern(regexp = "^(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})){3}$", message = "数据库地址格式有误!")
    private String ip;
    /**
     * 数据库端口
     */
    @NotBlank(message = "数据库端口不能为空!")
    private String port;
    /**
     * MySQL服务器ServerId
     */
    @NotBlank(message = "MySQL服务器ServerId不能为空!")
    private String serverId;
    /**
     * 监控组
     */
    @NotBlank(message = "监控组id不能为空!")
    private String groupId;
    /**
     * 主备类型
     */
    @NotBlank(message = "主备类型不能为空!")
    private String masterOrSlave;
    /**
     * 数据库类型
     */
    @NotBlank(message = "数据库类型不能为空!")
    private String dbType;


    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("DbinfoVO{");
        sb.append("id=").append(id);
        sb.append(", ip=").append(ip);
        sb.append(", port=").append(port);
        sb.append(", masterOrSlave=").append(masterOrSlave);
        sb.append(", dbType=").append(dbType);
        sb.append(", serverId='").append(serverId);
        sb.append(", groupId='").append(groupId);
        sb.append(", createBy='").append(getCreateBy());
        sb.append(", creationDate='").append(getCreationDate());
        sb.append(", modifiedBy='").append(getModifiedBy());
        sb.append(", modificationDate='").append(getModificationDate());
        sb.append(", deleteStatus='").append(getDeleteStatus());
        sb.append('}');
        return sb.toString();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getPort() {
        return port;
    }

    public void setPort(String port) {
        this.port = port;
    }

    public String getServerId() {
        return serverId;
    }

    public void setServerId(String serverId) {
        this.serverId = serverId;
    }

    public String getGroupId() {
        return groupId;
    }

    public void setGroupId(String groupId) {
        this.groupId = groupId;
    }

    public String getMasterOrSlave() {
        return masterOrSlave;
    }

    public void setMasterOrSlave(String masterOrSlave) {
        this.masterOrSlave = masterOrSlave;
    }

    public String getDbType() {
        return dbType;
    }

    public void setDbType(String dbType) {
        this.dbType = dbType;
    }
}
