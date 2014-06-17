/**
 * Wangyin.com Inc.
 * Copyright (c) 2003-${year} All Rights Reserved.
 */
package com.wangyin.wycds.web.controller.vo;

import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

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
    private Long id;
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
     * 数据库名称
     */
    @Size(min = 0, max = 30, message = "数据库名称长度不能大于30字!")
    private String dbName;


    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("DbinfoVO{");
        sb.append("id=").append(id);
        sb.append(", ip=").append(ip);
        sb.append(", port=").append(port);
        sb.append(", dbName='").append(dbName).append('\'');
        sb.append(", createBy='").append(getCreateBy()).append('\'');
        sb.append(", creationDate='").append(getCreationDate()).append('\'');
        sb.append(", modifiedBy='").append(getModifiedBy()).append('\'');
        sb.append(", modificationDate='").append(getModificationDate()).append('\'');
        sb.append(", deleteStatus='").append(getDeleteStatus()).append('\'');
        sb.append('}');
        return sb.toString();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
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

    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

}
